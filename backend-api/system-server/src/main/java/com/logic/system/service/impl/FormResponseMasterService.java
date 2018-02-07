package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.domain.FormResponseMaster;
import com.logic.system.domain.TaskForm;
import com.logic.system.persistence.read.FormElementReadMapper;
import com.logic.system.persistence.read.FormResponseDetailReadMapper;
import com.logic.system.persistence.read.FormResponseMasterReadMapper;
import com.logic.system.persistence.read.TaskFormReadMapper;
import com.logic.system.persistence.write.FormResponseMasterWriteMapper;
import com.logic.system.service.IFormResponseMasterService;
import com.logic.system.ws.dto.FormDetailDTO;

@Service
public class FormResponseMasterService implements IFormResponseMasterService {

  private static final Logger logger = LoggerFactory.getLogger(FormResponseMasterService.class);

  @Autowired
  private FormResponseMasterReadMapper responseMasterReadMapper;

  @Autowired
  private FormResponseMasterWriteMapper responseMasterWriteMapper;

  @Autowired
  private FormResponseDetailReadMapper responseDetailReadMapper;

  @Autowired
  private TaskFormReadMapper taskFormReadMapper;

  @Autowired
  private FormElementReadMapper formElementReadMapper;

  @Override
  public int insert(Object obj) throws BusinessException {
    FormResponseMaster responseMaster = (FormResponseMaster) obj;

    Boolean isValidateForInsert = this.validateForInsert(responseMaster);
    if (isValidateForInsert) {
      //responseMaster.setUserId(SecurityUtils.getCurrentLogin().getUserId());
      responseMaster.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      responseMasterWriteMapper.insertSelective(responseMaster);
    }

    logger.info("Add response master id : " + responseMaster.getId());
    return responseMaster.getId();
  }

  @Override
  public Object get(Integer id) throws BusinessException {
    FormResponseMaster responseMaster = responseMasterReadMapper.selectByPrimaryKey(id);

    if (responseMaster != null) {
      List<FormResponseDetail> responseDetailList = getResponseList(id);
      responseMaster.setResponseDetailList(responseDetailList);
    }

    return responseMaster;
  }

  @Override
  public void update(Object obj) throws BusinessException {
    FormResponseMaster master = (FormResponseMaster)obj;
    if(validateForUpdate(master)){
      responseMasterWriteMapper.updateByPrimaryKeySelective(master);
    }
  }

  @Override
  @Deprecated
  public void delete(String ids) throws BusinessException {

  }

  @Override
  @Deprecated
  public List<Object> query(QueryUtil queryUtil) {
    return null;
  }

  @Override
  public Boolean validate(Object obj) throws BusinessException {
    FormResponseMaster responseMaster = (FormResponseMaster) obj;

    boolean ret = false;

    if (obj == null) {
      throw new BusinessException(ErrorMessageEnum.Form_Response_Master_Empty_Object);
    }

    if (responseMaster.getFormId() == null) {
      throw new BusinessException(ErrorMessageEnum.Form_Response_Master_Empty_Form_ID);
    }

    ret = true;
    return ret;
  }

  @Override
  public Boolean validateForInsert(Object obj) throws BusinessException {
    Boolean ret = validate(obj);

    return ret;
  }

  @Override
  public Boolean validateForUpdate(Object obj) throws BusinessException {

    return true;
  }

  @Override
  @Deprecated
  public Boolean validateForDelete(Object obj) throws BusinessException {
    return true;
  }

  @Override
  public List<FormResponseDetail> getResponseList(Integer responseMasterId) {
    return responseDetailReadMapper.getResponseList(responseMasterId);
  }
  
  @Override
  public List<FormDetailDTO> getResponseDTOList(Integer responseMasterId) {
	  List<FormDetailDTO> dto = null;
	  if(responseMasterId != null && responseMasterId != 0) {
		  dto = responseDetailReadMapper.getResponseDTOList(responseMasterId);
	  }
	  
	  return dto;
  }

  @Override
  public FormResponseMaster getByFormIdAndTaskId(Integer formId, Integer taskId) {
    Map<String, Integer> parameterMap = new HashMap<String, Integer>();
    parameterMap.put("formId", formId);
    parameterMap.put("taskId", taskId);
    return responseMasterReadMapper.getByFormIdAndTaskId(parameterMap);
  }

  @Override
  @Deprecated
  public List<FormElement> getPassedFormElementsByTaskId(Integer taskId) throws BusinessException {
      List<TaskForm> taskForms = taskFormReadMapper.selectByTaskId(taskId);
      List<FormElement> allPassedFormElements = null;
      if(taskForms != null){
        allPassedFormElements = new ArrayList<FormElement>();
        List<FormElement> passedFormElements;
        for(TaskForm taskForm : taskForms){
          FormResponseMaster master = this.getByFormIdAndTaskId(taskForm.getFormId(), taskForm.getTaskId());
          passedFormElements = formElementReadMapper.getPassedElementsByMasterId(master.getId());
          if(passedFormElements!=null && passedFormElements.size()>0){
            allPassedFormElements.addAll(passedFormElements);
          }
        }

      }
    return allPassedFormElements;
  }

  @Override
  public List<FormElement> getPassedFormElementByTaskForm(TaskForm taskForm) throws BusinessException {
    List<FormElement> passedFormElements = null;
    if(taskForm!=null) {
      FormResponseMaster master = this.getByFormIdAndTaskId(taskForm.getFormId(), taskForm.getTaskId());
      passedFormElements = formElementReadMapper.getPassedElementsByMasterId(master.getId());
    }
    return passedFormElements;
  }

  @Override
  public List<FormElement> getPassedFormElementByTaskForm(List<TaskForm> taskForms) throws BusinessException {
    List<FormElement> allPassedFormElements = null;
    if(taskForms != null){
      allPassedFormElements = new ArrayList<FormElement>();
      List<FormElement> passedFormElements;
      for(TaskForm taskForm : taskForms){
        passedFormElements = getPassedFormElementByTaskForm(taskForm);
        if(passedFormElements!=null && passedFormElements.size()>0){
          allPassedFormElements.addAll(passedFormElements);
        }
      }
    }
    return allPassedFormElements;
  }

  //  public FormResponseMaster getByFormIdAndUserIdAndTaskId(Integer formId, Integer userId, Integer taskId) {
//	Map<String, Integer> parameterMap = new HashMap<String, Integer>();
//	parameterMap.put("formId", formId);
//	parameterMap.put("userId", userId);
//    parameterMap.put("taskId", taskId);
//	return responseMasterReadMapper.getByFormIdAndUserIdAndTaskId(parameterMap);
//}

}
