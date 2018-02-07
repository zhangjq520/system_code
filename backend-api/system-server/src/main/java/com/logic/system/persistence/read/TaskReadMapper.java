package com.logic.system.persistence.read;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.system.TaskFormInfoDTO;
import com.logic.common.ws.dto.system.TaskResultRectificationDTO;
import com.logic.common.ws.dto.system.TaskResultSectionDTO;
import com.logic.common.ws.dto.system.TaskResultSummaryDTO;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import com.logic.system.domain.*;


import java.util.Date;
import java.util.List;
import java.util.Map;

public interface TaskReadMapper {

    Task selectByPrimaryKey(Integer id);

    TaskDTO selectTaskByPrimaryKey(String taskId, String taskType);

    List<TaskDTO> selectTasks(QueryUtil queryUtil);

    List<String> selectAllProjectNos();

    List<String> selectAllProjectNames();

    List<String> selectAllMachineNos();

    List<Task> getRelatedFirstRoundTasksBySecondRoundTaskId(Integer taskId);

    PDRequestMiddleCheck getPDRequestMiddleCheckByTaskId(Integer taskId);

    List<String> selectAllAssigTasnees();

    PDRequestDiag getPDRequestDiagByTaskId(Integer taskId);

    PDRequestOverallCheck getPDRequestOverallCheckByTaskId(Integer taskId);

    List<Task> selectRealtedTask(Map<String, String> params);

    List<TaskResultSectionDTO> selectInspectionResults(Map<String, Integer> params);

    List<TaskResultRectificationDTO> selectRectificationResults(Map<String, Integer> params);

    List<TaskResultSummaryDTO> selectTaskResultsSummary(Map<String, Integer> params);

    List<String> selectAllAssignees();

    List<TaskDTO> selectTasksByUserId(Integer userId);

    List<Task> selectNeedFallbackTask();

    Date getCurrentTime();

    List<TaskDTO> selectWorkTasksById(Integer id);

    List<TaskDTO> selectManagerTasksById(Integer id);

    String getVendorIdByProjectId(String projectId);

    List<TaskDTO> selectManagerTasksWithDM(QueryUtil queryUtil);

    List<TaskDTO> selectManagerTasks(QueryUtil queryUtil);

    List<TaskDTO> selectMiddleCheckTasks(QueryUtil queryUtil);

    List<TaskDTO> selectDiagCheckTasks(QueryUtil queryUtil);

    List<TaskDTO> selectOverallCheckTasks(QueryUtil queryUtil);

    PDRequestMiddleCheckDTO selectInfoForUpdateMiddleCheckRequest(Task task);

    List<PDRequestMiddleCheckDTO> selectInfoForUpdateMiddleCheckRequestBySeqId(Integer machineSeqId);

    List<PDRequestOverallCheckDTO> selectInfoForUpdateOverallCheckRequestBySeqId(Integer machineSeqId);

	List<TaskFormInfoDTO> getTasks(Integer taskId);

    PDRequestOverallCheckDTO selectInfoForUpdateOverallCheckRequest(Task task);

    List<FormElement> selectUnPassedElement(Task task);

    PDRequestMiddleCheckDTO selectMiddleCheckDetails(Integer taskRefId);
}