package com.logic.system.service;


import com.logic.system.domain.FormSection;
import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;

import java.util.List;

public interface ISectionService extends ICRUDService {

  List<FormSection> selectByFormId(Integer formId) throws BusinessException;

}
