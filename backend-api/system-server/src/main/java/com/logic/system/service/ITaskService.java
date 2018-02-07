package com.logic.system.service;

import java.util.Date;
import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.MachineCheckResultDTO;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.system.TaskFormInfoDTO;
import com.logic.common.ws.dto.system.TaskResultRectificationDTO;
import com.logic.common.ws.dto.system.TaskResultSectionDTO;
import com.logic.common.ws.dto.system.TaskResultSummaryDTO;
import com.logic.common.ws.dto.system.TimeCriteriaDTO;
import com.logic.common.ws.dto.system.UserDTO;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.PDMachineInfo;
import com.logic.system.domain.PDRequestDiag;
import com.logic.system.domain.Task;
import com.logic.system.domain.User;

public interface ITaskService extends ICRUDService {
    TaskDTO getTaskDetails(Integer id, String type);

    List<TaskDTO> getTasks(QueryUtil queryUtil);

    List<String> getAllProjectNos();

    List<String> getAllProjectNames();

    List<String> getAllMachineNos();

//    List<Task> getRelatedFirstRoundTasks(Integer taskId) throws BusinessException;

    Integer getMachineSeqIdByTask(Task task);

    List<String> getAllAssignees();

    List<TaskDTO> getTasksByRole(QueryUtil queryUtil) throws BusinessException;

    List<TaskResultSectionDTO> getInspectionResults(Integer taskId, Integer formId) throws BusinessException;

    List<TaskResultRectificationDTO> getRectificationResults(Integer taskId, Integer formId);

    List<TaskResultSummaryDTO> getTaskResultsSummary(Integer taskId, Integer formId);

    PDRequestDiag PDRequestDiagByTaskId(Integer id) throws BusinessException;

    PDMachineInfo getMachineInfoByTask(Task task);

    void createTask(Task task, User user) throws BusinessException;

    int saveOrUpdate(TaskDTO taskDTO) throws BusinessException;

    List<FormElement> getAllPassedEleForMiddleCheck(Task task) throws BusinessException;

    List<FormElement> getAllPassedEleForOverAllCheck(Task task) throws BusinessException;

    List<FormElement> getAllPassedEleForDiagCheck(Task task) throws BusinessException;

    List<FormElement> getAllPassedEleForDiagCommitCheck(Task task) throws BusinessException;

    void updateWritebackStatus(String taskId, String taskType, String writebackStatus);

    void sendWritebackStatus(Integer taskId) throws BusinessException;

    //获取目前的检查阶段
    String getCurrentDiagApplyType(Integer machineSeqId);

    List<TaskDTO> getTasksByUserId(Integer userId, TimeCriteriaDTO timeCriteriaDTO);

    MachineCheckResultDTO getMachineCheckResult(Integer machineSeqId) throws BusinessException;

    Integer isBusy(Integer userId, TimeCriteriaDTO timeCriteriaDTO);

    List<Task> getNeedFallbackTask();

    Date getCurrentTime();

    List<TaskDTO> getCurrentUserTask() throws BusinessException;

    String getProjectVendorId(PDMachineInfo machineInfo);

    PDRequestMiddleCheckDTO getInfoForUpdateMiddleCheckRequest(Task task);

    List<TaskFormInfoDTO> getTasks(Integer taskId) throws BusinessException;

    PDRequestOverallCheckDTO getInfoForUpdateOverallCheckRequest(Task task);

	List<UserDTO> getDivisionDiagnoseInspector(String taskRespRoleType, String taskInstallSubcompanyCode);

	TaskFormInfoDTO getDiagnoseLifter(Integer taskId) throws BusinessException;
    
    
}
