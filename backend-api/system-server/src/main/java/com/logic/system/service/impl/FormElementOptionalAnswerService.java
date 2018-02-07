package com.logic.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.FormElementOptionalAnswer;
import com.logic.system.persistence.read.FormElementOptionalAnswerReadMapper;
import com.logic.system.persistence.write.FormElementOptionalAnswerWriteMapper;
import com.logic.system.service.IFormElementOptionalAnswerService;

@Service
public class FormElementOptionalAnswerService implements IFormElementOptionalAnswerService {

  @Autowired
  private FormElementOptionalAnswerReadMapper formOptionalAnswerReadMapper;

  @Autowired
  private FormElementOptionalAnswerWriteMapper formOptionalAnswerWriteMapper;

  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    FormElementOptionalAnswer answer = (FormElementOptionalAnswer) obj;
    Boolean isValidForInsert = this.validateForInsert(answer);
    if (isValidForInsert) {
      formOptionalAnswerWriteMapper.insertSelective(answer);
    }
    return answer.getId();
  }

  @Override
  public List<FormElementOptionalAnswer> get(Integer id) {
    List<FormElementOptionalAnswer> answers = formOptionalAnswerReadMapper.selectByFormElementId(id);
    return answers;
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      FormElementOptionalAnswer record = new FormElementOptionalAnswer();
      record.setFormElementId(Integer.valueOf(id));
      record.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

      formOptionalAnswerWriteMapper.deleteByElementId(record);
    }
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {

    FormElementOptionalAnswer answer = (FormElementOptionalAnswer) obj;
    Boolean ret = validate(answer);
    return ret;
  }

  public Boolean validate(Object obj) throws BusinessException {
    FormElementOptionalAnswer answer = (FormElementOptionalAnswer) obj;
    Boolean ret = false;

    if (answer == null) {
      throw new BusinessException(ErrorMessageEnum.Form_Optional_Answer_Insert_Empty_Question_Optional_Answer);
    }
    if (answer.getFormElementId() == null) {
      throw new BusinessException(ErrorMessageEnum.Form_Optional_Answer_Insert_Empty_Question_ID);
    }
    if (StringUtils.isEmpty(answer.getAnswerSeq())) {
      throw new BusinessException(ErrorMessageEnum.Form_Optional_Answer_Insert_Empty_Answer_Sequence);
    }
    if (StringUtils.isEmpty(answer.getAnswerText())) {
      throw new BusinessException(ErrorMessageEnum.Form_Optional_Answer_Insert_Empty_Answer_Text);
    }
    ret = true;
    return ret;
  }

  @Override
  public List<FormElementOptionalAnswer> selectByFormId(Integer formId) {
    // TODO Auto-generated method stub
    return formOptionalAnswerReadMapper.selectByFormId(formId);
  }

@Override
public void update(Object obj) throws BusinessException {
	// TODO Auto-generated method stub
	
}

@Override
public List<Object> query(QueryUtil queryUtil) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Boolean validateForUpdate(Object obj) throws BusinessException {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Boolean validateForDelete(Object obj) throws BusinessException {
	// TODO Auto-generated method stub
	return null;
}



}
