package com.logic.system.service.impl;

import com.logic.system.domain.QuestionOptionalAnswer;
import com.logic.system.persistence.read.QuestionOptionalAnswerReadMapper;
import com.logic.system.persistence.write.QuestionOptionalAnswerWriteMapper;
import com.logic.system.service.IQuestionOptionalAnswerService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class QuestionOptionalAnswerService implements IQuestionOptionalAnswerService {

  @Autowired
  QuestionOptionalAnswerReadMapper questionOptionalAnswerReadMapper;

  @Autowired
  QuestionOptionalAnswerWriteMapper questionOptionalAnswerWriteMapper;

  @Autowired
  private HttpServletRequest request;

  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    QuestionOptionalAnswer questionOptionalAnswer = (QuestionOptionalAnswer) obj;
    Boolean isValidForInsert = this.validateForInsert(questionOptionalAnswer);
    if (isValidForInsert) {
      questionOptionalAnswer.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      questionOptionalAnswerWriteMapper.insertSelective(questionOptionalAnswer);
    }
    return questionOptionalAnswer.getId();
  }

  public List<QuestionOptionalAnswer> get(Integer id) throws BusinessException {
    List<QuestionOptionalAnswer> answers = questionOptionalAnswerReadMapper.selectByQuestionId(id);
    return answers;
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      QuestionOptionalAnswer record = new QuestionOptionalAnswer();
      record.setQuestionId(Integer.valueOf(id));
      record.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      questionOptionalAnswerWriteMapper.deleteByQuestionId(record);
    }
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {
    QuestionOptionalAnswer questionOptionalAnswer = (QuestionOptionalAnswer) obj;
    Boolean ret = validate(questionOptionalAnswer);
    return ret;
  }

  public Boolean validate(Object obj) throws BusinessException {
    QuestionOptionalAnswer questionOptionalAnswer = (QuestionOptionalAnswer) obj;
    Boolean ret = false;

    if (questionOptionalAnswer == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Optional_Answer_Insert_Empty_Question_Optional_Answer);
    }
    if (questionOptionalAnswer.getQuestionId() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Optional_Answer_Insert_Empty_Question_ID);
    }
    if (StringUtils.isEmpty(questionOptionalAnswer.getAnswerSeq())) {
      throw new BusinessException(ErrorMessageEnum.Question_Optional_Answer_Insert_Empty_Answer_Sequence);
    }
    if (StringUtils.isEmpty(questionOptionalAnswer.getAnswerText())) {
      throw new BusinessException(ErrorMessageEnum.Question_Optional_Answer_Insert_Empty_Answer_Text);
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
