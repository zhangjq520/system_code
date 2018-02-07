package com.logic.common.ws.dto.system;

public class UserPermissionDTO {

  Integer moduleId;
  Integer rolePermission;
  Integer modulePermission;

  public Integer getModuleId() {
    return moduleId;
  }

  public void setModuleId(Integer moduleId) {
    this.moduleId = moduleId;
  }

  public Integer getRolePermission() {
    return rolePermission;
  }

  public void setRolePermission(Integer rolePermission) {
    this.rolePermission = rolePermission;
  }

  public Integer getModulePermission() {
    return modulePermission;
  }

  public void setModulePermission(Integer modulePermission) {
    this.modulePermission = modulePermission;
  }

}
