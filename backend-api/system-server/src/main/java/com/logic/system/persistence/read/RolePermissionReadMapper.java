package com.logic.system.persistence.read;

import com.logic.system.domain.Module;
import com.logic.system.domain.RolePermission;
import com.logic.common.ws.dto.system.UserPermissionDTO;
import java.util.List;
import java.util.Map;

public interface RolePermissionReadMapper {

	RolePermission selectByPrimaryKey(RolePermission rolePermission);

	List<UserPermissionDTO> getUserPermission(Integer userId);

	List<UserPermissionDTO> getUserModulePermission(Map<String, Object> params);

	List<Module> getAllModulesByRoleId(Integer roleId);

	List<RolePermission> getRoleModulesByRoleId(Integer roleId);
}
