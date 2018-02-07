package com.logic.system.persistence.write;

import com.logic.system.domain.UserOrgHierarchy;

public interface UserOrgHierarchyWriteMapper {

    int insertSelective(UserOrgHierarchy record);
    
    int cleanupOrgIds(Integer userId);
    
    int cleanupAll();
}