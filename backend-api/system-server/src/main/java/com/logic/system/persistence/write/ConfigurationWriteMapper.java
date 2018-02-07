package com.logic.system.persistence.write;


import com.logic.system.domain.Configuration;

public interface ConfigurationWriteMapper {

  int deleteByPrimaryKey(String keyName);

  int insertSelective(Configuration record);

  int updateByPrimaryKeySelective(Configuration record);

}
