package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
public class DevicePosition extends BasePojo{
    private Integer deviceId;
    private Date trackTime;
    private BigDecimal longitude;
    private BigDecimal latitude;

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Date getTrackTime() {
        return trackTime;
    }

    public void setTrackTime(Date trackTime) {
        this.trackTime = trackTime;
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }
}
