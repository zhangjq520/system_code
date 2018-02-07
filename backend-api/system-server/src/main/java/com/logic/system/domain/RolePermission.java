package com.logic.system.domain;

public class RolePermission {

  private Integer roleId;

  private Integer moduleId;

  private Integer permissionString;

  public Integer getRoleId() {
    return roleId;
  }

  public void setRoleId(Integer roleId) {
    this.roleId = roleId;
  }

  public Integer getModuleId() {
    return moduleId;
  }

  public void setModuleId(Integer moduleId) {
    this.moduleId = moduleId;
  }

  public Integer getPermissionString() {
    return permissionString;
  }

  public void setPermissionString(Integer permissionString) {
    this.permissionString = permissionString;
  }
}
