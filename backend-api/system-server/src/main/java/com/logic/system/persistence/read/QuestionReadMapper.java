package com.logic.system.persistence.read;


import com.logic.system.domain.OrgQuestion;
import com.logic.system.domain.Question;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.QuestionDTO;
import java.util.List;

public interface QuestionReadMapper {

  Question selectByPrimaryKey(Integer id);

  List<QuestionDTO> selectQuestions(QueryUtil queryUtil);

  int checkCodeUnique(Question question);

  List<OrgQuestion> selectOrgQuestions(Integer questionId);
}
