package com.logic.system.persistence.write;

import com.logic.system.domain.OrgQuestion;
import com.logic.system.domain.Question;

import java.util.List;
import java.util.Map;

public interface QuestionWriteMapper {

  int deleteByPrimaryKey(Question record);

  int insertSelective(Question record);

  int updateByPrimaryKeySelective(Question record);

  void updateCorrectResponseById(Map<String, Object> map);

  int insertOrgQuestions(List<OrgQuestion> orgQuestions);

  int deleteOrgQuestions(Integer questionId);

}
