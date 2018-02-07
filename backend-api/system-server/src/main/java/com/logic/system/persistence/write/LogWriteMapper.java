package com.logic.system.persistence.write;

import com.logic.system.domain.Log;

public interface LogWriteMapper {

  // int deleteByPrimaryKey(Integer id);

  int insertSelective(Log record);

}
