package com.logic.system.persistence.write;

import com.logic.system.domain.PersonalInfo;

public interface PersonalInfoWriteMapper {

  int deleteByPrimaryKey(PersonalInfo record);

  int insertSelective(PersonalInfo record);

  int updateByPrimaryKeySelective(PersonalInfo record);

}
