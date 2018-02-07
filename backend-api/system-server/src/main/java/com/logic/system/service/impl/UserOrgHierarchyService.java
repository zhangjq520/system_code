package com.logic.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.system.domain.UserOrgHierarchy;
import com.logic.system.persistence.write.UserOrgHierarchyWriteMapper;
import com.logic.system.service.IUserOrgHierarchyService;

@Service
public class UserOrgHierarchyService implements IUserOrgHierarchyService {
	
	@Autowired
	private UserOrgHierarchyWriteMapper writeMapper;

	@Override
	public int insertSelective(UserOrgHierarchy userOrg) {
		int res = 0;
		
		if(userOrg!=null && userOrg.getOrgId() !=null && userOrg.getUserId()!=null){
			res = writeMapper.insertSelective(userOrg);
		}
		
		return res;
	}

	@Override
	public int cleanupOrgIds(Integer userId) {
		return writeMapper.cleanupOrgIds(userId);
	}

	@Override
	public int cleanupAll() {
		// TODO Auto-generated method stub
		return writeMapper.cleanupAll();
	}
}
