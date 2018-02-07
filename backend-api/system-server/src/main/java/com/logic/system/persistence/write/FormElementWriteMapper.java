package com.logic.system.persistence.write;

import com.logic.system.domain.FormElement;

import java.util.List;
import java.util.Map;

public interface FormElementWriteMapper {

  int deleteByPrimaryKey(FormElement record);

  int insertSelective(FormElement record);

  int updateByPrimaryKeySelective(FormElement record);

  void updateCorrectResponseById(Map<String, Object> map);

  int deleteByFormId(FormElement record);

  void insertBatch(List<FormElement> newFormElements);
}
