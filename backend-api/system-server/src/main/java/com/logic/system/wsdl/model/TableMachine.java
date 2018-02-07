package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class TableMachine extends Table {


    private MachineData data;

    public TableMachine(){
        name = "BIZ_QUALITY_APPLY_MACHINE";
    }


    @XmlElement(name = "R")
    public MachineData getData() {
        return data;
    }

    public void setData(MachineData data) {
        this.data = data;
    }
}
