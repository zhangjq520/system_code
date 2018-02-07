package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.List;

public class Organization extends BasePojo {

  private static final long serialVersionUID = 6386771094831692269L;

  private String orgType;

  private String code;

  private String shortName;

  private String fullName;

  private String status;

  private Integer parentId;

  private Integer addressId;

  private String description;

  private Integer managerId;

  private List<Organization> childOrganization;

  public String getOrgType() {
    return orgType;
  }

  public void setOrgType(String orgType) {
    this.orgType = orgType == null ? null : orgType.trim();
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code == null ? null : code.trim();
  }

  public Integer getParentId() {
    return parentId;
  }

  public void setParentId(Integer parentId) {
    this.parentId = parentId;
  }

  public Integer getAddressId() {
    return addressId;
  }

  public void setAddressId(Integer addressId) {
    this.addressId = addressId;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description == null ? null : description.trim();
  }

  public String getShortName() {
    return shortName;
  }

  public void setShortName(String shortName) {
    this.shortName = shortName;
  }

  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Integer getManagerId() {
    return managerId;
  }

  public void setManagerId(Integer managerId) {
    this.managerId = managerId;
  }

  public List<Organization> getChildOrganization() {
    return childOrganization;
  }

  public void setChildOrganization(List<Organization> childOrganization) {
    this.childOrganization = childOrganization;
  }

}
