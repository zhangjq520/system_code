package com.logic.system.service;

import com.logic.system.domain.Module;
import com.logic.system.domain.RolePermission;
import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.RolePermissionDTO;
import com.logic.common.ws.dto.system.UserModulePermissionDTO;

import java.util.List;

public interface IPermissionService extends ICRUDService {

	public void deleteRolePermissionByModuleId(Integer parseInt);

	public RolePermissionDTO getRolePermission(Integer roleId, Integer moduleId) throws BusinessException;

	public void saveOrUpdateRolePermission(RolePermissionDTO rolePermissionDTO);

	public List<Module> getUserModule(Integer userId);

	public UserModulePermissionDTO getUserModulePermission(Integer userId, Integer moduleId);

	public void deleteRolePermissionByRoleId(Integer id);

	public List<Module> getUserModuleByUserId(Integer userId);

	public List<RolePermission> getRolePermissionsByRoleId(Integer roleId);

}
