package com.logic.system.service;

import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.ModuleForJSTreeDTO;
import com.logic.system.domain.Module;

public interface IModuleService extends ICRUDService {

	public Integer insertFolder(Module module) throws BusinessException;

	public Integer insertFunction(Module module) throws BusinessException;

	public Integer insertSubFunction(Module module) throws BusinessException;

	public List<Module> getChildren(Integer moduleId) throws BusinessException;

	public void updateFolder(Module module) throws BusinessException;

	public void updateFunction(Module module) throws BusinessException;

	public void updateSubFunction(Module module) throws BusinessException;

	public List<Module> getModuleList();

	public Module getModuleById(Integer moduleId);

	public Module getRootModule();

	public boolean isModuleIn(Module module, List<Module> moduleList);

	public List<ModuleForJSTreeDTO> getChildModulesForJSTree(Integer parentModuleId);

	public ModuleForJSTreeDTO getModuleForJSTree(Integer moduleId);

	public List<Module> getUserModuleByUserId(Integer userId);

}
