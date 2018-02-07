package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "My Profile DTO")
public class MyProfileInfoDTO {

  @ApiModelProperty(value = "Login user ID", required = true, hidden = true, position = 1)
  private String user_id;

  @ApiModelProperty(value = "Login user name", required = true, hidden = true, position = 2)
  private String user_name;

  @ApiModelProperty(value = "Employee ID", required = true, hidden = true, position = 3)
  private String employee_id;

  @ApiModelProperty(value = "Employee code", required = true, hidden = true, position = 4)
  private String employee_code;

  @ApiModelProperty(value = "Corporate structure code", required = true, hidden = true, position = 5)
  private String org_code;

  @ApiModelProperty(value = "Corporate structure name", required = true, hidden = true, position = 6)
  private String org_name;

  @ApiModelProperty(value = "Facility code", required = true, hidden = true, position = 7)
  private String facility_code;

  @ApiModelProperty(value = "Facility name", required = true, hidden = true, position = 8)
  private String facility_name;

  @ApiModelProperty(value = "Primary job", required = true, hidden = true, position = 9)
  private String primary_job;

  @ApiModelProperty(value = "Secondary job", required = true, hidden = true, position = 10)
  private String secondary_job;

  @ApiModelProperty(value = "Role code", required = true, hidden = true, position = 11)
  private String role_code;

  @ApiModelProperty(value = "Title", required = true, hidden = true, position = 12)
  private String title;

  @ApiModelProperty(value = "Work phone", position = 13)
  private String work_phone;

  @ApiModelProperty(value = "Email", position = 14)
  private String email;

  public String getUser_id() {
    return user_id;
  }

  public void setUser_id(String user_id) {
    this.user_id = user_id;
  }

  public String getUser_name() {
    return user_name;
  }

  public void setUser_name(String user_name) {
    this.user_name = user_name;
  }

  public String getEmployee_id() {
    return employee_id;
  }

  public void setEmployee_id(String employee_id) {
    this.employee_id = employee_id;
  }

  public String getEmployee_code() {
    return employee_code;
  }

  public void setEmployee_code(String employee_code) {
    this.employee_code = employee_code;
  }

  public String getOrg_code() {
    return org_code;
  }

  public void setOrg_code(String org_code) {
    this.org_code = org_code;
  }

  public String getOrg_name() {
    return org_name;
  }

  public void setOrg_name(String org_name) {
    this.org_name = org_name;
  }

  public String getFacility_code() {
    return facility_code;
  }

  public void setFacility_code(String facility_code) {
    this.facility_code = facility_code;
  }

  public String getFacility_name() {
    return facility_name;
  }

  public void setFacility_name(String facility_name) {
    this.facility_name = facility_name;
  }

  public String getPrimary_job() {
    return primary_job;
  }

  public void setPrimary_job(String primary_job) {
    this.primary_job = primary_job;
  }

  public String getSecondary_job() {
    return secondary_job;
  }

  public void setSecondary_job(String secondary_job) {
    this.secondary_job = secondary_job;
  }

  public String getRole_code() {
    return role_code;
  }

  public void setRole_code(String role_code) {
    this.role_code = role_code;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getWork_phone() {
    return work_phone;
  }

  public void setWork_phone(String work_phone) {
    this.work_phone = work_phone;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

}
