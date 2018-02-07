package com.logic.system.wsdl.model;

import javax.xml.bind.annotation.XmlElement;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class HeadData extends TableDataBase{

    //PROJECT_ID
    private String projectId = "";
    //PROJECT_NAME
    private String projectName = "";
    //INSTALL_COMPANY
    private String installCompany = "";
    //INSTALL_CUSTOMER
    private String installCustomer = "";
    //INSTALL_DIRECTOR
    private String installDirector = "";
    //DIRECTOR_TEL
    private String directorTel = "";
    //LOCAL_ADRESS
    private String localAddress = "";
    //COMPANY_ID
    private String companyId = "";


    private String zjy = "";
    private NameData fj = new NameData();
    private String meid = "";
    private String test11 = "";
    private String test = "";
    private String aa = "";
    private String style = "";
    private String type = "";
    private String a = "";
    private NameData fj2 = new NameData();


    @XmlElement(name = "PROJECT_ID")
    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    @XmlElement(name = "PROJECT_NAME")
    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    @XmlElement(name = "INSTALL_COMPANY")
    public String getInstallCompany() {
        return installCompany;
    }

    public void setInstallCompany(String installCompany) {
        this.installCompany = installCompany;
    }

    @XmlElement(name = "INSTALL_CUSTOMER")
    public String getInstallCustomer() {
        return installCustomer;
    }

    public void setInstallCustomer(String installCustomer) {
        this.installCustomer = installCustomer;
    }

    @XmlElement(name = "INSTALL_DIRECTOR")
    public String getInstallDirector() {
        return installDirector;
    }

    public void setInstallDirector(String installDirector) {
        this.installDirector = installDirector;
    }

    @XmlElement(name = "DIRECTOR_TEL")
    public String getDirectorTel() {
        return directorTel;
    }

    public void setDirectorTel(String directorTel) {
        this.directorTel = directorTel;
    }

    @XmlElement(name = "LOCAL_ADRESS")
    public String getLocalAddress() {
        return localAddress;
    }

    public void setLocalAddress(String localAddress) {
        this.localAddress = localAddress;
    }

    @XmlElement(name = "COMPANY_ID")
    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    ///////////////////////////////
    // Below values have no mapping
    ///////////////////////////////

    @XmlElement(name = "ZJY")
    public String getZjy() {
        return zjy;
    }

    @XmlElement(name = "FJ")
    public NameData getFj() {
        return fj;
    }

    @XmlElement(name = "MEID")
    public String getMeid() {
        return meid;
    }

    @XmlElement(name = "TEST11")
    public String getTest11() {
        return test11;
    }

    @XmlElement(name = "TEST")
    public String getTest() {
        return test;
    }

    @XmlElement(name = "AA")
    public String getAa() {
        return aa;
    }

    @XmlElement(name = "STYLE")
    public String getStyle() {
        return style;
    }

    @XmlElement(name = "TYPE")
    public String getType() {
        return type;
    }

    @XmlElement(name = "A")
    public String getA() {
        return a;
    }

    @XmlElement(name = "FJ2")
    public NameData getFj2() {
        return fj2;
    }
}
