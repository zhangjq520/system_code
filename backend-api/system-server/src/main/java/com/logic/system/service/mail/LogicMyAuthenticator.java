package com.logic.system.service.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class LogicMyAuthenticator extends Authenticator{
    String userName=null;   
    String password=null;   
        
    public LogicMyAuthenticator(){
    }   
    public LogicMyAuthenticator(String username, String password) {
        this.userName = username;    
        this.password = password;    
    }    
    protected PasswordAuthentication getPasswordAuthentication(){   
        return new PasswordAuthentication(userName, password);   
    }   
}   
