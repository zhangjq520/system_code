package com.logic.system.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.logic.common.security.SecurityUtils;
import com.logic.system.domain.TaskLog;
import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskComment;
import com.logic.system.persistence.read.TaskCommentReadMapper;
import com.logic.system.persistence.write.TaskCommentWriteMapper;
import com.logic.system.service.ITaskCommentService;
import org.springframework.stereotype.Service;

@Service
public class TaskCommentService implements ITaskCommentService {

	@Autowired
	private TaskCommentReadMapper taskCommentReadMapper;
	
	@Autowired
	private TaskCommentWriteMapper taskCommentWriteMapper;

	@Autowired
	private TaskLogService taskLogService;
	
	@Override
	public int insert(Object obj) throws BusinessException {
	    return insert(obj, null);
	}

	@Override
	public int insert(Object obj, Timestamp insertTime) throws BusinessException {
		TaskComment taskComment = (TaskComment)obj;
		Boolean isValid = this.validateForInsert(taskComment);
		if (isValid) {
			int result = taskCommentWriteMapper.insertSelective(taskComment);
			createLog(null, taskComment, insertTime);

			return result;
		}
		return 0;
	}

	@Override
	public TaskComment get(Integer id) throws BusinessException {
		return taskCommentReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<TaskComment> getByTaskId(Integer taskId) {
		return taskCommentReadMapper.selectByTaskId(taskId);
	}


	@Override
	public void update(Object obj) throws BusinessException {
		update(obj, null);
	}

	@Override
	public void update(Object obj, Timestamp updateTime) throws BusinessException {
		TaskComment taskComment = (TaskComment)obj;
		Boolean isValid = this.validateForUpdate(taskComment);
		if(isValid){
			TaskComment previous = taskCommentReadMapper.selectByPrimaryKey(taskComment.getId());
			taskCommentWriteMapper.updateByPrimaryKeySelective(taskComment);

			createLog(previous, taskComment, updateTime);
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		TaskComment previous = taskCommentReadMapper.selectByPrimaryKey(Integer.valueOf(ids));
		createLog(previous, null, null);

		taskCommentWriteMapper.deleteByPrimaryKey(Integer.valueOf(ids));	
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	private void createLog(TaskComment previous, TaskComment current, Timestamp timeStamp) throws BusinessException {

		List<TaskLog> taskLogs = new ArrayList<>();
		if (timeStamp == null) {
			timeStamp = new Timestamp(new Date().getTime());
		}

		if (current != null && previous == null){
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timeStamp);
			taskLog.setFieldName("Comments");
			taskLog.setOriginalValue(null);
			taskLog.setNewValue(current.getComments());
			taskLog.setTaskId(current.getTaskId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (current == null && previous != null){
			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timeStamp);
			taskLog.setFieldName("Comments");
			taskLog.setOriginalValue(previous.getComments());
			taskLog.setNewValue(null);
			taskLog.setTaskId(previous.getTaskId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		if (previous != null && previous.getComments() != null &&
				current != null && current.getComments() != null &&
				!previous.getComments().equalsIgnoreCase(current.getComments())){

			TaskLog taskLog = new TaskLog();
			taskLog.setChangedTime(timeStamp);
			taskLog.setFieldName("Comments");
			taskLog.setOriginalValue(previous.getComments());
			taskLog.setNewValue(current.getComments());
			taskLog.setTaskId(previous.getTaskId());
			taskLog.setUserId(SecurityUtils.getCurrentLogin().getUserId());
			taskLog.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			taskLogs.add(taskLog);
		}

		for (TaskLog taskLog : taskLogs){
			taskLogService.insert(taskLog);
		}
	}
}
