package com.logic.system.service;


import com.logic.system.domain.ModuleFunction;
import com.logic.common.service.ICRUDService;

public interface IModuleFunctionService extends ICRUDService {

  public ModuleFunction getModuleFunctionByModuleId(Integer moduleId);

  public void deleteModuleFunctionByModuleId(Integer parseInt);

}
