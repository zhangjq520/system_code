package com.logic.system.service;


import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.domain.FormResponseMaster;
import com.logic.system.domain.TaskForm;
import com.logic.system.ws.dto.FormDetailDTO;

public interface IFormResponseMasterService extends ICRUDService {

  /**
   * Get form response by response master id
   * 
   * @param responseMasterId
   * @return
   */
  public List<FormResponseDetail> getResponseList(Integer responseMasterId);

  FormResponseMaster getByFormIdAndTaskId(Integer formId, Integer userId);

  @Deprecated
  List<FormElement> getPassedFormElementsByTaskId(Integer taskId) throws BusinessException;

  List<FormElement> getPassedFormElementByTaskForm(TaskForm taskForm) throws BusinessException;

  List<FormElement> getPassedFormElementByTaskForm(List<TaskForm> taskForms) throws BusinessException;
  
  /***
   * get dto list
   * @param responseMasterId
   * @return List<FormResponseDetailDTO>
   */
  List<FormDetailDTO> getResponseDTOList(Integer responseMasterId);
  
}
