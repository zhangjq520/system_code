package com.logic.system.persistence.write;

import com.logic.system.domain.FormResponseMaster;

public interface FormResponseMasterWriteMapper {

  int deleteByPrimaryKey(Integer id);

  int insertSelective(FormResponseMaster record);

  int updateByPrimaryKeySelective(FormResponseMaster record);

}
