package com.logic.system.service;

import com.logic.system.domain.UserOrgHierarchy;

public interface IUserOrgHierarchyService {
	int insertSelective(UserOrgHierarchy userOrg);
	int cleanupOrgIds(Integer userId);
	int cleanupAll();
}
