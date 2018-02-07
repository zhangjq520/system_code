package com.logic.common.util.mail;

public interface MailSentCallback {

	public void success(MailSenderInfo info);
	
	public void error(MailSenderInfo info);
}
