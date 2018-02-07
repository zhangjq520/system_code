package com.logic.system.service.impl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskDate;
import com.logic.system.domain.TaskLog;
import com.logic.system.persistence.read.CodeReadMapper;
import com.logic.system.persistence.read.TaskDateReadMapper;
import com.logic.system.persistence.read.TaskReadMapper;
import com.logic.system.persistence.write.TaskDateWriteMapper;
import com.logic.system.service.ITaskDateService;

@Service
public class TaskDateService implements ITaskDateService {
	
	@Autowired
	private TaskDateReadMapper taskDateReadMapper;
	
	@Autowired
	private TaskDateWriteMapper taskDateWriteMapper;

	@Autowired
	private TaskLogService taskLogService;

	@Autowired
	private TaskReadMapper taskReadMapper;

	@Autowired
	private CodeReadMapper codeReadMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
		return insert(obj, null);
	}

	@Override
	public int insert(Object obj, Timestamp insertTime) throws BusinessException{
		TaskDate taskDate = (TaskDate)obj;

		Boolean isValid = this.validateForInsert(taskDate);

		if (isValid) {
			taskDate.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			List<TaskDate> previousTaskDates = getByTaskId(taskDate.getTaskId());
			int result = taskDateWriteMapper.insertSelective(taskDate);
			List<TaskDate> currentTaskDates = getByTaskId(taskDate.getTaskId());
			createLog(previousTaskDates, currentTaskDates, null, taskDate, insertTime);
			return result;
		}

		return 0;
	}

	@Override
	public TaskDate get(Integer id) throws BusinessException {
		return taskDateReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<TaskDate> getByTaskId(Integer taskId) {
		return taskDateReadMapper.selectByTaskId(taskId);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		update(obj, null);
	}

	@Override
	public void update(Object obj, Timestamp updateTime) throws BusinessException {
		TaskDate taskDate = (TaskDate)obj;
		Boolean isValid = this.validateForUpdate(taskDate);
		if(isValid){
			TaskDate previous = taskDateReadMapper.selectByPrimaryKey(taskDate.getId());
			List<TaskDate> previousTaskDates = getByTaskId(previous.getTaskId());
			taskDateWriteMapper.updateByPrimaryKeySelective(taskDate);
			TaskDate current = taskDateReadMapper.selectByPrimaryKey(taskDate.getId());
			List<TaskDate> currentTaskDates = getByTaskId(previous.getTaskId());
			if(current.getDateValue()!=null) {
				createLog(previousTaskDates, currentTaskDates, previous, current, updateTime);
			}
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		TaskDate previous = taskDateReadMapper.selectByPrimaryKey(Integer.valueOf(ids));
		List<TaskDate> previousTaskDates = getByTaskId(previous.getTaskId());
		taskDateWriteMapper.deleteByPrimaryKey(Integer.valueOf(ids));
		List<TaskDate> currentTaskDates = getByTaskId(previous.getTaskId());
		createLog(previousTaskDates, currentTaskDates, previous, null, null);
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		TaskDate taskDate = (TaskDate) obj;
		if (taskDate == null) {
			throw new BusinessException(ErrorMessageEnum.Task_Date_Empty_Object);
		}

		if (taskDate.getDateType() != null && taskDate.getDateType().length() > 10) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "dateType");
		}

		if (taskDate.getTaskId() != null){
			Task task = taskReadMapper.selectByPrimaryKey(taskDate.getTaskId());
			if (task == null){
				throw new BusinessException(ErrorMessageEnum.Task_No_Such_Task);
			}
		}

		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		boolean result = validate(obj);
		TaskDate taskDate = (TaskDate) obj;

		int i = taskDateReadMapper.checkDateExistForTask(String.valueOf(taskDate.getTaskId()),
				taskDate.getDateType());

		if (i > 0) {
			throw new BusinessException(ErrorMessageEnum.Task_Date_Already_Set);
		}

		return true;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		return validate(obj);
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	private void createLog(List<TaskDate> previousTaskDates,
						   List<TaskDate> currentTaskDates,
						   TaskDate previous,
						   TaskDate current,
						   Timestamp timestamp) throws BusinessException {

		List<TaskLog> taskLogs = new ArrayList<>();

		if (timestamp == null){
			timestamp = new Timestamp(new Date().getTime());
		}

		if (current != null && previous == null){
			taskLogs.add(createNewTaskLog(previousTaskDates, currentTaskDates, current, timestamp));
		}

		if (current == null && previous != null){
			taskLogs.add(createNewTaskLog(previousTaskDates, currentTaskDates, previous, timestamp));
		}

		if (current != null && previous != null){
			taskLogs.add(createNewTaskLog(previousTaskDates, currentTaskDates, current, timestamp));
		}

		for (TaskLog taskLog : taskLogs){
			taskLogService.insert(taskLog);
		}
	}

	private TaskLog createNewTaskLog(List<TaskDate> previousTaskDates,
									 List<TaskDate> currentTaskDates,
									 TaskDate taskDate,
									 Timestamp timestamp){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String previousValue = null;

		for (TaskDate previousTaskDate : previousTaskDates){
			if (previousTaskDate.getDateType().equalsIgnoreCase(taskDate.getDateType())){
				if(previousTaskDate.getDateValue() != null){
					previousValue = dateFormat.format(previousTaskDate.getDateValue());
				}
				break;
			}
		}

		String currentValue = null;

		for (TaskDate currentTaskDate : currentTaskDates){
			if (currentTaskDate.getDateType().equalsIgnoreCase(taskDate.getDateType())){
				if(currentTaskDate.getDateValue() != null){
					currentValue = dateFormat.format(currentTaskDate.getDateValue());
				}
				break;
			}
		}

		Code code = codeReadMapper.selectByPrimaryKey(taskDate.getDateType());

		TaskLog taskLog = new TaskLog();
		taskLog.setChangedTime(timestamp);
		taskLog.setFieldName(code.getCodeDescEn());// TODO maybe user taskDate.getDateType in here in future
		taskLog.setOriginalValue(previousValue);
		taskLog.setNewValue(currentValue);
		taskLog.setTaskId(taskDate.getTaskId());
		taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
		taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		return taskLog;
	}

}
