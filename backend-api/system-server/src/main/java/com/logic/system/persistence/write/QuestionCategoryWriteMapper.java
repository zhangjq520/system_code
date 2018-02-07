package com.logic.system.persistence.write;

import com.logic.system.domain.QuestionCategory;

public interface QuestionCategoryWriteMapper {

  // int deleteByPrimaryKey(QuestionCategory key);

  void deleteByQuestionId(Integer id);

  int insertSelective(QuestionCategory record);
}
