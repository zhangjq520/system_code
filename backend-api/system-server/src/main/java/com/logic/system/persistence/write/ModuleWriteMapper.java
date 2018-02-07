package com.logic.system.persistence.write;

import com.logic.system.domain.Module;

public interface ModuleWriteMapper {

  int deleteByPrimaryKey(Module record);

  int insertSelective(Module record);

  int updateByPrimaryKeySelective(Module record);

}
