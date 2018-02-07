package com.logic.system.persistence.read;

import java.util.List;

import com.logic.system.domain.FormStep;

public interface FormStepReadMapper {

  FormStep selectByPrimaryKey(Integer id);

List<FormStep> getByFormId(Integer formId);

}
