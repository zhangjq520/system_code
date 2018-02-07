package com.logic.system.persistence.write;

import com.logic.system.domain.ModuleFunction;

public interface ModuleFunctionWriteMapper {

  int deleteByPrimaryKey(ModuleFunction record);

  int insertSelective(ModuleFunction record);

  int updateByPrimaryKeySelective(ModuleFunction record);

  int deleteModuleFunctionByModuleId(ModuleFunction record);

}
