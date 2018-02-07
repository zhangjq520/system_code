package com.logic.common.ws.dto.system;

import java.util.List;

public class CorporateHierarchyDTO {

  private Integer id;

  private String org_type;

  private String code;

  private String short_name;

  private String full_name;

  private Integer parent_id;

  private Boolean has_children;

  private List<CorporateHierarchyDTO> childCorporate;

  public Integer getId() {
    return id;

  }

  public void setId(Integer id) {
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

  public Integer getParent_id() {
    return parent_id;
  }

  public void setParent_id(Integer parent_id) {
    this.parent_id = parent_id;
  }

  public Boolean getHas_children() {
    return has_children;
  }

  public void setHas_children(Boolean has_children) {
    this.has_children = has_children;
  }

  public List<CorporateHierarchyDTO> getChildCorporate() {
    return childCorporate;
  }

  public void setChildCorporate(List<CorporateHierarchyDTO> childCorporate) {
    this.childCorporate = childCorporate;
  }

}
