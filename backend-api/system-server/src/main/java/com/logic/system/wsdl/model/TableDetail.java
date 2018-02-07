package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class TableDetail extends Table{
    private DetailData data;

    public TableDetail(){
        name = "BIZ_QUALITY_APPLY_DETAIL";
    }

    @XmlElement(name = "R")
    public DetailData getData() {
        return data;
    }

    public void setData(DetailData data) {
        this.data = data;
    }
}
