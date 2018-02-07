package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.OrgProfile;
import com.logic.system.persistence.read.OrgProfileReadMapper;
import com.logic.system.persistence.write.OrgProfileWriteMapper;
import com.logic.system.service.IOrgProfile;
import com.logic.system.ws.dto.OrgProfileDTO;



@Service
public class OrgProfileService implements IOrgProfile{
	
	@Autowired
	private OrgProfileWriteMapper orgProfileWriteMapper;
	
	@Autowired
	private OrgProfileReadMapper orgProfileReadMapper;	
	
	@Override
	public int insert(Object obj) throws BusinessException {
		int orgProfileInt = -1;
		if (validateForInsert(obj)) {
			OrgProfile orgProfile = (OrgProfile)obj;
			orgProfile.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			orgProfileWriteMapper.insertSelective(orgProfile);
			orgProfileInt = orgProfile.getId();			
		}
		return orgProfileInt;
	}

	@Override
	public OrgProfile get(Integer id) throws BusinessException {
		OrgProfile org = orgProfileReadMapper.selectByPrimaryKey(id);
		   return org;
	}
	
	
	@Override
	public void update(Object obj) throws BusinessException {
		OrgProfile org = (OrgProfile) obj;
	    
		org.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
	    	  
		orgProfileWriteMapper.updateByPrimaryKeySelective(org);
	     
		
	}

	@Override
	public void delete(String id) throws BusinessException {
		
	   
	    	OrgProfile org =  getByOrgId(Integer.valueOf(id));
	      if (org == null) {
	        throw new BusinessException(ErrorMessageEnum.OrgProfile_Delete_Not_Exist, Integer.valueOf(id));
	      }
	     

	      orgProfileWriteMapper.deleteByPrimaryKey(org);
		
	}


	@Override
	public List<Object> query(QueryUtil queryUtil) {
		List<Object> list = new ArrayList<Object>();
	    List<OrgProfileDTO> orgProfileDtos = orgProfileReadMapper.getOrgProfile(queryUtil);
	    if (orgProfileDtos != null) {
	      for (OrgProfileDTO pojo : orgProfileDtos) {
	        list.add(pojo);
	      }
	    }
	    System.out.println(list);
	    return list;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		boolean retValue = false;
		OrgProfile orgProfile = null;
		if (obj != null) {
			orgProfile = (OrgProfile) obj;
			if (orgProfile.getId() == null) {
				retValue = true;
			} else {
				throw new BusinessException("The orgProfile ID should be empty for insert.");
			}
		}
		return Boolean.valueOf(retValue);
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
	  return null;
	}
	
	@Override
	public OrgProfile getByOrgId(Integer orgId){
		OrgProfile org = orgProfileReadMapper.selectByOrgId(orgId);
		return org;
	}

}
