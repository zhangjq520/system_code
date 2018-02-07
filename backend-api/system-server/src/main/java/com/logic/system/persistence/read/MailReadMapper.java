package com.logic.system.persistence.read;

import com.logic.system.domain.Mail;

import java.util.List;

public interface MailReadMapper {

    Mail selectByPrimaryKey(Integer id);

    
    List<Mail> fetchSendErrorEmails(int counts);
    
    
}
