package com.logic.system.persistence.write;

import com.logic.system.domain.RolePermission;

public interface RolePermissionWriteMapper {

  int deleteByPrimaryKey(RolePermission rolePermission);

  int insertSelective(RolePermission record);

  int updateByPrimaryKeySelective(RolePermission record);

  int deleteByRoleId(Integer roleId);

  int deleteByModuleId(Integer moduleId);
}
