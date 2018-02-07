package com.logic.system.persistence.read;

import com.logic.system.domain.QuestionOptionalAnswer;

import java.util.List;

public interface QuestionOptionalAnswerReadMapper {

  QuestionOptionalAnswer selectByPrimaryKey(Integer id);

  List<QuestionOptionalAnswer> selectByQuestionId(Integer id);

}
