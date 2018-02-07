package com.logic.system.persistence.write;

import com.logic.system.domain.QuestionReferenceItem;

public interface QuestionReferenceItemWriteMapper {

  int deleteByPrimaryKey(QuestionReferenceItem key);

  void deleteByQuestionId(Integer id);

  int insertSelective(QuestionReferenceItem record);
}
