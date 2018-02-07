package com.logic.system.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.inspection.ToshibaTaskFormType;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.Form;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskForm;
import com.logic.system.domain.TaskLog;
import com.logic.system.persistence.read.CodeReadMapper;
import com.logic.system.persistence.read.FormReadMapper;
import com.logic.system.persistence.read.TaskFormReadMapper;
import com.logic.system.persistence.read.TaskReadMapper;
import com.logic.system.persistence.write.DiagnoseDataWriteMapper;
import com.logic.system.persistence.write.TaskFormWriteMapper;
import com.logic.system.service.IFormService;
import com.logic.system.service.ITaskFormService;

/**
 * Author: omer Date : 06-01-2016
 */
@Service
public class TaskFormService implements ITaskFormService {
	private static final Logger logger = LoggerFactory.getLogger(TaskFormService.class);

	@Autowired
	private TaskFormReadMapper taskFormReadMapper;

	@Autowired
	private TaskFormWriteMapper taskFormWriteMapper;

	@Autowired
	private TaskReadMapper taskReadMapper;

	@Autowired
	private FormReadMapper formReadMapper;

	@Autowired
	private TaskLogService taskLogService;

	@Autowired
	private CodeReadMapper codeReadMapper;

	@Autowired
	private DiagnoseDataWriteMapper diagnoseDataWriteMapper;

	@Autowired
	@Qualifier("formService")
	private IFormService formService;

	@Override
	public int insert(Object obj) throws BusinessException {
		return insert(obj, null);
	}

	public int insert(Object obj, Timestamp timestamp) throws BusinessException{
		TaskForm taskForm = (TaskForm) obj;
		Boolean isValid = this.validateForInsert(taskForm);
		if (isValid) {
			int result = taskFormWriteMapper.insertSelective(taskForm);
			createLog(null, taskForm, timestamp);

			return result;
		}
		return 0;
	}



	@Override
	public Object get(Integer id) throws BusinessException {
		return taskFormReadMapper.selectByPrimaryKey(id);
	}


	@Override
	public List<TaskForm> getByTaskId(Integer taskId) {
		return taskFormReadMapper.selectByTaskId(taskId);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		update(obj, null);
	}

	public void update(Object obj, Timestamp updateTime) throws BusinessException{
		TaskForm taskForm = (TaskForm) obj;
		Boolean isValid = this.validateForUpdate(taskForm);
		if (isValid) {

			TaskForm previous = taskFormReadMapper.selectByPrimaryKey(taskForm.getId());

			taskFormWriteMapper.updateByPrimaryKeySelective(taskForm);

			createLog(previous, taskForm, updateTime);
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		TaskForm previous = taskFormReadMapper.selectByPrimaryKey(Integer.valueOf(ids));
		createLog(previous, null, null);
		taskFormWriteMapper.deleteByPrimaryKey(Integer.valueOf(ids));
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		TaskForm taskForm = (TaskForm) obj;
		if (taskForm == null) {
			throw new BusinessException(ErrorMessageEnum.Task_Form_Empty_Object);
		}

		if (taskForm.getFormDesc() != null && taskForm.getFormDesc().length() > 249) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "formDesc");
		}

		if (taskForm.getTaskId() != null) {
			Task task = taskReadMapper.selectByPrimaryKey(taskForm.getTaskId());
			if (task == null) {
				throw new BusinessException(ErrorMessageEnum.Task_No_Such_Task);
			}
		}

		if (taskForm.getFormId() != null) {
			Form form = formReadMapper.selectByPrimaryKey(taskForm.getFormId());
			if (form == null) {
				throw new BusinessException(ErrorMessageEnum.Task_No_Such_Form);
			}
		}

		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		TaskForm taskForm = (TaskForm) obj;

		boolean result = validate(obj);

		if (taskForm.getId() != null) {
			throw new BusinessException(ErrorMessageEnum.Task_Form_Id_Not_Empty);
		}

		return result;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		return validate(obj);
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		return null;
	}

	private void createLog(TaskForm previous, TaskForm current, Timestamp timestamp) throws BusinessException {

		List<TaskLog> taskLogs = new ArrayList<>();
		if (timestamp == null){
			timestamp = new Timestamp(new Date().getTime());
		}

		if (current != null && previous == null) {
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("Forms");
			taskLog.setOriginalValue(null);
			taskLog.setNewValue(current.getFormDesc());
			taskLog.setTaskId(current.getTaskId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (current == null && previous != null) {
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("Forms");
			taskLog.setOriginalValue(previous.getFormDesc());
			taskLog.setNewValue(null);
			taskLog.setTaskId(previous.getTaskId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (previous != null && previous.getFormDesc() != null && current != null && current.getFormDesc() != null
				&& !previous.getFormDesc().equalsIgnoreCase(current.getFormDesc())) {

			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timestamp);
			taskLog.setFieldName("Forms");
			taskLog.setOriginalValue(previous.getFormDesc());
			taskLog.setNewValue(current.getFormDesc());
			taskLog.setTaskId(previous.getTaskId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		for (TaskLog taskLog : taskLogs) {
			taskLogService.insert(taskLog);
		}
	}

	private List<TaskForm> getTaskForms(Integer taskId, ToshibaTaskFormType taskFormType) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("taskId", String.valueOf(taskId));
		params.put("formType", taskFormType.getCode());

		return taskFormReadMapper.getTaskFormsByTaskIdAndFormType(params);
	}

	private List<TaskForm> getTaskForms(List<Task> tasks, ToshibaTaskFormType taskFormType) {
		List<TaskForm> allTaskForms = null;
		if (tasks != null && !tasks.isEmpty()) {
			allTaskForms = new ArrayList<TaskForm>();
			for (Task task : tasks) {
				List<TaskForm> taskForms = getTaskForms(task.getId(), taskFormType);
				if (taskForms != null && !taskForms.isEmpty())
					allTaskForms.addAll(taskForms);
			}
		}
		return allTaskForms;
	}

	@Override
	public List<TaskForm> getRelatedMiddleCheckTaskForm(List<Task> tasks) {
		return addTaskForms(getMiddleCheckTaskForm(tasks), getReMiddleCheckTaskForm(tasks));
	}


	@Override
	public List<TaskForm> getRelatedDiagCheckTaskForm(List<Task> tasks) {
		return addTaskForms(getDiagCheckTaskForm(tasks), getReDiagCheckTaskForm(tasks));
	}

	@Override
	public List<TaskForm> getRelatedDiagCommitCheckTaskForm(List<Task> tasks) {
		return addTaskForms(getDiagCheckCommitTaskForm(tasks), getReDiagCheckCommitTaskForm(tasks));
	}

	@Override
	public List<TaskForm> getRelatedOverAllCheckTaskForm(List<Task> tasks) {
		return getOverallCheckTaskForm(tasks);
	}

	private List<TaskForm> getMiddleCheckTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.MIDDLE_CHECK_FORM);
	}

	private List<TaskForm> getReMiddleCheckTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.RE_MIDDLE_CHECK_FORM);
	}

	private List<TaskForm> getDiagCheckTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.DIAGNOSE_FORM);
	}

	private List<TaskForm> getReDiagCheckTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.RE_DIAGNOSE_FORM);
	}

	private List<TaskForm> getDiagCheckCommitTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.DIAGNOSE_COMMIT_FORM);
	}

	private List<TaskForm> getReDiagCheckCommitTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.RE_DIAGNOSE_COMMIT_FORM);
	}

	private List<TaskForm> getOverallCheckTaskForm(List<Task> tasks) {
		return getTaskForms(tasks, ToshibaTaskFormType.OVERALL_CHECK_FORM);
	}

	private List<TaskForm> addTaskForms(List<TaskForm>... needToAddTaskForms) {
		List<TaskForm> allTaskForms = new LinkedList<TaskForm>();
		for (List<TaskForm> taskForms : needToAddTaskForms) {
			if (taskForms != null && taskForms.size() > 0) {
				allTaskForms.addAll(taskForms);
			}
		}
		return allTaskForms;
	}
}
