package com.logic.system.persistence.write;

import com.logic.system.domain.Organization;

public interface OrganizationWriteMapper {

  int deleteByPrimaryKey(Organization record);

  int insertSelective(Organization record);

  int updateByPrimaryKeySelective(Organization record);

}
