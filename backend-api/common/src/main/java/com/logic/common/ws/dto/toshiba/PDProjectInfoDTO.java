package com.logic.common.ws.dto.toshiba;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.math.BigDecimal;

/**
 * Author: omer 
 * Date  : 11-12-2015
 */
@ApiModel(description = "Project Info DTO")
public class PDProjectInfoDTO {
    @ApiModelProperty(name = "id", value = "It's required when add, but not required when update", hidden = true, required = false, position = 1)
    private BigDecimal id;

    @ApiModelProperty(name = "projectId", value = "Project id", example = "GA121556", required = false, position = 2)
    private String projectId;

    @ApiModelProperty(name = "projectName", value = "Project name", example = "Vanke dream school", required = false, position = 3)
    private String projectName;

    @ApiModelProperty(name = "elNum", value = "Elevator number", allowableValues = "range[0, 1000]", required = false, position = 4)
    private Short elNum;

    @ApiModelProperty(name = "escNum", value = "Escalator number", allowableValues = "range[0, 1000]", required = false, position = 5)
    private Short escNum;

    @ApiModelProperty(name = "buildingProvinceId", value = "Building province id", allowableValues = "range[0, 1000000]", required = false, position = 6)
    private Integer buildingProvinceId;

    @ApiModelProperty(name = "buildingSiteAddress", value = "Building address", example = "Jiangsu Province, Nanjing Lukou street mausoleum Road 448", required = false, position = 7)
    private String buildingSiteAddress;

    @ApiModelProperty(name = "installSubcompanyId", value = "Agency company id", allowableValues = "range[0, 1000000]", required = false, position = 8)
    private String installSubcompanyId;

    @ApiModelProperty(name = "installSubcompanyName", value = "Agency company name", example = "Jiangsu Branch", required = false, position = 9)
    private String installSubcompanyName;

    @ApiModelProperty(name = "installRegionId", value = "Installation branch region id", allowableValues = "range[0, 1000000]", required = false, position = 10)
    private String installRegionId;

    @ApiModelProperty(name = "installVendorId", value = "Installation agency name", example = "VENDOR1", required = false, position = 11)
    private String installVendorId;

    @ApiModelProperty(name = "emphasisFlag", value = "Key projects, No: 0; Yes: 1", example = "1", required = false, position = 12)
    private String emphasisFlag;

    @ApiModelProperty(name = "customerId", value = "Customer Id", example = "1234", required = false, position = 13)
    private String customerId;

    @ApiModelProperty(name = "saleType", value = "Sale type", example = "1", required = false, position = 14)
    private String saleType;

    @ApiModelProperty(name = "saleVendorId", value = "Sale Vendor Id", example = "123123", required = false, position = 15)
    private String saleVendorId;

    @ApiModelProperty(name = "buildingName", value = "Building name", example = "Jia ye Nanjing", required = false, position = 16)
    private String buildingName;

    @ApiModelProperty(name = "buildingPurpose", value = "Building purpose", example = "Business", required = false, position = 17)
    private String buildingPurpose;

    @ApiModelProperty(name = "finallyCustomer", value = "Final Customer", example = "Ronnie King", required = false, position = 18)
    private String finallyCustomer;

    @ApiModelProperty(name = "attachedSubcompanyId", value = "Attached Sub company Id", example = "12345", required = false, position = 19)
    private Integer attachedSubcompanyId;

    @ApiModelProperty(name = "attachedRegion", value = "Attached region", example = "12334", required = false, position = 20)
    private Integer attachedRegion;

    @ApiModelProperty(name = "attachedSubcompanyName", value = "Attached Sub company Name", example = "Company 1", required = false, position = 21)
    private String attachedSubcompanyName;

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getSaleType() {
        return saleType;
    }

    public void setSaleType(String saleType) {
        this.saleType = saleType;
    }

    public String getSaleVendorId() {
        return saleVendorId;
    }

    public void setSaleVendorId(String saleVendorId) {
        this.saleVendorId = saleVendorId;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName;
    }

    public String getBuildingPurpose() {
        return buildingPurpose;
    }

    public void setBuildingPurpose(String buildingPurpose) {
        this.buildingPurpose = buildingPurpose;
    }

    public String getFinallyCustomer() {
        return finallyCustomer;
    }

    public void setFinallyCustomer(String finallyCustomer) {
        this.finallyCustomer = finallyCustomer;
    }

    public Integer getAttachedSubcompanyId() {
        return attachedSubcompanyId;
    }

    public void setAttachedSubcompanyId(Integer attachedSubcompanyId) {
        this.attachedSubcompanyId = attachedSubcompanyId;
    }

    public Integer getAttachedRegion() {
        return attachedRegion;
    }

    public void setAttachedRegion(Integer attachedRegion) {
        this.attachedRegion = attachedRegion;
    }

    public String getAttachedSubcompanyName() {
        return attachedSubcompanyName;
    }

    public void setAttachedSubcompanyName(String attachedSubcompanyName) {
        this.attachedSubcompanyName = attachedSubcompanyName;
    }

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Short getElNum() {
        return elNum;
    }

    public void setElNum(Short elNum) {
        this.elNum = elNum;
    }

    public Short getEscNum() {
        return escNum;
    }

    public void setEscNum(Short escNum) {
        this.escNum = escNum;
    }

    public Integer getBuildingProvinceId() {
        return buildingProvinceId;
    }

    public void setBuildingProvinceId(Integer buildingProvinceId) {
        this.buildingProvinceId = buildingProvinceId;
    }

    public String getBuildingSiteAddress() {
        return buildingSiteAddress;
    }

    public void setBuildingSiteAddress(String buildingSiteAddress) {
        this.buildingSiteAddress = buildingSiteAddress;
    }



    public String getInstallSubcompanyName() {
        return installSubcompanyName;
    }

    public void setInstallSubcompanyName(String installSubcompanyName) {
        this.installSubcompanyName = installSubcompanyName;
    }



    public String getInstallVendorId() {
        return installVendorId;
    }

    public void setInstallVendorId(String installVendorId) {
        this.installVendorId = installVendorId;
    }

    public String getEmphasisFlag() {
        return emphasisFlag;
    }

    public void setEmphasisFlag(String emphasisFlag) {
        this.emphasisFlag = emphasisFlag;
    }

    public String getInstallSubcompanyId() {
        return installSubcompanyId;
    }

    public void setInstallSubcompanyId(String installSubcompanyId) {
        this.installSubcompanyId = installSubcompanyId;
    }

    public String getInstallRegionId() {
        return installRegionId;
    }

    public void setInstallRegionId(String installRegionId) {
        this.installRegionId = installRegionId;
    }
}
