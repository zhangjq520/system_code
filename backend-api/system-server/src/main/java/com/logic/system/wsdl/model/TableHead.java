package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class TableHead extends Table{
    private HeadData data;

    public TableHead(){
        name = "BIZ_QUALITY_APPLY_HEAD";
    }

    @XmlElement(name = "R")
    public HeadData getData() {
        return data;
    }

    public void setData(HeadData data) {
        this.data = data;
    }
}
