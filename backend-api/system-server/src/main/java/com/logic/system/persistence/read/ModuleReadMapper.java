package com.logic.system.persistence.read;

import java.util.List;

import com.logic.common.ws.dto.system.ModuleForJSTreeDTO;
import com.logic.system.domain.Module;

public interface ModuleReadMapper {

  Module selectByPrimaryKey(Integer id);

  List<Module> getModuleList();

  List<Module> getChildren(Integer moduleId);

  Integer checkCodeUnique(Module module);
  
  List<ModuleForJSTreeDTO> getChildModulesForJSTree(Integer parentModuleId);

  ModuleForJSTreeDTO getModuleForJSTree(Integer moduleId);

  List<Module> getUserModuleByUserId(Integer userId);

}
