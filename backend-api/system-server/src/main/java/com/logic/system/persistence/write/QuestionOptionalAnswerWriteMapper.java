package com.logic.system.persistence.write;

import com.logic.system.domain.QuestionOptionalAnswer;

public interface QuestionOptionalAnswerWriteMapper {

  int deleteByPrimaryKey(QuestionOptionalAnswer record);

  void deleteByQuestionId(QuestionOptionalAnswer record);

  void deletePhysicallyByQuestionId(Integer id);

  int insertSelective(QuestionOptionalAnswer record);

  int updateByPrimaryKeySelective(QuestionOptionalAnswer record);

}
