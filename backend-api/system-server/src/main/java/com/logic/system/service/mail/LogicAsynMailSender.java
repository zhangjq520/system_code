package com.logic.system.service.mail;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class LogicAsynMailSender implements Runnable {
	private static Logger log = LoggerFactory.getLogger(LogicAsynMailSender.class);
	
	private LogicMailSenderInfo mail;
	private LogicMailSentCallback callback;

	public LogicAsynMailSender(String to, String subject,
							   String content, LogicMailSentCallback callback) throws Exception {
		this(LogicMailSenderInfo.getDefaultMailInfo(to, null),subject, content, callback);
	}

	private LogicAsynMailSender(LogicMailSenderInfo mail, String subject,
								String content, LogicMailSentCallback callback) {
		this(mail, null, null, subject, content, callback);
	}


	private LogicAsynMailSender(LogicMailSenderInfo mail, String optToAddress, String optBccAddress, String subject,
								String content, LogicMailSentCallback callback) {
		this.mail = mail;
		if(StringUtils.isNotBlank(optBccAddress)){
			this.mail.setBccAddress(optBccAddress);
		}
		if(StringUtils.isNotBlank(optToAddress)){
			this.mail.setToAddress(optToAddress);
		}
		if(StringUtils.isNotBlank(subject)){
			this.mail.setSubject(subject);
		}
		if(StringUtils.isNotBlank(content)){
			this.mail.setContent(content);
		}
		this.callback = callback;
	}

	public LogicAsynMailSender(LogicMailSenderInfo mail, String optToAddress, String subject,
								String content, LogicMailSentCallback callback) {
		this.mail = mail;

		if(StringUtils.isNotBlank(optToAddress)){
			this.mail.setToAddress(optToAddress);
		}
		if(StringUtils.isNotBlank(subject)){
			this.mail.setSubject(subject);
		}
		if(StringUtils.isNotBlank(content)){
			this.mail.setContent(content);
		}
		this.callback = callback;
	}

	public LogicAsynMailSender(LogicMailSenderInfo mail, String optToAddress, String optBccAddress, String subject,
							   String content) {
		this(mail, optToAddress, optBccAddress, subject, content, null);
	}



	@Override
	public void run() {
		log.info("Send mail in LogicAsynMailSender ....");
		LogicMailSender mailSender = LogicMailSender.getInstance();
		boolean result = mailSender.sendSimpleMail(mail, null, null, mail.getSubject(), mail.getContent());
		if (callback != null) {
			if(result){
				callback.success(mail);
			}else{
				callback.error(mail);
			}
		}
	}

}
