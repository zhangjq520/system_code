package com.logic.system.persistence.write;

import com.logic.system.domain.OrgProfile;

public interface OrgProfileWriteMapper {
	int deleteByPrimaryKey(OrgProfile org);
	
    int insertSelective(OrgProfile record);

    int updateByPrimaryKeySelective(OrgProfile record);
}
