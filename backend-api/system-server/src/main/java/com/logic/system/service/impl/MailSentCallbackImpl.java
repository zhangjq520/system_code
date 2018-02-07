package com.logic.system.service.impl;

import com.logic.system.domain.Mail;
import com.logic.system.persistence.write.MailWriteMapper;
import com.logic.common.enums.MailStatusEnum;
import com.logic.common.util.mail.MailSenderInfo;
import com.logic.common.util.mail.MailSentCallback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MailSentCallbackImpl implements MailSentCallback {
	@Autowired
	private MailWriteMapper sendMailMapper;
	
	
	@Override
	public void success(MailSenderInfo info) {
		Mail mail = convertToMailRecord(info);
		mail.setStatus(MailStatusEnum.HAVE_SENT.getCode());
		sendMailMapper.insert(mail);
	}

	@Override
	public void error(MailSenderInfo info) {
		Mail mail = convertToMailRecord(info);
		mail.setStatus(MailStatusEnum.SEND_FAILED.getCode());
		sendMailMapper.insert(mail);
	}
	
	private Mail convertToMailRecord(MailSenderInfo info){
		Mail mail = new Mail(info.getToAddress(), info.getSubject(), info.getContent());
		mail.setMailCc(info.getCcAddress() == null ? null : info.getCcAddress().substring(0, 250) +"...");
		mail.setMailBcc(info.getBccAddress() == null ? null : info.getCcAddress().substring(0, 250)+"...");
		return mail;
	}

}
