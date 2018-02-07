package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.Date;

public class MobileDataSync extends BasePojo{

    private Integer deviceId;

    private Date latestSyncTime;

    private String syncType;

    private String dataType;

    private String syncDescription;

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Date getLatestSyncTime() {
        return latestSyncTime;
    }

    public void setLatestSyncTime(Date latestSyncTime) {
        this.latestSyncTime = latestSyncTime;
    }

    public String getSyncType() {
        return syncType;
    }

    public void setSyncType(String syncType) {
        this.syncType = syncType == null ? null : syncType.trim();
    }

    public String getDataType() {
        return dataType;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType == null ? null : dataType.trim();
    }

    public String getSyncDescription() {
        return syncDescription;
    }

    public void setSyncDescription(String syncDescription) {
        this.syncDescription = syncDescription == null ? null : syncDescription.trim();
    }

}