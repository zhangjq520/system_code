package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.UserNotifyConfig;

public interface IUserNotifyConfigService extends ICRUDService {
	
	UserNotifyConfig[] getUserNotifyConfigs(Integer userId) throws BusinessException;

}
