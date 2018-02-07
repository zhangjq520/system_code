package com.logic.system.persistence.read;



import com.logic.system.domain.FormElementOptionalAnswer;

import java.util.List;

public interface FormElementOptionalAnswerReadMapper {

  FormElementOptionalAnswer selectByPrimaryKey(Integer id);

  List<FormElementOptionalAnswer> selectByFormElementId(Integer id);

  List<FormElementOptionalAnswer> selectByFormId(Integer formId);

}
