package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class Tables {

    private TableHead head;


    private TableDetail detail;


    private TableMachine machine;

    @XmlElement(name = "Table")
    public TableHead getHead() {
        return head;
    }

    public void setHead(TableHead head) {
        this.head = head;
    }

    @XmlElement(name = "Table")
    public TableDetail getDetail() {
        return detail;
    }

    public void setDetail(TableDetail detail) {
        this.detail = detail;
    }

    @XmlElement(name = "Table")
    public TableMachine getMachine() {
        return machine;
    }

    public void setMachine(TableMachine machine) {
        this.machine = machine;
    }
}
