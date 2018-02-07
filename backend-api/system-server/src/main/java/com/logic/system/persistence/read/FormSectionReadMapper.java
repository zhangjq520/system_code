package com.logic.system.persistence.read;



import java.util.List;
import java.util.Map;

import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormSection;

public interface FormSectionReadMapper {

  FormSection selectByPrimaryKey(Integer id);

  Integer selectMaxSequence(Integer formId);

  List<FormSection> selectByFormId(Integer formId);

  int checkFormSectionExist(FormElement formElement);

  FormSection getSectionByFormIdAndCode(Map<String,String> params);
  
  /***
   * 通过formIdable获取section列表
   * @param formId
   * 	表单Id
   * @return
   */
  List<FormSection> getSectionListByFormId(Integer formId);
}
