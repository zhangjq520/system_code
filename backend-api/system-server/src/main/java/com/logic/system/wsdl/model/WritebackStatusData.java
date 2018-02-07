package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
@XmlRootElement(name = "Data")
public class WritebackStatusData {

    private int flowId = 161;
    private int taskId;

    private String initiator = "0";
    private String submittedTime = "";
    private String currentNodeId = "0";
    private String lastApprover = "0";
    private String lastNodeId = "0";
    private String lastOpinion = "ACCEPT";
    private String lastRemark = "";
    private String sharePath = "";

    private Tables tables;

    public WritebackStatusData(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        submittedTime = sdf.format(new Date());
    }

    @XmlElement(name = "FlowId")
    public int getFlowId() {
        return flowId;
    }

    @XmlElement(name = "InstanceId")
    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    @XmlElement(name = "Tables")
    public Tables getTables() {
        return tables;
    }

    public void setTables(Tables tables) {
        this.tables = tables;
    }

    @XmlElement(name = "Initiator")
    public String getInitiator() {
        return initiator;
    }

    @XmlElement(name = "SubmittedTime")
    public String getSubmittedTime() {
        return submittedTime;
    }

    @XmlElement(name = "CurNodeId")
    public String getCurrentNodeId() {
        return currentNodeId;
    }

    @XmlElement(name = "LastApprover")
    public String getLastApprover() {
        return lastApprover;
    }

    @XmlElement(name = "LastNodeId")
    public String getLastNodeId() {
        return lastNodeId;
    }

    @XmlElement(name = "LastOpinion")
    public String getLastOpinion() {
        return lastOpinion;
    }

    @XmlElement(name = "LastRemark")
    public String getLastRemark() {
        return lastRemark;
    }

    @XmlElement(name = "SharePath")
    public String getSharePath() {
        return sharePath;
    }

}
