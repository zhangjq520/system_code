package com.logic.system.persistence.read;

import com.logic.system.domain.QuestionReferenceItem;

import java.util.List;

public interface QuestionReferenceItemReadMapper {

  List<QuestionReferenceItem> selectByQuestionId(Integer id);
}
