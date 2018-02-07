package com.logic.system.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.security.SecurityUtils;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.system.TaskPeopleDTO;
import com.logic.system.domain.*;
import com.logic.system.persistence.read.*;
import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.system.persistence.write.TaskPeopleWriteMapper;
import com.logic.system.service.ITaskPeopleService;
import org.springframework.stereotype.Service;

@Service
public class TaskPeopleService implements ITaskPeopleService {

	@Autowired
	private TaskPeopleReadMapper taskPeopleReadMapper;
	
	@Autowired
	private TaskPeopleWriteMapper taskPeopleWriteMapper;

	@Autowired
	private TaskLogService taskLogService;

	@Autowired
	private TaskReadMapper taskReadMapper;

	@Autowired
	private UserReadMapper userReadMapper;

	@Autowired
	private CodeReadMapper codeReadMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
	    return insert(obj, null);
	}

	@Override
	public int insert(Object obj, Timestamp insertTime) throws BusinessException{
		TaskPeople taskPeople = (TaskPeople)obj;
		Boolean isValid = this.validateForInsert(taskPeople);
		if (isValid) {
			List<TaskPeopleDTO> previousTaskPeopleDTOs = getDTOsByTaskId(taskPeople.getTaskId());
			int result = taskPeopleWriteMapper.insertSelective(taskPeople);
			List<TaskPeopleDTO> currentTaskPeopleDTOs = getDTOsByTaskId(taskPeople.getTaskId());
			createLog(previousTaskPeopleDTOs, currentTaskPeopleDTOs, null, taskPeople, insertTime);
			return result;
		}
		return 0;
	}


	@Override
	public TaskPeople get(Integer id) throws BusinessException {
		return taskPeopleReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<TaskPeople> getByTaskId(Integer taskId){
		return taskPeopleReadMapper.selectByTaskId(taskId);
	}

	@Override
	public List<TaskPeopleDTO> getDTOsByTaskId(Integer taskId){
		return taskPeopleReadMapper.selectDTOByTaskId(taskId);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		update(obj, null);
	}

	@Override
	public void update(Object obj, Timestamp updateTime) throws BusinessException {
		TaskPeople taskPeople = (TaskPeople)obj;
		Boolean isValid = this.validateForUpdate(taskPeople);
		if(isValid){

			TaskPeople previous = taskPeopleReadMapper.selectByPrimaryKey(taskPeople.getId());
			List<TaskPeopleDTO> previousTaskPeopleDTOs = getDTOsByTaskId(previous.getTaskId());

			taskPeopleWriteMapper.updateByPrimaryKeySelective(taskPeople);
			TaskPeople current = taskPeopleReadMapper.selectByPrimaryKey(taskPeople.getId());
			List<TaskPeopleDTO> currentTaskPeopleDTOs = getDTOsByTaskId(previous.getTaskId());

			createLog(previousTaskPeopleDTOs, currentTaskPeopleDTOs, previous, current, updateTime);
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		TaskPeople previous = taskPeopleReadMapper.selectByPrimaryKey(Integer.valueOf(ids));
		List<TaskPeopleDTO> previousTaskPeopleDTOs = getDTOsByTaskId(previous.getTaskId());
		taskPeopleWriteMapper.deleteByPrimaryKey(Integer.valueOf(ids));
		List<TaskPeopleDTO> currentTaskPeopleDTOs = getDTOsByTaskId(previous.getTaskId());
		createLog(previousTaskPeopleDTOs, currentTaskPeopleDTOs, previous, null, null);
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		TaskPeople taskPeople = (TaskPeople) obj;
		if (taskPeople == null) {
			throw new BusinessException(ErrorMessageEnum.Task_People_Empty_Object);
		}

		if (taskPeople.getResponsibility() != null && taskPeople.getResponsibility().length() > 10) {
			throw new BusinessException(ErrorMessageEnum.Task_Invalid_Field, "responsibility");
		}

		if (taskPeople.getTaskId() != null){
			Task task = taskReadMapper.selectByPrimaryKey(taskPeople.getTaskId());
			if (task == null){
				throw new BusinessException(ErrorMessageEnum.Task_No_Such_Task);
			}
		}

		if (taskPeople.getUserId() != null){
			User user = userReadMapper.selectByPrimaryKey(taskPeople.getUserId());
			if (user == null){
				throw new BusinessException(ErrorMessageEnum.Task_No_Such_User);
			}
		}

		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		TaskPeople taskPeople = (TaskPeople) obj;

		boolean result = validate(obj);
		int i = taskPeopleReadMapper.checkPersonExistForTask(String.valueOf(taskPeople.getTaskId()),
				String.valueOf(taskPeople.getUserId()), taskPeople.getResponsibility());

		if (i > 0) {
			throw new BusinessException(ErrorMessageEnum.Task_People_Already_Set);
		}

		if (taskPeople.getResponsibility() != null) {
			i = taskPeopleReadMapper.selectResponsibilityCountForTask(String.valueOf(taskPeople.getTaskId()),
					taskPeople.getResponsibility());

			// TODO create a new enum for system_task_responsibility, _T22 is watcher we can only have watcher more than 1
			if (i > 0 && !taskPeople.getResponsibility().equalsIgnoreCase("_T22")) {
				throw new BusinessException(ErrorMessageEnum.Task_People_Responsibility_Already_Set);
			}
		}

		return result;
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

	private void createLog(List<TaskPeopleDTO> previousTaskPeopleDTOs,
						   List<TaskPeopleDTO> currentTaskPeopleDTOs,
						   TaskPeople previous,
						   TaskPeople current,
						   Timestamp logTime) throws BusinessException {

		List<TaskLog> taskLogs = new ArrayList<>();
		if (logTime == null){
			logTime = new Timestamp(new Date().getTime());
		}
//		Timestamp now = new Timestamp(new Date().getTime());

		if (previous != null && previous.getResponsibility() != null &&
				current != null && current.getResponsibility() != null &&
				!previous.getResponsibility().equalsIgnoreCase(current.getResponsibility())){

			// handle first responsibility changes
			taskLogs.add(createNewTaskLog(previousTaskPeopleDTOs, currentTaskPeopleDTOs, current, logTime));
			// handle second responsibility changes
			taskLogs.add(createNewTaskLog(previousTaskPeopleDTOs, currentTaskPeopleDTOs, previous, logTime));
		}else if (current != null || previous != null){
			TaskPeople taskPeople = (current != null) ? current : previous;
			taskLogs.add(createNewTaskLog(previousTaskPeopleDTOs, currentTaskPeopleDTOs, taskPeople, logTime));
		}

		for (TaskLog taskLog : taskLogs){
			taskLogService.insert(taskLog);
		}
	}

	private TaskLog createNewTaskLog(List<TaskPeopleDTO> previousTaskPeopleDTOs,
									 List<TaskPeopleDTO> currentTaskPeopleDTOs,
									 TaskPeople taskPeople,
									 Timestamp timestamp){

		StringBuilder previousUsers = new StringBuilder();

		boolean isFistItem = true;
		for (TaskPeopleDTO taskPeopleDTO : previousTaskPeopleDTOs){
			if (taskPeopleDTO.getResponsibility().equalsIgnoreCase(taskPeople.getResponsibility())){
				if (isFistItem){
					previousUsers.append(taskPeopleDTO.getUser_name());
					isFistItem = false;
				}else{
					previousUsers.append(",").append(taskPeopleDTO.getUser_name());
				}
			}
		}

		StringBuilder currentUsers = new StringBuilder();

		isFistItem = true;
		for (TaskPeopleDTO taskPeopleDTO : currentTaskPeopleDTOs){
			if (taskPeopleDTO.getResponsibility().equalsIgnoreCase(taskPeople.getResponsibility())){
				if (isFistItem){
					currentUsers.append(taskPeopleDTO.getUser_name());
					isFistItem = false;
				}else{
					currentUsers.append(",").append(taskPeopleDTO.getUser_name());
				}
			}
		}

		Code code = codeReadMapper.selectByPrimaryKey(taskPeople.getResponsibility());

		TaskLog taskLog = new TaskLog();
		taskLog.setChangedTime(timestamp);
		if (code != null){
			taskLog.setFieldName(code.getCodeDescEn());	// TODO Maybe use taskPeople.getResponsibility() in future
		} else{
			taskLog.setFieldName(taskPeople.getResponsibility());
		}

		taskLog.setOriginalValue(previousUsers.toString());
		taskLog.setNewValue(currentUsers.toString());
		taskLog.setTaskId(taskPeople.getTaskId());
		taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
		taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		return taskLog;
	}

	@Override
	public TaskPeople getAssignByTaskId(Integer id) {
		return	taskPeopleReadMapper.selectAssignByTaskId(id);
	}
}
