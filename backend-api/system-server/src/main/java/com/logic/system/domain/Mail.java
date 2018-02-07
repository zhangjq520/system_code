package com.logic.system.domain;

import com.logic.common.domain.BasePojo;
import com.logic.common.enums.MailStatusEnum;
import com.logic.common.util.mail.MailSenderInfo;
import com.logic.system.service.mail.LogicMailSenderInfo;
import org.apache.commons.lang.StringUtils;

import java.util.Date;

public class Mail extends BasePojo {
  private static final long serialVersionUID = -4125891007947385555L;

  public Mail(String mailTo, String subject, String content) {
		super();
		this.mailTo = mailTo;
		this.subject = subject;
		this.content = content;
		fillRequiredParamsForEmail();
	}
  
  public Mail() {
    super();
  }

	private String mailFrom;

	private String mailTo;

	private String mailCc;

	private String mailBcc;

	private String mailAttachments;

	private String subject;

	private Date sentDtm = new Date();

	private String status = MailStatusEnum.UNSENT.getCode();

	private String content;

	private boolean sendInNewThread = true;
	
	
	public String getMailFrom() {
		return mailFrom;
	}

	public void setMailFrom(String mailFrom) {
		this.mailFrom = mailFrom == null ? null : mailFrom.trim();
	}

	public String getMailTo() {
		return mailTo;
	}

	public void setMailTo(String mailTo) {
		this.mailTo = mailTo == null ? null : mailTo.trim();
	}

	public String getMailCc() {
		return mailCc;
	}

	public void setMailCc(String mailCc) {
		this.mailCc = mailCc == null ? null : mailCc.trim();
	}

	public String getMailBcc() {
		return mailBcc;
	}

	public void setMailBcc(String mailBcc) {
		this.mailBcc = mailBcc == null ? null : mailBcc.trim();
	}

	public String getMailAttachments() {
		return mailAttachments;
	}

	public void setMailAttachments(String mailAttachments) {
		this.mailAttachments = mailAttachments == null ? null : mailAttachments
				.trim();
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject == null ? null : subject.trim();
	}

	public Date getSentDtm() {
		return sentDtm;
	}

	public void setSentDtm(Date sentDtm) {
		this.sentDtm = sentDtm;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}
	
	public MailSenderInfo convertToMailSenderInfo(){
		MailSenderInfo info = new MailSenderInfo(this.getMailTo(), this.getSubject(), this.getContent());
		if(StringUtils.isNotBlank(this.getMailCc())){
			info.setCcAddress(this.getMailCc());
		}
		if(StringUtils.isNotBlank(this.getMailBcc())){
			info.setBccAddress(this.getMailBcc());
		}
		if(StringUtils.isNotBlank(this.getMailAttachments())){
			String[] attachments = this.getMailAttachments().split(",");
			info.setAttachFileNames(attachments);
		}
		info.setSendInNewThread(this.isSendInNewThread());
		return info;
	}

	public LogicMailSenderInfo convertToLogicMailSenderInfo(){
		LogicMailSenderInfo info = new LogicMailSenderInfo(this.getMailTo(), this.getSubject(), this.getContent());
		if(StringUtils.isNotBlank(this.getMailCc())){
			info.setCcAddress(this.getMailCc());
		}
		if(StringUtils.isNotBlank(this.getMailBcc())){
			info.setBccAddress(this.getMailBcc());
		}
		if(StringUtils.isNotBlank(this.getMailAttachments())){
			String[] attachments = this.getMailAttachments().split(",");
			info.setAttachFileNames(attachments);
		}
		info.setSendInNewThread(false);
		return info;
	}
	
	public void fillRequiredParamsForEmail(){
		MailSenderInfo info = new MailSenderInfo();
		this.setMailFrom(info.getFromAddress());
	}

	@Override
	public String toString() {
		return "SendMail [mailTo=" + mailTo + ", subject=" + subject
				+ ", status=" + status + ", version=" + version + ", id=" + id
				+ "]";
	}

	public boolean isSendInNewThread() {
		return sendInNewThread;
	}

	public void setSendInNewThread(boolean sendInNewThread) {
		this.sendInNewThread = sendInNewThread;
	}

}
