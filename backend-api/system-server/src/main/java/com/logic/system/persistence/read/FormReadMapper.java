package com.logic.system.persistence.read;


import java.util.List;
import java.util.Map;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.ForJSTreeDTO;
import com.logic.common.ws.dto.system.FormDTO;
import com.logic.system.domain.Form;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.OrgForm;

public interface FormReadMapper {

  Form selectByPrimaryKey(Integer id);

  int checkFormExist(FormElement formElement);

  int checkCodeUnique(Form form);

  List<FormDTO> selectForms(QueryUtil queryUtil);

  List<FormDTO> selectAllForm();

  List<OrgForm> selectOrgForms(Integer formId);
  
  int selectSumPoint(Integer form_id);
  
  List<ForJSTreeDTO> getSectionsForJSTreeByFormId(Integer formId);
  
  ForJSTreeDTO getFormForJSTreeByFormId(Integer formId);

  Integer getElementCountByFormId(Integer formId);

  Form getFormByMachineTypeAndApplyType(Map<String, String> params);

  Form getFormByApplyType(String applyType);
}
