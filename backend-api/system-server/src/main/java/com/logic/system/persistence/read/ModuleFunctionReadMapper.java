package com.logic.system.persistence.read;

import com.logic.system.domain.ModuleFunction;

public interface ModuleFunctionReadMapper {

  ModuleFunction selectByPrimaryKey(Integer id);

  ModuleFunction getModuleFunctionByModuleId(Integer moduleId);

}
