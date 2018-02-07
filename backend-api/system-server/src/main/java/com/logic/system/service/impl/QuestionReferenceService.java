package com.logic.system.service.impl;

import com.logic.system.domain.QuestionReferenceItem;
import com.logic.system.persistence.read.QuestionReferenceItemReadMapper;
import com.logic.system.persistence.write.QuestionReferenceItemWriteMapper;
import com.logic.system.service.IQuestionReferenceService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class QuestionReferenceService implements IQuestionReferenceService {

  @Autowired
  QuestionReferenceItemReadMapper questionReferenceItemReadMapper;

  @Autowired
  QuestionReferenceItemWriteMapper questionReferenceItemWriteMapper;

  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    QuestionReferenceItem questionReferenceItem = (QuestionReferenceItem) obj;
    Boolean isValidForInsert = this.validateForInsert(questionReferenceItem);
    if (isValidForInsert) {
      questionReferenceItemWriteMapper.insertSelective(questionReferenceItem);
    }
    return questionReferenceItem.getReferenceItemId();
  }

  public List<QuestionReferenceItem> get(Integer id) throws BusinessException {
    List<QuestionReferenceItem> items = questionReferenceItemReadMapper.selectByQuestionId(id);
    return items;
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      questionReferenceItemWriteMapper.deleteByQuestionId(Integer.valueOf(id));
    }
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {
    QuestionReferenceItem questionReferenceItem = (QuestionReferenceItem) obj;
    Boolean ret = validate(questionReferenceItem);
    return ret;
  }

  public Boolean validate(Object obj) throws BusinessException {
    QuestionReferenceItem questionReferenceItem = (QuestionReferenceItem) obj;
    Boolean ret = false;

    if (questionReferenceItem == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Reference_Insert_Empty_Reference);
    }
    if (questionReferenceItem.getQuestionId() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Reference_Insert_Empty_Question_ID);
    }
    if (questionReferenceItem.getReferenceItemId() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Reference_Insert_Empty_Reference_ID);
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
