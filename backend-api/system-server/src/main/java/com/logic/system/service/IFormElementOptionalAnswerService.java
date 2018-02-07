package com.logic.system.service;

import com.logic.system.domain.FormElementOptionalAnswer;
import com.logic.common.service.ICRUDService;

import java.util.List;

public interface IFormElementOptionalAnswerService extends ICRUDService {

  List<FormElementOptionalAnswer> selectByFormId(Integer formId);
  
  public List<FormElementOptionalAnswer> get(Integer id);

}
