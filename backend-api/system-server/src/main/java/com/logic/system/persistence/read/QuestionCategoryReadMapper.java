package com.logic.system.persistence.read;

import com.logic.system.domain.QuestionCategory;

import java.util.List;

public interface QuestionCategoryReadMapper {

  List<QuestionCategory> selectByQuestionId(Integer id);
}
