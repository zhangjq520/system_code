package com.logic.system.persistence.write;

import com.logic.system.domain.SystemFile;

public interface FileWriteMapper {

  int deleteByPrimaryKey(SystemFile record);

  int insertSelective(SystemFile record);

  int updateByPrimaryKeySelective(SystemFile record);

}
