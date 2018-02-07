package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 03-03-2016
 */
public class ResponseRetItem {
    private String type;
    private String message;


    public String getType() {
        return type;
    }

    @XmlElement(name = "TYPE")
    public void setType(String type) {
        this.type = type;
    }


    public String getMessage() {
        return message;
    }

    @XmlElement(name = "MESSAGE")
    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "[ TYPE = " + type + ", MESSAGE = " + message + " ]";
    }
}
