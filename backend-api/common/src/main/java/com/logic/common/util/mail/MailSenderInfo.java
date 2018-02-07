package com.logic.common.util.mail;


import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

import java.util.Properties;

@Configuration
public class MailSenderInfo implements EnvironmentAware {
	Logger log = LoggerFactory.getLogger(MailSenderInfo.class);

	private String mailServerHost;
	private String mailServerPort = "25";
	private String fromAddress;
	private String toAddress;
	private String ccAddress;
	private String userName;
	private String password;
	private String replyTo;
	private String bccAddress;
	private boolean sendInNewThread;
	private String errorMsg;

	private static final String ENV_MAIL = "logic.mail.";
	private static final String PROP_SMTPHOST = "smtphost";
	private static final String PROP_PORT = "port";
	private static final String PROP_AUTH = "auth";
	private static final String PROP_USERNAME = "username";
	private static final String PROP_PASSWORD = "password";
	private static final String PROP_FROM = "from";

	private static RelaxedPropertyResolver propertyResolver;
	
	
	public MailSenderInfo() {
//		SysCache cache = SysCache.getInstance();


	}

	public MailSenderInfo(String toAddress) {

		this.setMailServerHost(propertyResolver.getProperty(PROP_SMTPHOST, String.class, null));
		this.setMailServerPort(propertyResolver.getProperty(PROP_PORT, String.class, null));
		this.setValidate(propertyResolver.getProperty(PROP_AUTH, Boolean.class, false));
		this.setUserName(propertyResolver.getProperty(PROP_USERNAME, String.class, null));
		this.setPassword(propertyResolver.getProperty(PROP_PASSWORD, String.class, null));
		this.setFromAddress(propertyResolver.getProperty(PROP_FROM, String.class, null));

		if(StringUtils.isNotEmpty(toAddress)){
			this.setToAddress(toAddress);// to
		}else{
			throw new RuntimeException("email resiver missing");
		}
	}
	
	public MailSenderInfo(String toAddress, String subject, String content) {
		this(toAddress);
		if(StringUtils.isNotBlank(subject) && StringUtils.isNotBlank(content)){
			this.setSubject(subject);
			this.setContent(content);
		}else{
			throw new RuntimeException("email subject and content are required");
		}
	}
	
	
	public MailSenderInfo(String toAddress, String ccAddress, String replyTo,
			String bccAddress) {
		this(toAddress);
		this.ccAddress = ccAddress;
		this.replyTo = replyTo;
		this.bccAddress = bccAddress;
	}

	public String getBccAddress() {
		return bccAddress;
	}

	public void setBccAddress(String bccAddress) {
		this.bccAddress = bccAddress;
	}

	public String getReplyTo() {
		return replyTo;
	}

	public void setReplyTo(String replyTo) {
		this.replyTo = replyTo;
	}

	private boolean validate = false;
	private String subject;
	private String content;
	private String[] attachFileNames;

	public Properties getProperties() {
		Properties p = new Properties();
		p.put("mail.smtp.host", this.mailServerHost);
		p.put("mail.smtp.port", this.mailServerPort);
		p.put("mail.smtp.auth", validate ? "true" : "false");
		return p;
	}

	public String getMailServerHost() {
		return mailServerHost;
	}

	public void setMailServerHost(String mailServerHost) {
		this.mailServerHost = mailServerHost;
	}

	public String getMailServerPort() {
		return mailServerPort;
	}

	public void setMailServerPort(String mailServerPort) {
		this.mailServerPort = mailServerPort;
	}

	public boolean isValidate() {
		return validate;
	}

	public void setValidate(boolean validate) {
		this.validate = validate;
	}

	public String[] getAttachFileNames() {
		return attachFileNames;
	}

	public void setAttachFileNames(String[] fileNames) {
		this.attachFileNames = fileNames;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getToAddress() {
		return toAddress;
	}

	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String textContent) {
		this.content = textContent;
	}

	public String getCcAddress() {
		return ccAddress;
	}

	public void setCcAddress(String ccAddress) {
		this.ccAddress = ccAddress;
	}

	@Override
	public String toString() {
		String ret = "MailSenderInfo[ to:" + this.toAddress + ", ";
		if (StringUtils.isNotBlank(replyTo)) {
			ret += "replyTo:" + this.replyTo + ", ";
		}
		ret += "subject:" + this.subject + "]";
		return ret;
	}
	
	public boolean isSendInNewThread() {
		return sendInNewThread;
	}

	public void setSendInNewThread(boolean sendInNewThread) {
		this.sendInNewThread = sendInNewThread;
	}
	
	public static MailSenderInfo getDefaultMailInfo(String toAddress, String optBccAddress) throws Exception{
		MailSenderInfo mailInfo = new MailSenderInfo(toAddress);
		if(StringUtils.isNotEmpty(optBccAddress)){
			mailInfo.setBccAddress(optBccAddress);//bcc
		}
		return mailInfo;		
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	@Override
	public void setEnvironment(Environment environment) {
		log.info("-------------------------------- MailSenderInfo-----------------------");
		propertyResolver = new RelaxedPropertyResolver(environment, ENV_MAIL);
	}
}
