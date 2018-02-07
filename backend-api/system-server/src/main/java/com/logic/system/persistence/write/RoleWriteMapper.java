package com.logic.system.persistence.write;

import com.logic.system.domain.Role;

public interface RoleWriteMapper {

  int deleteByPrimaryKey(Role record);

  int insertSelective(Role record);

  int updateByPrimaryKeySelective(Role record);

  int deleteUserRoleByRoleId(Integer roleId);
}
