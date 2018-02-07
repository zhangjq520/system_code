package com.logic.common.ws.dto.system;

import java.math.BigDecimal;
import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
@ApiModel(description = "Device Position DTO")
public class DevicePositionDTO {

    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = true, position = 1)
    private Integer id;

    @ApiModelProperty(value = "Device Id", position = 2, hidden = true)
    private Integer device_id;

    @ApiModelProperty(value = "Track time", position = 3, hidden = false)
    private Date track_time;
    @ApiModelProperty(value = "GPS Longitude", position = 4, hidden = false)
    private BigDecimal longitude;
    @ApiModelProperty(value = "GPS Latitude", position = 5, hidden = false)
    private BigDecimal latitude;
    
    @ApiModelProperty(value = "Device Brand", position = 6, hidden = true)
    private String device_brand;
    
    @ApiModelProperty(value = "User Id", position = 7, hidden = true)
    private Integer user_id;
    
    @ApiModelProperty(value = "Device Id", position = 8, hidden = true)
    private String first_name;
    
    @ApiModelProperty(value = "Device Id", position = 9, hidden = true)
    private String last_name;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDevice_id() {
        return device_id;
    }

    public void setDevice_id(Integer device_id) {
        this.device_id = device_id;
    }

    public Date getTrack_time() {
        return track_time;
    }

    public void setTrack_time(Date track_time) {
        this.track_time = track_time;
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

	public String getDevice_brand() {
		return device_brand;
	}

	public void setDevice_brand(String device_brand) {
		this.device_brand = device_brand;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
}
