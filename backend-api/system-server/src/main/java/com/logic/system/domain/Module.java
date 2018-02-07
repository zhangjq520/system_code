package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.List;

public class Module extends BasePojo {

  private static final long serialVersionUID = -9065970589973103795L;

  private String type;

  private String code;

  private String nameEn;

  private String nameZh;

  private String url;

  private String descriptionsEn;

  private String descriptionsZh;

  private Integer parentId;

  private Integer priority;

  private Integer permissionString;

  private ModuleFunction moduleFunction;

  private List<Module> childModules;

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type == null ? null : type.trim();
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code == null ? null : code.trim();
  }

  public String getNameEn() {
    return nameEn;
  }

  public void setNameEn(String nameEn) {
    this.nameEn = nameEn;
  }

  public String getNameZh() {
    return nameZh;
  }

  public void setNameZh(String nameZh) {
    this.nameZh = nameZh;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url == null ? null : url.trim();
  }

  public String getDescriptionsEn() {
    return descriptionsEn;
  }

  public void setDescriptionsEn(String descriptionsEn) {
    this.descriptionsEn = descriptionsEn;
  }

  public String getDescriptionsZh() {
    return descriptionsZh;
  }

  public void setDescriptionsZh(String descriptionsZh) {
    this.descriptionsZh = descriptionsZh;
  }

  public Integer getParentId() {
    return parentId;
  }

  public void setParentId(Integer parentId) {
    this.parentId = parentId;
  }

  public Integer getPriority() {
    return priority;
  }

  public void setPriority(Integer priority) {
    this.priority = priority;
  }

  public Integer getPermissionString() {
    return permissionString;
  }

  public void setPermissionString(Integer permissionString) {
    this.permissionString = permissionString;
  }

  public ModuleFunction getModuleFunction() {
    return moduleFunction;
  }

  public void setModuleFunction(ModuleFunction moduleFunction) {
    this.moduleFunction = moduleFunction;
  }

  public List<Module> getChildModules() {
    return childModules;
  }

  public void setChildModules(List<Module> childModules) {
    this.childModules = childModules;
  }

}
