package com.logic.system.domain;


import com.logic.common.domain.BasePojo;

import java.util.Date;

public class MobileDevice extends BasePojo{

    private Integer userId;

    private String deviceOs;

    private String deviceOsVersion;

    private String deviceSerial;

    private String deviceBrand;

    private String deviceModel;

    private String deviceCpu;

    private String deviceRam;
    
    private String phoneNumber;
    
    private String simIccid;


    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getDeviceOs() {
        return deviceOs;
    }

    public void setDeviceOs(String deviceOs) {
        this.deviceOs = deviceOs == null ? null : deviceOs.trim();
    }

    public String getDeviceOsVersion() {
        return deviceOsVersion;
    }

    public void setDeviceOsVersion(String deviceOsVersion) {
        this.deviceOsVersion = deviceOsVersion == null ? null : deviceOsVersion.trim();
    }

    public String getDeviceSerial() {
        return deviceSerial;
    }

    public void setDeviceSerial(String deviceSerial) {
        this.deviceSerial = deviceSerial == null ? null : deviceSerial.trim();
    }

    public String getDeviceBrand() {
        return deviceBrand;
    }

    public void setDeviceBrand(String deviceBrand) {
        this.deviceBrand = deviceBrand == null ? null : deviceBrand.trim();
    }

    public String getDeviceModel() {
        return deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel == null ? null : deviceModel.trim();
    }

    public String getDeviceCpu() {
        return deviceCpu;
    }

    public void setDeviceCpu(String deviceCpu) {
        this.deviceCpu = deviceCpu == null ? null : deviceCpu.trim();
    }

    public String getDeviceRam() {
        return deviceRam;
    }

    public void setDeviceRam(String deviceRam) {
        this.deviceRam = deviceRam == null ? null : deviceRam.trim();
    }
    
    public String getPhoneNumber() {
        return phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }
    
    public String getSimIccid() {
        return simIccid;
    }
    
    public void setSimIccid(String simIccid) {
        this.simIccid = simIccid == null ? null : simIccid.trim();
    } 
}