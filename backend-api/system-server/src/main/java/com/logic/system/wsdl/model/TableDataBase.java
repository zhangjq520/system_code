package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlAttribute;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class TableDataBase{

    private int index = 1;

    @XmlAttribute(name = "index")
    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

}
