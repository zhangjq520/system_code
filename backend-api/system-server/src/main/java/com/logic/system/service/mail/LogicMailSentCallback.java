package com.logic.system.service.mail;


public interface LogicMailSentCallback {

	public void success(LogicMailSenderInfo info);

	public void error(LogicMailSenderInfo info);
}
