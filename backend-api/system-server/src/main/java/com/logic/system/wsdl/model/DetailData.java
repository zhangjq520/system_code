package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class DetailData extends TableDataBase{
    // CHECK_TYPE
    private String checkType = "";
    //SCHEDULE_CHECK_START_DATE
    private String rCheckStartDateSchedule = "";
    //SCHEDULE_CHECK_END_DATE
    private String rCheckEndDateSchedule = "";
    //SJJCKSR
    private String rCheckStartDateReal = "";
    //SJJCJSR
    private String rCheckEndDateReal = "";
    //OVERALL_QUALITY_APPLY_DATE
    private String overallQualityApplyDate = "";
    //OVERALL_SCHEDULE_DATE
    private String overallScheduleDate = "";
    //INSTALL_RECORD
    private String installRecord = "";
    //ELEVATO_TEST_REPORT
    private String elevatorTestReport = "";
    //SPECIAL_MATTERS
    private String specialMatters = "";
    //SCHEDULE_QUALITY_PERSON
    private String scheduleQualityPerson = "";
    //HALF_QUALITY_APPLY_DATE
    private String halfQualityApplyDate = "";
    //ELEVATO_CORE
    private String elevatorCore = "";
    //ELEVATO_PLACE
    private String elevatorPlace = "";
    //ELEVATO_GUIDE
    private String elevatorGuide = "";
    //ELEVATO_CAR
    private String elevatorCar = "";
    //ELEVATO_ROOM
    private String elevatorRoom = "";
    //INSTALL_START_DATE
    private String installStartDate = "";
    //HALF_SCHEDULE_DATE
    private String halfScheduleDate = "";
    //DEBUG_END_DATE
    private String debugEndDate = "";
    //SALE_PRICE
    private String salePrice = "";


    @XmlElement(name = "CHECK_TYPE")
    public String getCheckType() {
        return checkType;
    }

    public void setCheckType(String checkType) {
        this.checkType = checkType;
    }

    @XmlElement(name = "SCHEDULE_CHECK_START_DATE")
    public String getrCheckStartDateSchedule() {
        return rCheckStartDateSchedule;
    }

    public void setrCheckStartDateSchedule(String rCheckStartDateSchedule) {
        this.rCheckStartDateSchedule = rCheckStartDateSchedule;
    }

    @XmlElement(name = "SCHEDULE_CHECK_END_DATE")
    public String getrCheckEndDateSchedule() {
        return rCheckEndDateSchedule;
    }

    public void setrCheckEndDateSchedule(String rCheckEndDateSchedule) {
        this.rCheckEndDateSchedule = rCheckEndDateSchedule;
    }

    @XmlElement(name = "SJJCKSR")
    public String getrCheckStartDateReal() {
        return rCheckStartDateReal;
    }

    public void setrCheckStartDateReal(String rCheckStartDateReal) {
        this.rCheckStartDateReal = rCheckStartDateReal;
    }

    @XmlElement(name = "SJJCJSR")
    public String getrCheckEndDateReal() {
        return rCheckEndDateReal;
    }

    public void setrCheckEndDateReal(String rCheckEndDateReal) {
        this.rCheckEndDateReal = rCheckEndDateReal;
    }

    @XmlElement(name = "OVERALL_QUALITY_APPLY_DATE")
    public String getOverallQualityApplyDate() {
        return overallQualityApplyDate;
    }

    public void setOverallQualityApplyDate(String overallQualityApplyDate) {
        this.overallQualityApplyDate = overallQualityApplyDate;
    }

    @XmlElement(name = "OVERALL_SCHEDULE_DATE")
    public String getOverallScheduleDate() {
        return overallScheduleDate;
    }

    public void setOverallScheduleDate(String overallScheduleDate) {
        this.overallScheduleDate = overallScheduleDate;
    }

    @XmlElement(name = "INSTALL_RECORD")
    public String getInstallRecord() {
        return installRecord;
    }

    public void setInstallRecord(String installRecord) {
        this.installRecord = installRecord;
    }

    @XmlElement(name = "ELEVATO_TEST_REPORT")
    public String getElevatorTestReport() {
        return elevatorTestReport;
    }

    public void setElevatorTestReport(String elevatorTestReport) {
        this.elevatorTestReport = elevatorTestReport;
    }

    @XmlElement(name = "SPECIAL_MATTERS")
    public String getSpecialMatters() {
        return specialMatters;
    }

    public void setSpecialMatters(String specialMatters) {
        this.specialMatters = specialMatters;
    }

    @XmlElement(name = "SCHEDULE_QUALITY_PERSON")
    public String getScheduleQualityPerson() {
        return scheduleQualityPerson;
    }

    public void setScheduleQualityPerson(String scheduleQualityPerson) {
        this.scheduleQualityPerson = scheduleQualityPerson;
    }

    @XmlElement(name = "HALF_QUALITY_APPLY_DATE")
    public String getHalfQualityApplyDate() {
        return halfQualityApplyDate;
    }

    public void setHalfQualityApplyDate(String halfQualityApplyDate) {
        this.halfQualityApplyDate = halfQualityApplyDate;
    }

    @XmlElement(name = "ELEVATO_CORE")
    public String getElevatorCore() {
        return elevatorCore;
    }

    public void setElevatorCore(String elevatorCore) {
        this.elevatorCore = elevatorCore;
    }

    @XmlElement(name = "ELEVATO_PLACE")
    public String getElevatorPlace() {
        return elevatorPlace;
    }

    public void setElevatorPlace(String elevatorPlace) {
        this.elevatorPlace = elevatorPlace;
    }

    @XmlElement(name = "ELEVATO_GUIDE")
    public String getElevatorGuide() {
        return elevatorGuide;
    }

    public void setElevatorGuide(String elevatorGuide) {
        this.elevatorGuide = elevatorGuide;
    }

    @XmlElement(name = "ELEVATO_CAR")
    public String getElevatorCar() {
        return elevatorCar;
    }

    public void setElevatorCar(String elevatorCar) {
        this.elevatorCar = elevatorCar;
    }

    @XmlElement(name = "ELEVATO_ROOM")
    public String getElevatorRoom() {
        return elevatorRoom;
    }

    public void setElevatorRoom(String elevatorRoom) {
        this.elevatorRoom = elevatorRoom;
    }

    @XmlElement(name = "INSTALL_START_DATE")
    public String getInstallStartDate() {
        return installStartDate;
    }

    public void setInstallStartDate(String installStartDate) {
        this.installStartDate = installStartDate;
    }

    @XmlElement(name = "HALF_SCHEDULE_DATE")
    public String getHalfScheduleDate() {
        return halfScheduleDate;
    }

    public void setHalfScheduleDate(String halfScheduleDate) {
        this.halfScheduleDate = halfScheduleDate;
    }

    @XmlElement(name = "DEBUG_END_DATE")
    public String getDebugEndDate() {
        return debugEndDate;
    }

    public void setDebugEndDate(String debugEndDate) {
        this.debugEndDate = debugEndDate;
    }

    @XmlElement(name = "SALE_PRICE")
    public String getSalePrice() {
        return salePrice;
    }
}
