package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class UserNotifyConfig extends BasePojo{    
	
	private static final long serialVersionUID = 9218439069952427797L;

	private Integer userId;

    private String notificationType;

    private Boolean acceptSystemNotification;

    private Boolean acceptSms;

    private Boolean acceptEmail;   
    
    private String typeCode;

    public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getNotificationType() {
        return notificationType;
    }

    public void setNotificationType(String notificationType) {
        this.notificationType = notificationType == null ? null : notificationType.trim();
    }

    public Boolean getAcceptSystemNotification() {
        return acceptSystemNotification;
    }

    public void setAcceptSystemNotification(Boolean acceptSystemNotification) {
        this.acceptSystemNotification = acceptSystemNotification;
    }

    public Boolean getAcceptSms() {
        return acceptSms;
    }

    public void setAcceptSms(Boolean acceptSms) {
        this.acceptSms = acceptSms;
    }

    public Boolean getAcceptEmail() {
        return acceptEmail;
    }

    public void setAcceptEmail(Boolean acceptEmail) {
        this.acceptEmail = acceptEmail;
    }    
    
    public String getNotifyMethods(){
    	StringBuffer result = new StringBuffer();
    	if(this.acceptSystemNotification !=null && this.acceptSystemNotification == true){
    		result.append("系统消息 ");
    	}
    	if(this.acceptSms !=null && this.acceptSms == true){
    		result.append("短信 ");
    	}
    	if(this.acceptEmail !=null && this.acceptEmail == true){
    		result.append("邮件");
    	}
    	
    	return result.toString();
    }
}