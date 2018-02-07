package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.ModuleTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.ModuleForJSTreeDTO;
import com.logic.system.domain.Module;
import com.logic.system.domain.ModuleFunction;
import com.logic.system.persistence.read.ModuleReadMapper;
import com.logic.system.persistence.write.ModuleWriteMapper;
import com.logic.system.service.IModuleFunctionService;
import com.logic.system.service.IModuleService;
import com.logic.system.service.IPermissionService;

@Service
public class ModuleService implements IModuleService {

	@Autowired
	private ModuleReadMapper moduleReadMapper;

	@Autowired
	private ModuleWriteMapper moduleWriteMapper;

	@Autowired
	private IModuleFunctionService moduleFunctionService;

	@Autowired
	private IPermissionService permissionService;

	public List<Module> getModuleList() {
		return moduleReadMapper.getModuleList();
	}

	/**
	 * Get the root module, the root module means the parent module is null.
	 * 
	 * @return
	 * @TODO
	 */
	@Override
	public Module getRootModule() {
		Module module = moduleReadMapper.selectByPrimaryKey(1);
		return module;
	}

	@Override
	public boolean isModuleIn(Module module, List<Module> moduleList) {
		boolean ret = false;
		List<Integer> ids = new ArrayList<Integer>();
		Integer moduleId = module.getId();
		for (Module m : moduleList) {
			ids.add(m.getId());
		}
		if (ids.contains(moduleId)) {
			ret = true;
		}
		return ret;
	}

	public Module get(Integer moduleId) {
		Module module = moduleReadMapper.selectByPrimaryKey(moduleId);
		if (module != null) {
			ModuleFunction moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(moduleId);
			module.setModuleFunction(moduleFunction);
		}
		return module;
	}

	public List<Module> getChildren(Integer moduleId) {
		return moduleReadMapper.getChildren(moduleId);
	}

	public Integer insertFolder(Module module) throws BusinessException {
		Boolean isValid = this.validateForInsert(module);
		if (isValid) {
			module.setType(ModuleTypeEnum.FOLDER.getCode());
			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			moduleWriteMapper.insertSelective(module);
		}
		return module.getId();
	}

	public void updateFolder(Module module) throws BusinessException {
		Boolean isValid = this.validateForUpdate(module);
		if (isValid) {
			module.setType(ModuleTypeEnum.FOLDER.getCode());
			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			moduleWriteMapper.updateByPrimaryKeySelective(module);
		}
	}

	public Integer insertFunction(Module module) throws BusinessException {
		Boolean isValid = this.validateForInsert(module);
		if (isValid) {
			module.setType(ModuleTypeEnum.FUNCTION.getCode());
			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			moduleWriteMapper.insertSelective(module);

			ModuleFunction moduleFunction = module.getModuleFunction();
			if (moduleFunction != null) {
				moduleFunction.setModuleId(module.getId());
				moduleFunctionService.insert(moduleFunction);
			} else {
				moduleFunction = new ModuleFunction();
				moduleFunction.setModuleId(module.getId());
				moduleFunctionService.insert(moduleFunction);
			}

			Integer permission = moduleFunction.generatePermission();
			module.setPermissionString(permission);
			moduleWriteMapper.updateByPrimaryKeySelective(module);
		}
		return module.getId();
	}

	public void updateFunction(Module module) throws BusinessException {
		Boolean isValid = this.validateForUpdate(module);
		if (isValid) {
			ModuleFunction moduleFunction = module.getModuleFunction();
			if (moduleFunction != null) {
				moduleFunction.setModuleId(module.getId());
				moduleFunctionService.update(moduleFunction);
			}

			moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(module.getId());
			if (moduleFunction != null) {
				Integer permission = moduleFunction.generatePermission();
				module.setPermissionString(permission);
			}
			module.setType(ModuleTypeEnum.FUNCTION.getCode());
			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			moduleWriteMapper.updateByPrimaryKeySelective(module);

		}
	}

	public Integer insertSubFunction(Module module) throws BusinessException {
		Boolean isValid = this.validateForInsert(module);
		if (isValid) {
			module.setType(ModuleTypeEnum.SUB_FUNCTION.getCode());
			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			moduleWriteMapper.insertSelective(module);

			ModuleFunction moduleFunction = module.getModuleFunction();
			if (moduleFunction != null) {
				moduleFunction.setModuleId(module.getId());
				moduleFunctionService.insert(moduleFunction);
			} else {
				moduleFunction = new ModuleFunction();
				moduleFunction.setModuleId(module.getId());
				moduleFunctionService.insert(moduleFunction);
			}

			Integer permission = moduleFunction.generatePermission();
			module.setPermissionString(permission);
			moduleWriteMapper.updateByPrimaryKeySelective(module);
		}
		return module.getId();
	}

	public void updateSubFunction(Module module) throws BusinessException {
		Boolean isValid = this.validateForUpdate(module);
		if (isValid) {
			ModuleFunction moduleFunction = module.getModuleFunction();
			if (moduleFunction != null) {
				moduleFunction.setModuleId(module.getId());
				moduleFunctionService.update(moduleFunction);
			}

			moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(module.getId());
			if (moduleFunction != null) {
				Integer permission = moduleFunction.generatePermission();
				module.setPermissionString(permission);
			}
			module.setType(ModuleTypeEnum.SUB_FUNCTION.getCode());
			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			moduleWriteMapper.updateByPrimaryKeySelective(module);
		}
	}

	public void delete(String ids) throws BusinessException {
		String[] idArr = ids.split(",");
		for (String id : idArr) {
			Module module = get(Integer.parseInt(id));
			if (module == null) {
				throw new BusinessException(ErrorMessageEnum.Module_DeleteModule_Module_Not_Exist,
						Integer.parseInt(id));
			}
			List<Module> childModuleList = moduleReadMapper.getChildren(Integer.parseInt(id));
			if (childModuleList != null && childModuleList.size() > 0) {
				throw new BusinessException(ErrorMessageEnum.Module_DeleteModule_Need_Delete_Children,
						Integer.parseInt(id));
			}

			permissionService.deleteRolePermissionByModuleId(Integer.valueOf(id));
			moduleFunctionService.deleteModuleFunctionByModuleId(Integer.valueOf(id));

			module.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		}
	}

	public Boolean validateForInsert(Object obj) throws BusinessException {
		Module module = (Module) obj;
		Boolean ret = validate(module);

		if (null != module.getId()) {
			throw new BusinessException(ErrorMessageEnum.Module_CreateFolder_ID_Not_Empty);
		}

		if (StringUtils.isEmpty(module.getCode())) {
			throw new BusinessException(ErrorMessageEnum.Module_CreateFolder_Empty_Code_Object);
		}

		if (StringUtils.isEmpty(module.getType())) {
			throw new BusinessException(ErrorMessageEnum.Module_CreateFolder_Empty_Type);
		}

		if (StringUtils.isEmpty(module.getNameEn())) {
			throw new BusinessException(ErrorMessageEnum.Module_CreateFolder_Empty_NameEn);
		}

		Integer count = moduleReadMapper.checkCodeUnique(module);
		if (count > 0) {
			throw new BusinessException(ErrorMessageEnum.Module_CreateFolder_Code_Already_Exist, module.getCode());
		}

		ret = true;
		return ret;
	}

	public Boolean validateForUpdate(Object obj) throws BusinessException {

		Module module = (Module) obj;
		Boolean ret = validate(module);

		if (module.getId() == null) {
			throw new BusinessException(ErrorMessageEnum.Module_UpdateFolder_Empty_ID);
		} else {
			Module existModule = get(module.getId());
			if (existModule == null) {
				throw new BusinessException(ErrorMessageEnum.Module_UpdateFolder_Module_Not_Exist, module.getId());
			}
		}

		if (null != module.getCode() && StringUtils.isEmpty(module.getCode())) {
			throw new BusinessException(ErrorMessageEnum.Module_UpdateFolder_Empty_Code);
		}

		if (null != module.getCode() && !StringUtils.isEmpty(module.getCode())) {
			Integer count = moduleReadMapper.checkCodeUnique(module);
			if (count > 0) {
				throw new BusinessException(ErrorMessageEnum.Module_UpdateFolder_Code_Already_Exist, module.getCode());
			}
		}

		if (null != module.getType() && StringUtils.isEmpty(module.getType())) {
			throw new BusinessException(ErrorMessageEnum.Module_UpdateFolder_Empty_Type);
		}

		if (null != module.getNameEn() && StringUtils.isEmpty(module.getNameEn())) {
			throw new BusinessException(ErrorMessageEnum.Module_UpdateFolder_Empty_NameEn);
		}

		ret = true;
		return ret;
	}

	public Module getModuleById(Integer moduleId) {
		Module module = moduleReadMapper.selectByPrimaryKey(moduleId);
		return module;
	}

	@Override
	public int insert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Object obj) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {

		Module module = (Module) obj;
		Boolean ret = false;
		if (module == null) {
			throw new BusinessException(ErrorMessageEnum.Module_Insert_Or_Update_Empty_Module_Object);
		}

		Integer parentId = module.getParentId();

		if (null != parentId && StringUtils.isEmpty(parentId.toString())) {
			throw new BusinessException(ErrorMessageEnum.Module_Insert_Or_Update_Empty_Parend_ID);
		}

		if (parentId != null && !StringUtils.isEmpty(parentId.toString())) {
			Module parentModule = get(parentId);
			if (parentModule == null) {
				throw new BusinessException(ErrorMessageEnum.Module_Insert_Or_Update_Parent_Module_Not_Exist);
			}
		}

		ret = true;
		return ret;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public List<ModuleForJSTreeDTO> getChildModulesForJSTree(Integer parentModuleId) {
		return moduleReadMapper.getChildModulesForJSTree(parentModuleId);
	}

	@Override
	public ModuleForJSTreeDTO getModuleForJSTree(Integer moduleId) {
		return moduleReadMapper.getModuleForJSTree(moduleId);
	}

	@Override
	public List<Module> getUserModuleByUserId(Integer userId) {
		List<Module> userModuleList = moduleReadMapper.getUserModuleByUserId(userId);
		return userModuleList;
	}
}
