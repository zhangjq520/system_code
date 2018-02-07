package com.logic.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.UserNotifyConfig;
import com.logic.system.persistence.read.UserNotifyConfigReadMapper;
import com.logic.system.persistence.write.UserNotifyConfigWriteMapper;
import com.logic.system.service.IUserNotifyConfigService;

@Service
public class UserNotifyConfigService implements IUserNotifyConfigService{

	@Autowired
	private UserNotifyConfigReadMapper readMapper;
	
	@Autowired
	private UserNotifyConfigWriteMapper writeMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
		int result = 0;
		
		if(validateForInsert(obj)){
			UserNotifyConfig config = (UserNotifyConfig) obj;
			config.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			result = writeMapper.insertSelective(config);
		}
		
		return result;
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		return readMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		if(this.validateForUpdate(obj)) {
			UserNotifyConfig config = (UserNotifyConfig) obj;
			config.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			writeMapper.updateByPrimaryKeySelective(config);
		}		
	}

	@Override
	public void delete(String ids) throws BusinessException {
		if(ids!=null && ids.length() > 0){
			if(ids.contains(",")){
				//nothing to do here, since it only support single deletion
			} else {
				Integer configId = Integer.parseInt(ids);
				writeMapper.deleteByPrimaryKey(configId);
			}
		}				
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		Boolean result = true;
		
		if(obj!=null){
			UserNotifyConfig config = (UserNotifyConfig) obj;
			if(config!=null) {
				if(config.getId()!=null && config.getId() > 0){
					throw new BusinessException(ErrorMessageEnum.User_NotifyConfig_ID_Not_NULL);
				}
				
				if(config.getUserId() == null || (config.getUserId()!=null && config.getUserId()<= 0)){
					throw new BusinessException(ErrorMessageEnum.User_NotifyConfig_UserID_IS_NULL);
				}
			}
		}
		
		return result;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		Boolean result = true;
		
		if(obj!=null){
			UserNotifyConfig config = (UserNotifyConfig) obj;
			if(config!=null){
				if(config.getId()== null || (config.getId()!=null && config.getId()<=0)){
					throw new BusinessException(ErrorMessageEnum.User_NotifyConfig_ID_IS_NULL);
				}				
			}
		}		
		
		return result;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		return null;		
	}

	@Override
	public UserNotifyConfig[] getUserNotifyConfigs(Integer userId) throws BusinessException {
		UserNotifyConfig[] configs = null;
		if(userId!=null && userId > 0) {
			configs = readMapper.selectByUserId(userId);
		}
		
		return configs;
	}

}
