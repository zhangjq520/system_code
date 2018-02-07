package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;

import java.util.List;
import java.util.Map;

public interface IQuestionService extends ICRUDService {

  /**
   * initialize form data
   * 
   * @return
   */
  public Map<String, Object> initFormData();

  /**
   * query reference item
   * 
   * @param queryUtil
   * @return
   */
  public List<Object> queryReferenceItem(QueryUtil queryUtil);

}
