package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 04-03-2016
 */
public class NameData {

    private String name = "";
    private String show = "";

    @XmlElement(name = "Name")
    public String getName() {
        return name;
    }

    @XmlElement(name = "Show")
    public String getShow() {
        return show;
    }
}
