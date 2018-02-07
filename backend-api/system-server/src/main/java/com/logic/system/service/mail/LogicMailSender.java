package com.logic.system.service.mail;

import com.logic.common.util.*;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

@Configuration
public class LogicMailSender implements EnvironmentAware {
	
	private Logger logger = LoggerFactory.getLogger(LogicMailSender.class);
	
	private static LogicMailSender instance = null;
	private static final String ENV_MAIL = "logic.mail.";
	private static final String PROP_SEND_MAIL = "send_mail";
	private static final String PROP_SEND_ALL_TEST_MAIL = "send_all_test_mail";
	private static final String PROP_TO = "cc";
	private static final String PROP_CC = "cc";
	private static final String PROP_BCC = "bcc";

	private static RelaxedPropertyResolver propertyResolver;

	public static synchronized LogicMailSender getInstance() {
		if (instance == null) {
			instance = new LogicMailSender();
		}
		return instance;
	}
	
	public LogicMailSenderInfo getDefaultMailInfo(String toAddress, String optBccAddress) throws Exception{
		return LogicMailSenderInfo.getDefaultMailInfo(toAddress, optBccAddress);
	}
	
	public boolean sendSimpleMail(LogicMailSenderInfo mail, String optToAddress, String optBccAddress, String subject, String content) {
		boolean result = false;		
		if(mail.isSendInNewThread()){
			synchronized (this) {
				mail.setSendInNewThread(false);
				ThreadPool.getInstance().addToPool(new Thread(new LogicAsynMailSender(mail, optToAddress, optBccAddress, subject, content)));
				return true;	
			}
		}
		if(StringUtils.isNotEmpty(optToAddress)){
		   mail.setToAddress(optToAddress);
		}else if(StringUtils.isBlank(mail.getToAddress())){
		   logger.error("No mail receipt");
		   mail.setErrorMsg("No mail receipt");
		   return false;
		}
		if(StringUtils.isNotEmpty(optBccAddress)){
			mail.setBccAddress(optBccAddress);
		}
		mail.setSubject(subject);
		logger.info("mail info -----"+mail.toString());
		if(StringUtils.isNotEmpty(content)){
			mail.setContent(content);
			result = LogicSimpleMailSender.sendHtmlMail(mail);
		}else{
			logger.error("No mail content");
			mail.setErrorMsg("No mail content");
			return result;
		}
		
		return result;
	}
	
	public boolean sendSimpleMail(String toAddress,String subject,String content) throws Exception{
		LogicMailSenderInfo mailInfo = getDefaultMailInfo(toAddress, null);
		return sendSimpleMail(mailInfo, toAddress, null, subject, content);
	}
	
	private boolean setUpTestEmail(LogicMailSenderInfo mail){
		boolean sendThisEmail = true;
		if(SysUtil.isLiveMode()){
			return true;
		}
		//SysCache cache = SysCache.getInstance();
		ICache cache= CacheFactory.getCacheImpl();
		String sendMail = cache.getSysConfig(propertyResolver.getProperty(PROP_SEND_MAIL, String.class, "false"));
		String send_all_test_mail = cache.getSysConfig(propertyResolver.getProperty(PROP_SEND_ALL_TEST_MAIL, String.class, "false"));
		String maskEmail = cache.getSysConfig("sys.maskemail.host");
		if(SysUtil.isDevMode() && "false".equals(sendMail)){
			sendThisEmail = false;
		}else if(!SysUtil.isLiveMode() && "false".equals(send_all_test_mail) && (mail.getBccAddress() == null || !mail.getBccAddress().contains("test_")) && ( mail.getToAddress().contains("test_") || mail.getToAddress().contains(maskEmail))){
			sendThisEmail = false;
		}
		String oldMailTo = mail.getToAddress();
		if(SysUtil.isDevMode()){
			String mail_to = propertyResolver.getProperty(PROP_TO, String.class, "");
			String default_mail_cc = propertyResolver.getProperty(PROP_CC, String.class, "");
			String default_mail_bcc = propertyResolver.getProperty(PROP_BCC, String.class, "");
			logger.info("dev mode ----- set mail to address to dev address:"+mail_to);
			logger.info("dev mode ----- original mail to :"+oldMailTo);
			mail.setToAddress(mail_to);
			if(mail.getCcAddress() != null){
				logger.info("dev mode update cc, original mail cc:"+mail.getCcAddress());
				if(StringUtils.isNotBlank(default_mail_cc)){
					logger.info("set cc address to "+default_mail_cc);
					mail.setCcAddress(default_mail_cc);
				}else{
					mail.setCcAddress(null);
				}
			}
			if(mail.getBccAddress() != null){
				logger.info("dev mode update bcc, original mail bcc:"+mail.getBccAddress());
				if(StringUtils.isNotBlank(default_mail_bcc)){
					logger.info("set bcc address to "+default_mail_bcc);
					mail.setBccAddress(default_mail_bcc);
				}else{
					mail.setBccAddress(null);
				}
			}
			mail.setSubject("[To:"+oldMailTo+"]"+mail.getSubject());
		}
		if(!SysUtil.isLiveMode()){
			String subject = "["+CacheFactory.getCacheImpl().getSysConfig("project.name")+CacheFactory.getCacheImpl().getSysConfig("env")+"]"+ " " + mail.getSubject();
			mail.setSubject(subject);
		}
		return sendThisEmail;
	}

	@Override
	public void setEnvironment(Environment environment) {
		propertyResolver = new RelaxedPropertyResolver(environment, ENV_MAIL);
	}
}