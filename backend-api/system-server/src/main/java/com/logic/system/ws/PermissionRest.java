package com.logic.system.ws;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.Privileges;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.ModuleDTO;
import com.logic.common.ws.dto.system.ModuleFunctionDTO;
import com.logic.common.ws.dto.system.RolePermissionDTO;
import com.logic.common.ws.dto.system.UserModulePermissionDTO;
import com.logic.system.domain.Module;
import com.logic.system.domain.ModuleFunction;
import com.logic.system.domain.RolePermission;
import com.logic.system.service.IModuleFunctionService;
import com.logic.system.service.IModuleService;
import com.logic.system.service.IPermissionService;
import com.logic.system.ws.dto.ModuleConverter;
import com.logic.system.ws.dto.ModuleFunctionConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/permissions")
@Api(value = "permission", description = "Permission Rest WebServices", position = 5)
public class PermissionRest {

	@Autowired
	private IPermissionService permissionService;

	@Autowired
	private IModuleService moduleService;

	@Autowired
	private IModuleFunctionService moduleFunctionService;

	@Context
	private HttpServletResponse response;

	@GET
	@Path("/role/{roleId}/module/{moduleId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get role permission by role id and module id.", position = 2)
	public Response getRolePermission(@ApiParam(value = "param", required = true) @PathParam("roleId") Integer roleId,
			@PathParam("moduleId") Integer moduleId) {
		CommonResultMap map = new CommonResultMap();
		try {
			RolePermissionDTO rolePermissionDto = permissionService.getRolePermission(roleId, moduleId);
			map.setData(rolePermissionDto);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create or update role permission.", position = 3)
	public Response createRolePermission(
			@ApiParam(value = "param", required = true) RolePermissionDTO rolePermissionDto) {
		CommonResultMap map = new CommonResultMap();
		// RolePermission rolePermission = new RolePermission();
		try {
			if (null == rolePermissionDto.getRoleId()
					|| StringUtils.isEmpty(rolePermissionDto.getRoleId().toString())) {
				throw new BusinessException(ErrorMessageEnum.Permiss_Create_Role_Permission_Empty_Rold_ID);
			}
			if (null == rolePermissionDto.getModuleId()
					|| StringUtils.isEmpty(rolePermissionDto.getModuleId().toString())) {
				throw new BusinessException(ErrorMessageEnum.Permiss_Create_Role_Permission_Empty_Module_ID);
			}
			permissionService.saveOrUpdateRolePermission(rolePermissionDto);
			map.setResult(CommonResult.SUCCESS, "Create or Update role permission success");
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/user/{userId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get user module by user id", position = 4)
	public Response getUserModule(@ApiParam(value = "param", required = true) @PathParam("userId") Integer userId) {
		CommonResultMap map = new CommonResultMap();
		List<ModuleDTO> moduleDtoList = new ArrayList<ModuleDTO>();
		try {
			List<Module> moduleList = permissionService.getUserModule(userId);
			if (moduleList != null && moduleList.size() > 0) {
				for (Module module : moduleList) {
					ModuleDTO moduleDto = ModuleConverter.fromModuleToDTO(module);
					moduleDtoList.add(moduleDto);
				}
			}
			map.setData(moduleDtoList);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/user/{userId}/module/{moduleId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get user module permission by user id and module id", position = 5)
	public Response getUserModulePermission(
			@ApiParam(value = "param", required = true) @PathParam("userId") Integer userId,
			@PathParam("moduleId") Integer moduleId) {
		CommonResultMap map = new CommonResultMap();
		try {
			UserModulePermissionDTO dto = permissionService.getUserModulePermission(userId, moduleId);
			map.setData(dto);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/user/{userId}/role/{roleId}")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Retrieve all modules, features and the role permissions", position = 3)
	public Response getRoleAllPermission(
			@ApiParam(value = "param", required = true) @PathParam("userId") Integer userId,
			@ApiParam(value = "param", required = true) @PathParam("roleId") Integer roleId) {
		CommonResultMap map = new CommonResultMap();
		List<ModuleDTO> moduleDtoList = new ArrayList<ModuleDTO>();
		ModuleDTO moduleDto = null;
		ModuleFunctionDTO moduleFunctionDto = null;
		try {
			List<Module> userModulesList = permissionService.getUserModuleByUserId(userId);
			List<RolePermission> rolePermissionList = permissionService.getRolePermissionsByRoleId(roleId);
			if (userModulesList != null && userModulesList.size() > 0) {
				for (Module module : userModulesList) {
					moduleDto = ModuleConverter.fromModuleToDTO(module);
					moduleDto.setRole_permission_string(Privileges.getPrivilegesString(0));
					String modulePath = getModulePath(moduleDto);
					moduleDto.setModule_path(modulePath.substring(modulePath.indexOf(" >> ") + 4));
					for (RolePermission rolePermission : rolePermissionList) {
						if (rolePermission.getModuleId().equals(module.getId())) {
							if (rolePermission.getPermissionString() != null) {
								moduleDto.setRole_permission_string(
										Privileges.getPrivilegesString(rolePermission.getPermissionString()));
							}
						}
					}

					if (module.getPermissionString() != null) {
						String operatorPermissionString = Privileges.getPrivilegesString(module.getPermissionString());
						moduleDto.setOperator_permission_string(operatorPermissionString);
					}

					if (moduleService.getChildren(module.getId()) != null
							&& moduleService.getChildren(module.getId()).size() > 0) {
						moduleDto.setHas_children(true);
					} else {
						moduleDto.setHas_children(false);
					}
					ModuleFunction moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(module.getId());
					if (moduleFunction != null) {
						moduleFunctionDto = ModuleFunctionConverter.fromModuleFunctionToDTO(moduleFunction);
						moduleDto.setModuleFunctionDto(moduleFunctionDto);
					}
					moduleDtoList.add(moduleDto);
				}
			}

			//queryUtil.getPagingTool().calculateStartIndex();
			//List<ModuleDTO> moduleDTOList= moduleService.query(queryUtil);
			//Integer totalCount = queryUtil.getPagingTool().getTotalNum();

			map.setData(moduleDtoList);
			map.setResult(CommonResult.SUCCESS, "Retrieve all modules, features and the role permissions success");
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	private String getModulePath(ModuleDTO moduleDto) {
		String moduleName = moduleDto.getName_en();
		String modulePath = moduleDto.getModule_path() == null ? moduleName : moduleDto.getModule_path();
		if (moduleDto.getParent_id() != null) {
			Module parentModule = moduleService.getModuleById(Integer.valueOf(moduleDto.getParent_id()));
			String parentModuleName = parentModule.getNameEn();
			modulePath = parentModuleName + " >> " + modulePath;
			if (parentModule.getParentId() != null) {
				ModuleDTO parentmoduleDto = ModuleConverter.fromModuleToDTO(parentModule);
				parentmoduleDto.setModule_path(modulePath);
				modulePath = getModulePath(parentmoduleDto);
			}
		}
		return modulePath;
	}

}
