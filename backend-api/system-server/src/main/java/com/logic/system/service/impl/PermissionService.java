package com.logic.system.service.impl;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.ModuleTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.Privileges;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.RolePermissionDTO;
import com.logic.common.ws.dto.system.UserModulePermissionDTO;
import com.logic.common.ws.dto.system.UserPermissionDTO;
import com.logic.system.domain.Module;
import com.logic.system.domain.ModuleFunction;
import com.logic.system.domain.RolePermission;
import com.logic.system.persistence.read.RolePermissionReadMapper;
import com.logic.system.persistence.write.RolePermissionWriteMapper;
import com.logic.system.service.IModuleFunctionService;
import com.logic.system.service.IModuleService;
import com.logic.system.service.IPermissionService;

@Service
public class PermissionService implements IPermissionService {

	@Autowired
	private RolePermissionReadMapper rolePermissionReadMapper;

	@Autowired
	private RolePermissionWriteMapper rolePermissionWriteMapper;

	@Autowired
	private IModuleService moduleService;

	@Autowired
	private IModuleFunctionService moduleFunctionService;

	public void deleteRolePermissionByRoleId(Integer roleId) {
		rolePermissionWriteMapper.deleteByRoleId(roleId);
	}

	public void deleteRolePermissionByModuleId(Integer moduleId) {
		rolePermissionWriteMapper.deleteByModuleId(moduleId);
	}

	public RolePermissionDTO getRolePermission(Integer roleId, Integer moduleId) throws BusinessException {
		RolePermissionDTO dto = new RolePermissionDTO();
		dto.setRoleId(roleId.toString());
		dto.setModuleId(moduleId.toString());

		Module module = (Module) moduleService.get(moduleId);
		ModuleFunction moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(moduleId);

		if (null == moduleFunction) {
			throw new BusinessException(ErrorMessageEnum.Permiss_Get_Role_Permission_Empty_Module_Function);
		}

		if (module != null) {
			Integer modulePermission = module.getPermissionString() == null ? 0 : module.getPermissionString();

			// set enabled and label
			String modulePermissionString = Privileges.getPrivilegesString(modulePermission);
			for (int i = 0; i < modulePermissionString.length(); i++) {
				char c = modulePermissionString.charAt(i);
				if (c == '1') {

					String labelEn = moduleFunction.fetchLabelEn(i);
					String labelZh = moduleFunction.fetchLabelZh(i);
					if (!StringUtils.isEmpty(labelEn) || !StringUtils.isEmpty(labelZh)) {
						try {

							Method setMethod = RolePermissionDTO.class.getMethod("setEnabled" + i, String.class);
							setMethod.invoke(dto, "1");
							setMethod = RolePermissionDTO.class.getMethod("setLabelEn" + i, String.class);
							setMethod.invoke(dto, labelEn);
							setMethod = RolePermissionDTO.class.getMethod("setLabelZh" + i, String.class);
							setMethod.invoke(dto, labelZh);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
			}

			// set permission
			RolePermission param = new RolePermission();
			param.setRoleId(roleId);
			param.setModuleId(moduleId);
			RolePermission rp = rolePermissionReadMapper.selectByPrimaryKey(param);
			if (rp != null) {
				Integer rolePermission = rp.getPermissionString();
				String permissionString = Privileges.getPrivilegesString(rolePermission & modulePermission);
				for (int i = 0; i < permissionString.length(); i++) {
					char c = permissionString.charAt(i);
					if (c == '1') {
						try {
							Method setMethod = RolePermissionDTO.class.getMethod("setP" + i, String.class);
							setMethod.invoke(dto, "1");
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
			}
		}

		return dto;
	}

	public void saveOrUpdateRolePermission(RolePermissionDTO rpDTO) {
		RolePermission rp = new RolePermission();
		rp.setRoleId(Integer.valueOf(rpDTO.getRoleId()));
		rp.setModuleId(Integer.valueOf(rpDTO.getModuleId()));
		RolePermission rolePermission = rolePermissionReadMapper.selectByPrimaryKey(rp);
		if (rolePermission == null) {
			Integer permission = rpDTO.generateRolePermission();
			rp.setPermissionString(permission);
			rolePermissionWriteMapper.insertSelective(rp);
		} else {
			String originalPermission = Privileges.getPrivilegesString(rolePermission.getPermissionString());
			RolePermissionDTO originalRPDTO = new RolePermissionDTO();
			originalRPDTO.setRoleId(rpDTO.getRoleId());
			originalRPDTO.setModuleId(rpDTO.getModuleId());
			for (int i = 0; i < 16; i++) {
				try {
					Method getMethod = originalRPDTO.getClass().getMethod("setP" + i, String.class);
					getMethod.invoke(originalRPDTO, String.valueOf(originalPermission.charAt(i)));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			rpDTO.updateRolePermission(originalRPDTO);
			Integer newPermission = originalRPDTO.generateRolePermission();
			rp.setPermissionString(newPermission);
			rolePermissionWriteMapper.updateByPrimaryKeySelective(rp);
		}
	}

	public List<Module> getUserModule(Integer userId) {
		List<Module> retList = new ArrayList<Module>();
		List<UserPermissionDTO> userPermissionList = rolePermissionReadMapper.getUserPermission(userId);
		if (userPermissionList != null && userPermissionList.size() > 0) {
			Map<Integer, Integer> map = new LinkedHashMap<Integer, Integer>();
			for (UserPermissionDTO dto : userPermissionList) {
				Integer moduleId = dto.getModuleId();
				Integer rolePermission = dto.getRolePermission();
				Integer modulePermission = dto.getModulePermission();
				if (map.containsKey(moduleId)) {
					Integer oldPermission = map.get(moduleId);
					String permissionString = Privileges.getPrivilegesString(oldPermission | rolePermission);
					map.put(moduleId, Integer.valueOf(permissionString, 2));
				} else {
					String permissionString = Privileges.getPrivilegesString(rolePermission & modulePermission);
					map.put(moduleId, Integer.valueOf(permissionString, 2));
				}
			}

			List<Module> list = new ArrayList<Module>();
			for (Map.Entry<Integer, Integer> m : map.entrySet()) {
				Integer moduleId = m.getKey();
				Integer permission = m.getValue();
				// Boolean bool = Privileges.ableTo(permission,
				// Privileges.PRIVILEGE_QUERY);
				if (permission > 0) {
					Module module = moduleService.getModuleById(moduleId);
					list.add(module);
				}
			}

			try {
				retList = getModuleTree(list);
			} catch (BusinessException e) {
				e.printStackTrace();
			}
		}

		return retList;
	}

	/**
	 * Generate the Module Tree based on the passed in module list which the
	 * user have permission.
	 * 
	 * @param moduleList
	 * @return
	 * @throws BusinessException
	 */
	private List<Module> getModuleTree(List<Module> moduleList) throws BusinessException {
		List<Module> rootModuleList = new ArrayList<Module>();
		// Step1 Get the root module
		Module rootModule = moduleService.getRootModule();

		if (rootModule != null) {
			rootModuleList.add(rootModule);
			// Step2 Get the child module layer by layer
			List<Module> childModuleListA = moduleService.getChildren(rootModule.getId());
			if (childModuleListA != null) {
				for (Module mA : childModuleListA) {
					if (ModuleTypeEnum.FOLDER.getCode().equals(mA.getType())) {
						setModuleChild(rootModule, mA);
						List<Module> childModuleListB = moduleService.getChildren(mA.getId());
						if (childModuleListB != null) {
							// Step3 Add the child module which in the
							// permission list to parent
							for (Module mB : childModuleListB) {
								if (ModuleTypeEnum.FOLDER.getCode().equals(mB.getType())) {
									setModuleChild(mA, mB);
									List<Module> childModuleListC = moduleService.getChildren(mB.getId());
									if (childModuleListC != null) {
										for (Module mC : childModuleListC) {
											if (moduleService.isModuleIn(mC, moduleList)) {
												setModuleChild(mB, mC);
											}
										}
										if (mB.getChildModules() == null || mB.getChildModules().size() == 0) {
											mA.getChildModules().remove(mB);
											//rootModule.getChildModules().remove(mA);
										}
									}
								} else if (ModuleTypeEnum.FUNCTION.getCode().equals(mB.getType())) {
									if (moduleService.isModuleIn(mB, moduleList)) {
										setModuleChild(mA, mB);
									}
								}
							}
							if (mA.getChildModules() == null || mA.getChildModules().size() == 0) {
								rootModule.getChildModules().remove(mA);
							}
						}
					} else if (ModuleTypeEnum.FUNCTION.getCode().equals(mA.getType())) {
						if (moduleService.isModuleIn(mA, moduleList)) {
							setModuleChild(rootModule, mA);
						}
					}
				}
			}
		}

		return rootModuleList;

	}

	private void setModuleChild(Module module, Module childModule) {
		List<Module> childList = module.getChildModules();
		if (childList != null) {
			childList.add(childModule);
		} else {
			List<Module> currModuleList = new ArrayList<Module>();
			currModuleList.add(childModule);
			module.setChildModules(currModuleList);
		}
	}

	public UserModulePermissionDTO getUserModulePermission(Integer userId, Integer moduleId) {
		UserModulePermissionDTO dto = new UserModulePermissionDTO();
		dto.setUserId(userId.toString());
		dto.setModuleId(moduleId.toString());

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userId", userId);
		params.put("moduleId", moduleId);
		List<UserPermissionDTO> userPermissionList = rolePermissionReadMapper.getUserModulePermission(params);
		if (userPermissionList != null && userPermissionList.size() > 0) {
			Integer permission = 0;
			for (UserPermissionDTO upDto : userPermissionList) {
				Integer rolePermission = upDto.getRolePermission();
				Integer modulePermission = upDto.getModulePermission();
				permission = rolePermission & modulePermission | permission;
			}

			ModuleFunction moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(moduleId);
			String permissionString = Privileges.getPrivilegesString(permission);
			for (int i = 0; i < permissionString.length(); i++) {
				char c = permissionString.charAt(i);
				if (c == '1') {
					String labelEn = moduleFunction.fetchLabelEn(i);
					String labelZh = moduleFunction.fetchLabelZh(i);
					if (!StringUtils.isEmpty(labelEn) || !StringUtils.isEmpty(labelZh)) {
						try {
							Method setMethod = UserModulePermissionDTO.class.getMethod("setLabelEn" + i, String.class);
							setMethod.invoke(dto, labelEn);
							setMethod = UserModulePermissionDTO.class.getMethod("setLabelZh" + i, String.class);
							setMethod.invoke(dto, labelZh);
							setMethod = UserModulePermissionDTO.class.getMethod("setP" + i, String.class);
							setMethod.invoke(dto, "1");
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
			}
		}
		return dto;
	}

	@Deprecated
	public int insert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Deprecated
	public Object get(Integer id) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Deprecated
	public void update(Object obj) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Deprecated
	public void delete(String ids) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Deprecated
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Deprecated
	public Boolean validate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Deprecated
	public Boolean validateForInsert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Deprecated
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Deprecated
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public List<Module> getUserModuleByUserId(Integer userId) {
		List<Module> userModuleList = moduleService.getUserModuleByUserId(userId);
		return userModuleList;
	}

	@Override
	public List<RolePermission> getRolePermissionsByRoleId(Integer roleId) {
		List<RolePermission> rolePermissionsList = rolePermissionReadMapper.getRoleModulesByRoleId(roleId);
		return rolePermissionsList;
	}

}
