package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Author: omer 
 * Date  : 03-03-2016
 */
@XmlRootElement(name = "RET")
public class ResponseRet {
    private ResponseRetItem retItem;


    public ResponseRetItem getRetItem() {
        return retItem;
    }

    @XmlElement(name = "RETITEM")
    public void setRetItem(ResponseRetItem retItem) {
        this.retItem = retItem;
    }

    @Override
    public String toString() {
        return "[ ITEM = " + retItem + " ]";
    }
}
