package com.logic.system.service.impl;


import com.logic.system.domain.QuestionCategory;
import com.logic.system.persistence.read.QuestionCategoryReadMapper;
import com.logic.system.persistence.write.QuestionCategoryWriteMapper;
import com.logic.system.service.IQuestionCategoryService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class QuestionCategoryService implements IQuestionCategoryService {

  @Autowired
  QuestionCategoryReadMapper questionCategoryReadMapper;

  @Autowired
  QuestionCategoryWriteMapper questionCategoryWriteMapper;

  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    QuestionCategory questionCategory = (QuestionCategory) obj;

    int result = 0;
    Boolean isValidForInsert = this.validateForInsert(questionCategory);
    if (isValidForInsert) {
      questionCategoryWriteMapper.insertSelective(questionCategory);
      result = 1;
    }
    return result;
  }

  public List<QuestionCategory> get(Integer id) throws BusinessException {
    List<QuestionCategory> categories = questionCategoryReadMapper.selectByQuestionId(id);
    return categories;
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      questionCategoryWriteMapper.deleteByQuestionId(Integer.valueOf(id));
    }
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {
    QuestionCategory questionCategory = (QuestionCategory) obj;
    Boolean ret = validate(questionCategory);
    return ret;
  }

  public Boolean validate(Object obj) throws BusinessException {
    QuestionCategory questionCategory = (QuestionCategory) obj;
    Boolean ret = false;

    if (questionCategory == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Category_Insert_Empty_Category);
    }
    if (questionCategory.getQuestionId() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Category_Insert_Empty_Question_ID);
    }
    if (StringUtils.isEmpty(questionCategory.getCategory())) {
      throw new BusinessException(ErrorMessageEnum.Question_Category_Insert_Empty_Category_ID);
    }
    ret = true;
    return ret;
  }

  @Deprecated
  public void update(Object obj) throws BusinessException {

  }

  @Deprecated
  public List<Object> query(QueryUtil queryUtil) {
    return null;
  }

  @Deprecated
  public Boolean validateForUpdate(Object obj) throws BusinessException {
    return true;
  }

  @Deprecated
  public Boolean validateForDelete(Object obj) throws BusinessException {
    return true;
  }

}
