package com.logic.system.service;


import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.ForJSTreeDTO;
import com.logic.common.ws.dto.system.FormDTO;
import com.logic.system.domain.*;
import org.springframework.transaction.annotation.Transactional;

public interface IFormService extends ICRUDService {

  public List<FormDTO> selectAllForm();
  
  public int selectSumPoint(Integer form_id);
  
  public List<FormElement> getFormElementByFormId(Integer id);

  public List<FormStep> getFormStepByFormId(Integer id) ;
 
  public List<FormSection> getFormSectionByFormId(Integer id);

  //Integer cloneSectionWithRemovedEls(Integer formId, String code, Integer newFormId, List<FormElement> formElementsToRemove) throws BusinessException;

  @Transactional(rollbackFor = BusinessException.class)
  Integer createMiddleCheckForm(Integer needCheckFormId, String checkPhase, Task task) throws BusinessException;

  @Transactional(rollbackFor = BusinessException.class)
  Integer createDiagCheckForm(Integer needCheckFormId, Task task) throws BusinessException;

  @Transactional(rollbackFor = BusinessException.class)
  Integer createDiagCommitCheckForm(Integer needCheckFormId, Task task) throws BusinessException;

  @Transactional(rollbackFor = BusinessException.class)
  Integer createOverAllCheckForm(Integer needCheckFormId, Task task) throws BusinessException;

  List<ForJSTreeDTO> getSectionsForJSTreeByFormId(Integer formId);
	  
  ForJSTreeDTO getFormForJSTreeByFormId(Integer formId);

  public List<FormElement> getFormElementByFormIdAndSectionId(Integer id, Integer id2);

  //public Integer cloneSection(Integer formId, String code, Integer newFormId) throws BusinessException;

  Form getFormByMachineTypeAndApplyType(String machineType, String applyType);

  Form getFormByApplyType(String s);

  Integer createDiagCommitCheckFormForHelp(Integer formId, Task task) throws BusinessException;
}

