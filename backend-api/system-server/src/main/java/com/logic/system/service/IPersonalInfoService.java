package com.logic.system.service;


import com.logic.system.domain.PersonalInfo;
import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;

public interface IPersonalInfoService extends ICRUDService {

  void deletePersonalInfo(PersonalInfo personalInfo) throws BusinessException;

}
