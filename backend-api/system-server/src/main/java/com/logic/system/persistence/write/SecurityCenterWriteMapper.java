package com.logic.system.persistence.write;

import com.logic.system.domain.SecurityCenter;

public interface SecurityCenterWriteMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(SecurityCenter record);

    int insertSelective(SecurityCenter record);

    int updateByPrimaryKeySelective(SecurityCenter record);

    int updateByPrimaryKey(SecurityCenter record);
}