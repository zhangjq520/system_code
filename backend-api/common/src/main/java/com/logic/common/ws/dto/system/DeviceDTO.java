/*************************************************************************
 * ZURUKU CONFIDENTIAL
 * __________________
 * <p/>
 * [2016] Zuruku Incorporated
 * All Rights Reserved.
 * <p/>
 * NOTICE:  All information contained herein is, and remains
 * the property of Zuruku Incorporated and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Zuruku Incorporated
 * and its suppliers and may be covered by U.S. and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Zuruku Incorporated.
 * <p/>
 * Project : logic-microservices-parent
 * Author  : omer
 * Date    : 19 Jan 2016
 */
package com.logic.common.ws.dto.system;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
@ApiModel(description = "Device DTO")
public class DeviceDTO {

    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = true, position = 1)
    private Integer id;

    @ApiModelProperty(value = "User Id", position = 2, hidden = true)
    private Integer user_id;

    @ApiModelProperty(value = "User Full Name", position = 3, hidden = true)
    private String user_full_name;

    @ApiModelProperty(value = "User Role Name", position = 4, hidden = true)
    private String user_role_name;

    @ApiModelProperty(value = "User Org Name", position = 5, hidden = true)
    private String user_org_name;

    @ApiModelProperty(value = "Device OS", position = 6)
    private String device_os;

    @ApiModelProperty(value = "Device OS Version", position = 7)
    private String device_os_version;

    @ApiModelProperty(value = "Device Serial", position = 8)
    private String device_serial;

    @ApiModelProperty(value = "Device Brand", position = 9)
    private String device_brand;

    @ApiModelProperty(value = "Device Model", position = 10)
    private String device_model;

    @ApiModelProperty(value = "Device CPU", position = 11)
    private String device_cpu;

    @ApiModelProperty(value = "Device RAM", position = 12)
    private String device_ram;

    @ApiModelProperty(value = "Purchase Date", position = 13)
    private Date purchase_date;

    @ApiModelProperty(value = "Device Status", position = 14)
    private String status;
    
    @ApiModelProperty(value = "Phone Number", position = 15)
    private String phoneNumber;
    
    @ApiModelProperty(value = "Sim Iccid", position = 16)
    private String simIccid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_full_name() {
        return user_full_name;
    }

    public void setUser_full_name(String user_full_name) {
        this.user_full_name = user_full_name;
    }

    public String getUser_role_name() {
        return user_role_name;
    }

    public void setUser_role_name(String user_role_name) {
        this.user_role_name = user_role_name;
    }

    public String getUser_org_name() {
        return user_org_name;
    }

    public void setUser_org_name(String user_org_name) {
        this.user_org_name = user_org_name;
    }

    public String getDevice_os() {
        return device_os;
    }

    public void setDevice_os(String device_os) {
        this.device_os = device_os;
    }

    public String getDevice_os_version() {
        return device_os_version;
    }

    public void setDevice_os_version(String device_os_version) {
        this.device_os_version = device_os_version;
    }

    public String getDevice_serial() {
        return device_serial;
    }

    public void setDevice_serial(String device_serial) {
        this.device_serial = device_serial;
    }

    public String getDevice_brand() {
        return device_brand;
    }

    public void setDevice_brand(String device_brand) {
        this.device_brand = device_brand;
    }

    public String getDevice_model() {
        return device_model;
    }

    public void setDevice_model(String device_model) {
        this.device_model = device_model;
    }

    public String getDevice_cpu() {
        return device_cpu;
    }

    public void setDevice_cpu(String device_cpu) {
        this.device_cpu = device_cpu;
    }

    public String getDevice_ram() {
        return device_ram;
    }

    public void setDevice_ram(String device_ram) {
        this.device_ram = device_ram;
    }

    public Date getPurchase_date() {
        return purchase_date;
    }

    public void setPurchase_date(Date purchase_date) {
        this.purchase_date = purchase_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public String getPhoneNumber() {
        return phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String getSimIccid() {
        return simIccid;
    }
    
    public void setSimIccid(String simIccid) {
        this.simIccid = simIccid;
    }
}
