package com.logic.system.persistence.write;

import com.logic.system.domain.UserPermission;
import com.logic.system.domain.UserPermissionKey;

public interface UserPermissionWriteMapper {

  int deleteByPrimaryKey(UserPermissionKey key);

  int insert(UserPermission record);

  int insertSelective(UserPermission record);

  int updateByPrimaryKeySelective(UserPermission record);

  int updateByPrimaryKey(UserPermission record);
}
