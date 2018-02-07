package com.logic.system.persistence.read;

import java.util.List;
import java.util.Map;

import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormResponseMaster;

public interface FormResponseMasterReadMapper {

  FormResponseMaster selectByPrimaryKey(Integer id);

  //FormResponseMaster getByFormIdAndUserIdAndTaskId(Map<String, Integer> parameterMap);

  FormResponseMaster getByFormIdAndTaskId(Map<String, Integer> parameterMap);

  FormResponseMaster getByFormId(Integer formId);
}
