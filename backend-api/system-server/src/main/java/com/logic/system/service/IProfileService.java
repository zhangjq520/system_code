package com.logic.system.service;


import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.MyProfileInfoDTO;

public interface IProfileService extends ICRUDService {

  public MyProfileInfoDTO getMyProfileInfo();

  public void changePwd(Object obj) throws BusinessException;

}
