package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "", discriminator = "", value = "Organization DTO")
public class OrganizationDTO {

  @ApiModelProperty(value = "Organization ID")
  private String id;

  @ApiModelProperty(value = "Organization Type")
  private String org_type;

  @ApiModelProperty(value = "Organization Code")
  private String code;

  @ApiModelProperty(value = "Organization short name")
  private String short_name;

  @ApiModelProperty(value = "Organization full name")
  private String full_name;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getOrg_type() {
    return org_type;
  }

  public void setOrg_type(String org_type) {
    this.org_type = org_type;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getShort_name() {
    return short_name;
  }

  public void setShort_name(String short_name) {
    this.short_name = short_name;
  }

  public String getFull_name() {
    return full_name;
  }

  public void setFull_name(String full_name) {
    this.full_name = full_name;
  }

  @Override
  public String toString() {
    return "OrganizationDTO [id=" + id + ", org_type=" + org_type + ", code=" + code + ", short_name=" + short_name
        + ", full_name=" + full_name + "]";
  }

}
