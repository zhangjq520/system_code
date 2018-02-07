package com.logic.system.persistence.read;

import com.logic.system.domain.UserPermission;
import com.logic.system.domain.UserPermissionKey;

public interface UserPermissionReadMapper {

  UserPermission selectByPrimaryKey(UserPermissionKey key);

}
