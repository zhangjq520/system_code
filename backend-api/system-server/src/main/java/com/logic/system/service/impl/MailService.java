package com.logic.system.service.impl;


import com.logic.system.domain.Mail;
import com.logic.system.persistence.read.MailReadMapper;
import com.logic.system.persistence.write.MailWriteMapper;
import com.logic.common.enums.MailStatusEnum;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CacheFactory;
import com.logic.common.util.ThreadPool;
import com.logic.common.util.ftl.FtlLoadRoot;
import com.logic.common.util.mail.AsynMailSender;
import com.logic.common.util.mail.MailSender;
import com.logic.common.util.mail.MailSenderInfo;
import com.logic.common.util.mail.MailSentCallback;
import com.logic.system.service.mail.LogicAsynMailSender;
import com.logic.system.service.mail.LogicMailSender;
import com.logic.system.service.mail.LogicMailSenderInfo;
import com.logic.system.service.mail.LogicMailSentCallback;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import freemarker.template.Configuration;
import freemarker.template.Template;

import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.*;

/**
 * 
 * <p>Title: MailService</p>
 *
 * <p>Description: 邮件服务</p>
 *
 * <p>Company: Logicsolutions</p>
 *
 * @author gary.wang@logicsolutions.com.cn
 * @date 2014-8-5
 */
@Service
public class MailService implements LogicMailSentCallback{
	private Logger log = LoggerFactory.getLogger(MailService.class);
	
	@Autowired
	private MailWriteMapper sendMailMapper;
	
	@Autowired
	private MailReadMapper sendMailReadMapper;

	@Autowired
	@Qualifier("mailSentCallbackImpl")
	private MailSentCallback mailSentCallbackImpl;

	@Autowired
  private HttpServletRequest request;
	/**
	 * 保存并发送邮件
	 * @author Logicsolutions
	 * @param mail
	 * @return
	 */
	public Integer saveAndSendMail(Mail mail) {
		Assert.notNull(mail, "[SendMail] must not be null");
		if(mail.isSendInNewThread()){
			saveAndSendUnSyncMail(mail);
			return null;
		}
		MailSenderInfo info = mail.convertToMailSenderInfo();
		try{
			boolean sendStatus = sendSimpleMail(info);
			if(sendStatus){
				mail.setStatus(MailStatusEnum.HAVE_SENT.getCode());
			}else{
				mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
			}
		}catch(Exception e){
			log.error(e.getMessage());
			mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
		}
		mail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		mail.setSubject(info.getSubject());
		mail.setMailFrom(info.getFromAddress());
		mail.setMailTo(info.getToAddress());
		mail.setMailCc(info.getCcAddress());
		mail.setMailBcc(info.getBccAddress());
		sendMailMapper.insertSelective(mail);
		int ret = mail.getId();
		return ret;
	}

	/**
	 *
	 * @param logicMailSenderInfo
	 * @return
     */
	public Integer saveAndSendLogicMail(LogicMailSenderInfo logicMailSenderInfo) {
		Assert.notNull(logicMailSenderInfo);

		if(logicMailSenderInfo.isSendInNewThread()){
			saveAndSendUnSyncLogicMail(logicMailSenderInfo);
			return 1;
		}

		Mail mail = null;
		try{
			boolean sendStatus = sendLogicSimpleMail(logicMailSenderInfo);
			//set mail to save
			mail = new Mail();
			if(sendStatus){
				mail.setStatus(MailStatusEnum.HAVE_SENT.getCode());
			}else{
				mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
			}

		}catch(Exception e){
			log.error(e.getMessage());
			if(mail != null) mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
		}

		//save mail
		if(mail != null){
			mail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			mail.setMailTo(logicMailSenderInfo.getToAddress());
			mail.setMailFrom(logicMailSenderInfo.getFromAddress());
			mail.setSubject(logicMailSenderInfo.getSubject());
			mail.setContent(logicMailSenderInfo.getContent());
			sendMailMapper.insertSelective(mail);
			return mail.getId();
		}

		return -1;
	}

	public Integer saveAndSendLogicMail(List<LogicMailSenderInfo> logicMailSenderInfos) {
		Assert.notEmpty(logicMailSenderInfos);

		for(LogicMailSenderInfo logicMailSenderInfo : logicMailSenderInfos){
			logicMailSenderInfo.setSendInNewThread(true);
			saveAndSendLogicMail(logicMailSenderInfo);
		}

		return 0;
	}

	public Integer saveAndSendLogicMail(Mail mail) {
		Assert.notNull(mail, "[SendMail] must not be null");

		LogicMailSenderInfo info = mail.convertToLogicMailSenderInfo();

		try{
			boolean sendStatus = sendLogicSimpleMail(info);
			if(sendStatus){
				mail.setStatus(MailStatusEnum.HAVE_SENT.getCode());
			}else{
				mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
			}
		}catch(Exception e){
			log.error(e.getMessage());
			mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
		}

		mail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		mail.setSubject(info.getSubject());
		mail.setMailFrom(info.getFromAddress());
		mail.setMailTo(info.getToAddress());
		mail.setMailCc(info.getCcAddress());
		mail.setMailBcc(info.getBccAddress());
		sendMailMapper.insertSelective(mail);
		int ret = mail.getId();
		return ret;
	}

	private synchronized void saveAndSendUnSyncMail(Mail mail) {
		MailSenderInfo info = mail.convertToMailSenderInfo();
		try {
				info.setSendInNewThread(false);
				AsynMailSender sender = new AsynMailSender(info.getToAddress(), info.getSubject(), info.getContent(), mailSentCallbackImpl);
				ThreadPool.getInstance().addToPool(new Thread(sender));
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

	private synchronized void saveAndSendUnSyncLogicMail(LogicMailSenderInfo logicMailSenderInfo) {

		try {
			logicMailSenderInfo.setSendInNewThread(false);
			LogicAsynMailSender sender = new LogicAsynMailSender(logicMailSenderInfo,logicMailSenderInfo.getToAddress(), logicMailSenderInfo.getSubject(), logicMailSenderInfo.getContent(), this);
			ThreadPool.getInstance().addToPool(new Thread(sender));
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}
	
	/**
	 * This method will automatically been invoked by a process,
	 * This method will fetch a list of mail records and send them out<br>
	 * return how many mails has send out
	 */
	public int sendOutEmails(){
		int counter = 0;
		List<Mail> mails = getAndUpdateEmails();
		if(mails != null && !mails.isEmpty()){
			log.info("fetch mail counts: "+ mails.size());
			Iterator<Mail> it = mails.iterator();
			while(it.hasNext()){
				Mail sendMail = it.next();
				MailSenderInfo info = sendMail.convertToMailSenderInfo();
				boolean ret = sendSimpleMail(info);
				if(ret){
					//send success
					++ counter;
					updateSendMailStatus(sendMail, MailStatusEnum.HAVE_SENT);
				}else{
					updateSendMailStatus(sendMail, MailStatusEnum.SEND_FAILED);
				}
			}
			if(mails.size() - counter == 0){
				log.info("all "+counter+" mails send out in current loop");
			}else{
				log.warn(counter+" of "+mails.size() +" mails send out in current loop");
			}			
		}else{
			log.info("no mail found");
		}
		return counter;
	}
	

	
	boolean sendSimpleMail(MailSenderInfo info) {
		return MailSender.getInstance().sendSimpleMail(info,
				info.getToAddress(), null, info.getSubject(),
				info.getContent());
	}

	boolean sendLogicSimpleMail(LogicMailSenderInfo info) {
		return LogicMailSender.getInstance().sendSimpleMail(info,
				info.getToAddress(), null, info.getSubject(),
				info.getContent());
	}
	/**
	 * fetch mails not sent, and update status to inprocess
	 * @return
	 */
	private List<Mail> getAndUpdateEmails() {
		List<Mail> list = null;
		Integer counts = Integer.parseInt(CacheFactory.getCacheImpl().getSysConfig("mail.send.fetch.counts"));
		if(counts != null && counts > 0){
			list = sendMailReadMapper.fetchSendErrorEmails(counts);
			if(list != null && !list.isEmpty()){
				log.info("fetch "+ list.size()+" email records to send");
				//update status				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("ids", list);
				map.put("status", MailStatusEnum.UNSENT.getCode());
				sendMailMapper.updateStatusByIds(map);
			}
		}
		return list;
	}

	/**
	 * 更新发送邮件状态
	 * @author Logicsolutions
	 * @param sendMail
	 * @param status
	 */
	private void updateSendMailStatus(Mail sendMail, MailStatusEnum status) {
		Assert.notNull(sendMail, "[SendMail] must not be null");
		Assert.notNull(status, "[StatusEnum] must not be null");
		Map<String, Object> map = new HashMap<String, Object>();
		List<Mail> list = new ArrayList<Mail>();
		list.add(sendMail);
		map.put("ids", list);
		map.put("status", status.getCode());
		sendMailMapper.updateStatusByIds(map);
	}
	
	
	/**
	 * This method is used for transaction test, do not use this method
	 * @param list
	 */
	public int saveSendMailListTest(List<Mail> list){
		Assert.notEmpty(list, "[list] must not be null");
		int counter = 0;
		Iterator<Mail> it = list.iterator();
		while(it.hasNext()){
			Mail mail = it.next();
			sendMailMapper.insertSelective(mail);
			if(mail.getId() != null){
				++ counter;
			}
		}
		return counter;
	}
	
	public Integer saveErrorEmailForTest(Mail mail) {
		Assert.notNull(mail, "[SendMail] must not be null");
		mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
		mail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		sendMailMapper.insertSelective(mail);
		int ret = mail.getId();
		return ret;
	}
	
	/**
	 * 得到模板邮件内容
	 * @param templete
	 * @param root
	 * @return
	 */
	public String getFtlContent(String templete, Map<String,String> root){
		try{
			Configuration cfg = new Configuration();
			//cfg.setClassForTemplateLoading(OutFreeMarkTag.class,"");
			cfg.setClassForTemplateLoading(FtlLoadRoot.class, "");
			cfg.setClassicCompatible(true);
			cfg.setDefaultEncoding("UTF-8");
			Template t = cfg.getTemplate(templete);
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			Writer out = new OutputStreamWriter(bos, "UTF-8");
			t.process(root, out); 
			bos.toString();
			String content = bos.toString("UTF-8");  
			
			out.close();           
			return content;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void success(LogicMailSenderInfo info) {
		Mail mail = new Mail();
		mail.setStatus(MailStatusEnum.HAVE_SENT.getCode());

		mail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		mail.setSubject(info.getSubject());
		mail.setContent(info.getContent());
		mail.setMailFrom(info.getFromAddress());
		mail.setMailTo(info.getToAddress());
		mail.setMailCc(info.getCcAddress());
		mail.setMailBcc(info.getBccAddress());
		sendMailMapper.insertSelective(mail);
	}

	@Override
	public void error(LogicMailSenderInfo info) {
		Mail mail = new Mail();
		mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());

		mail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		mail.setSubject(info.getSubject());
		mail.setMailFrom(info.getFromAddress());
		mail.setContent(info.getContent());
		mail.setMailTo(info.getToAddress());
		mail.setMailCc(info.getCcAddress());
		mail.setMailBcc(info.getBccAddress());
		sendMailMapper.insertSelective(mail);
	}
}
