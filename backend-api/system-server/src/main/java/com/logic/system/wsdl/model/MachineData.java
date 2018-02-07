package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class MachineData extends TableDataBase{

    //MACHINE_NAMES
    private String machineNames = "";
    //ZJPERSON
    private String rMidQualityPersonId;
    //ZJPERSON
    private String rQualityPersonId;
    //ZJYSR
    private String rCheckDate = "";
    //ZJJG
    private String rMidCheckResult;
    //ZJJG
    private String rCheckResult;
    //RECHECK_INSPECTOR
    private String rRecheckInspectorId = "";
    private String rRecheckInspector = "";
    //FCR
    private String rRecheckDate = "";
    //RECHECK_RESULT
    private String rRecheckResult = "";
    //SND_RECTIFICATION_END_DATE
    private String rSndRectificationEndDate = "";
    //TRD_CHECK_INSPECTOR_ID
    private String rTrdCheckInspectorId = "";
    //TRD_CHECK_DATE
    private String rTrdCheckDate = "";
    //TRD_CHECK_RESULT
    private String rTrdCheckResult = "";
    //MACHINE_KIND
    private String machineKindId = "";
    //BRIEF_SPEC
    private String briefSpec = "";
    //SEQID
    private String seqId = "";
    //ZJYS
    private String rMidAcceptanceDate = "";
    //ZJWC
    private String rMidEndDate = "";
    //YCXM
    private String rQualityPerson = "";
    //TRD_CHECK_INSPECTOR
    private String rTrdCheckInspector = "";
    //CJXM
    private String rMidQualityPersonName = "";
    //FJXM
    private String rMidRecheckInspectorName = "";
    //ZJFC
    private String rMidRecheckDate = "";
    //ZJFCFS
    private String rMidRecheckScore = "";
    //ZJFCY
    private String rMidRecheckInspectorId = "";
    //HALF_RECHECK_RESULT
    private String rMidRecheckResult = "";
    //SND_RECTIFICATION_DAYS
    private String rSndRectificationDays = "";


    //ZJJJR
    private String rMidStartDate = "";

    private String rMidQualityScore = "";
    private String rCheckScore = "";

    private String rMidRectificationDays = "";
    private String rRectificationDays = "";

    private String qualityApplyDate = "";
    private String installDirector = "";
    private String zjwcr = "";
    private String tswbr = "";
    private String installPrice = "";
    private String receivedAmount = "";
    private String ecxm = "";
    private String machineNum = "";
    private String zjy = "";
    private String test = "";
    private String aa = "";
    private String tswcr = "";
    private String azzjjg = "";
    private String halfInstallDirector = "";
    private String zjfcr = "";
    private String salePrice = "";
    private String a1 = "";
    private String a2 = "";
    private String ycsjrq = "";
    private String zgwcrq = "";
    private String tt = "";

    public MachineData(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        rMidQualityPersonName = "NO_VALUE";
        rMidStartDate = sdf.format(new Date());
        rMidAcceptanceDate = sdf.format(new Date());
        rMidQualityScore = "0";
        rMidRectificationDays = "0";
        //rMidCheckResult = "0";
        azzjjg = "Y";
        rMidEndDate = sdf.format(new Date());
    }


    @XmlElement(name = "MACHINE_NAMES")
    public String getMachineNames() {
        return machineNames;
    }

    public void setMachineNames(String machineNames) {
        this.machineNames = machineNames;
    }

    @XmlElement(name = "ZJPERSON")
    public String getrMidQualityPersonId() {
        return rMidQualityPersonId;
    }

    public void setrMidQualityPersonId(String rMidQualityPersonId) {
        this.rMidQualityPersonId = rMidQualityPersonId;
    }

    @XmlElement(name = "ZJPERSON")
    public String getrQualityPersonId() {
        return rQualityPersonId;
    }

    public void setrQualityPersonId(String rQualityPersonId) {
        this.rQualityPersonId = rQualityPersonId;
    }

    @XmlElement(name = "ZJYSR")
    public String getrCheckDate() {
        return rCheckDate;
    }

    public void setrCheckDate(String rCheckDate) {
        this.rCheckDate = rCheckDate;
    }

    @XmlElement(name = "ZJJG")
    public String getrMidCheckResult() {
        return rMidCheckResult;
    }

    public void setrMidCheckResult(String rMidCheckResult) {

        if("1".equals(rMidCheckResult)){
            this.rMidCheckResult = "合格";
        }else{
            this.rMidCheckResult = "不合格";
        }

    }

    @XmlElement(name = "ZJJG")
    public String getrCheckResult() {
        return rCheckResult;
    }

    public void setrCheckResult(String rCheckResult) {
        if("1".equals(rCheckResult)){
            this.rCheckResult = "合格";
        }else{
            this.rCheckResult = "不合格";
        }
    }

    @XmlElement(name = "RECHECK_INSPECTOR")
    public String getrRecheckInspectorId() {
        return rRecheckInspectorId;
    }

    public void setrRecheckInspectorId(String rRecheckInspectorId) {
        this.rRecheckInspectorId = rRecheckInspectorId;
    }

    @XmlElement(name = "ECXM")
    public String getrRecheckInspector() {
        return rRecheckInspector;
    }

    public void setrRecheckInspector(String rRecheckInspector) {
        this.rRecheckInspector = rRecheckInspector;
    }

    @XmlElement(name = "FCR")
    public String getrRecheckDate() {
        return rRecheckDate;
    }

    public void setrRecheckDate(String rRecheckDate) {
        this.rRecheckDate = rRecheckDate;
    }

    @XmlElement(name = "RECHECK_RESULT")
    public String getrRecheckResult() {
        return rRecheckResult;
    }

    public void setrRecheckResult(String rRecheckResult) {
        if("1".equals(rRecheckResult)){
            this.rRecheckResult = "合格";
        }else{
            this.rRecheckResult = "不合格";
        }

    }

    @XmlElement(name = "SND_RECTIFICATION_END_DATE")
    public String getrSndRectificationEndDate() {
        return rSndRectificationEndDate;
    }

    public void setrSndRectificationEndDate(String rSndRectificationEndDate) {
        this.rSndRectificationEndDate = rSndRectificationEndDate;
    }

    @XmlElement(name = "TRD_CHECK_INSPECTOR_ID")
    public String getrTrdCheckInspectorId() {
        return rTrdCheckInspectorId;
    }

    public void setrTrdCheckInspectorId(String rTrdCheckInspectorId) {
        this.rTrdCheckInspectorId = rTrdCheckInspectorId;
    }

    @XmlElement(name = "ZJFS")
    public String getrCheckScore() {
        return rCheckScore;
    }

    public void setrCheckScore(String rCheckScore) {
        this.rCheckScore = rCheckScore;
    }

    @XmlElement(name = "TRD_CHECK_DATE")
    public String getrTrdCheckDate() {
        return rTrdCheckDate;
    }

    public void setrTrdCheckDate(String rTrdCheckDate) {
        this.rTrdCheckDate = rTrdCheckDate;
    }

    @XmlElement(name = "TRD_CHECK_RESULT")
    public String getrTrdCheckResult() {
        return rTrdCheckResult;
    }

    public void setrTrdCheckResult(String rTrdCheckResult) {
        if("1".equals(rTrdCheckResult)){
            this.rTrdCheckResult = "合格";
        }else{
            this.rTrdCheckResult = "不合格";
        }
    }

    @XmlElement(name = "MACHINE_KIND")
    public String getMachineKindId() {
        return machineKindId;
    }

    public void setMachineKindId(String machineKindId) {
        this.machineKindId = machineKindId;
    }

    @XmlElement(name = "BRIEF_SPEC")
    public String getBriefSpec() {
        return briefSpec;
    }

    public void setBriefSpec(String briefSpec) {
        this.briefSpec = briefSpec;
    }

    @XmlElement(name = "SEQID")
    public String getSeqId() {
        return seqId;
    }

    public void setSeqId(String seqId) {
        this.seqId = seqId;
    }

    @XmlElement(name = "ZJYS")
    public String getrMidAcceptanceDate() {
        return rMidAcceptanceDate;
    }

    public void setrMidAcceptanceDate(String rMidAcceptanceDate) {
        this.rMidAcceptanceDate = rMidAcceptanceDate;
    }

    @XmlElement(name = "ZJWC")
    public String getrMidEndDate() {
        return rMidEndDate;
    }

    public void setrMidEndDate(String rMidEndDate) {
        this.rMidEndDate = rMidEndDate;
    }

    @XmlElement(name = "YCXM")
    public String getrQualityPerson() {
        return rQualityPerson;
    }

    public void setrQualityPerson(String rQualityPerson) {
        this.rQualityPerson = rQualityPerson;
    }

    @XmlElement(name = "TRD_CHECK_INSPECTOR")
    public String getrTrdCheckInspector() {
        return rTrdCheckInspector;
    }

    public void setrTrdCheckInspector(String rTrdCheckInspector) {
        this.rTrdCheckInspector = rTrdCheckInspector;
    }

    @XmlElement(name = "CJXM")
    public String getrMidQualityPersonName() {
        return rMidQualityPersonName;
    }

    public void setrMidQualityPersonName(String rMidQualityPersonName) {
        this.rMidQualityPersonName = rMidQualityPersonName;
    }

    @XmlElement(name = "FJXM")
    public String getrMidRecheckInspectorName() {
        return rMidRecheckInspectorName;
    }

    public void setrMidRecheckInspectorName(String rMidRecheckInspectorName) {
        this.rMidRecheckInspectorName = rMidRecheckInspectorName;
    }

    @XmlElement(name = "ZJFC")
    public String getrMidRecheckDate() {
        return rMidRecheckDate;
    }

    public void setrMidRecheckDate(String rMidRecheckDate) {
        this.rMidRecheckDate = rMidRecheckDate;
    }

    @XmlElement(name = "ZJFCFS")
    public String getrMidRecheckScore() {
        return rMidRecheckScore;
    }

    public void setrMidRecheckScore(String rMidRecheckScore) {
        this.rMidRecheckScore = rMidRecheckScore;
    }

    @XmlElement(name = "ZJFCY")
    public String getrMidRecheckInspectorId() {
        return rMidRecheckInspectorId;
    }

    public void setrMidRecheckInspectorId(String rMidRecheckInspectorId) {
        this.rMidRecheckInspectorId = rMidRecheckInspectorId;
    }

    @XmlElement(name = "HALF_RECHECK_RESULT")
    public String getrMidRecheckResult() {
        return rMidRecheckResult;
    }

    public void setrMidRecheckResult(String rMidRecheckResult) {
        if("1".equals(rMidRecheckResult)){
            this.rMidRecheckResult = "合格";
        }else{
            this.rMidRecheckResult = "不合格";
        }
    }

    @XmlElement(name = "SND_RECTIFICATION_DAYS")
    public String getrSndRectificationDays() {
        return rSndRectificationDays;
    }

    public void setrSndRectificationDays(String rSndRectificationDays) {
        this.rSndRectificationDays = rSndRectificationDays;
    }


    @XmlElement(name = "ZJJJR")
    public String getrMidStartDate() {
        return rMidStartDate;
    }

    public void setrMidStartDate(String rMidStartDate) {
        this.rMidStartDate = rMidStartDate;
    }

    @XmlElement(name = "QUALITY_APPLY_DATE")
    public String getQualityApplyDate() {
        return qualityApplyDate;
    }

    @XmlElement(name = "INSTALL_DIRECTOR")
    public String getInstallDirector() {
        return installDirector;
    }


    @XmlElement(name = "ZJFS")
    public String getrMidQualityScore() {
        return rMidQualityScore;
    }

    public void setrMidQualityScore(String rMidQualityScore) {
        this.rMidQualityScore = rMidQualityScore;
    }


    @XmlElement(name = "ZGTS")
    public String getrMidRectificationDays() {
        return rMidRectificationDays;
    }


    public void setrMidRectificationDays(String rMidRectificationDays) {
        this.rMidRectificationDays = rMidRectificationDays;
    }

    @XmlElement(name = "ZGTS")
    public String getrRectificationDays() {
        return rRectificationDays;
    }

    public void setrRectificationDays(String rRectificationDays) {
        this.rRectificationDays = rRectificationDays;
    }

    @XmlElement(name = "ZJWCR")
    public String getZjwcr() {
        return zjwcr;
    }

    @XmlElement(name = "TSWBR")
    public String getTswbr() {
        return tswbr;
    }

    @XmlElement(name = "INSTALL_PRICE")
    public String getInstallPrice() {
        return installPrice;
    }

    @XmlElement(name = "RECEIVED_AMOUNT")
    public String getReceivedAmount() {
        return receivedAmount;
    }

    @XmlElement(name = "ECXM")
    public String getEcxm() {
        return ecxm;
    }

    @XmlElement(name = "MACHINE_NUM")
    public String getMachineNum() {
        return machineNum;
    }

    @XmlElement(name = "ZJY")
    public String getZjy() {
        return zjy;
    }

    @XmlElement(name = "TEST")
    public String getTest() {
        return test;
    }

    @XmlElement(name = "AA")
    public String getAa() {
        return aa;
    }

    @XmlElement(name = "TSWCR")
    public String getTswcr() {
        return tswcr;
    }

    @XmlElement(name = "AZZJJG")
    public String getAzzjjg() {
        return azzjjg;
    }

    @XmlElement(name = "HALF_INSTALL_DIRECTOR")
    public String getHalfInstallDirector() {
        return halfInstallDirector;
    }

    @XmlElement(name = "ZJFCR")
    public String getZjfcr() {
        return zjfcr;
    }

    @XmlElement(name = "SALE_PRICE")
    public String getSalePrice() {
        return salePrice;
    }

    @XmlElement(name = "A1")
    public String getA1() {
        return a1;
    }

    @XmlElement(name = "A2")
    public String getA2() {
        return a2;
    }

    @XmlElement(name = "YCSJRQ")
    public String getYcsjrq() {
        return ycsjrq;
    }

    @XmlElement(name = "ZGWCRQ")
    public String getZgwcrq() {
        return zgwcrq;
    }

    @XmlElement(name = "TT")
    public String getTt() {
        return tt;
    }
}
