package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class Table {

    protected String name;

    @XmlAttribute(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
