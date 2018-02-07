package com.logic.system.service.impl;

import java.util.List;

import com.logic.common.ws.dto.system.TaskLogRootDTO;
import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskLog;
import com.logic.system.persistence.read.TaskLogReadMapper;
import com.logic.system.persistence.write.TaskLogWriteMapper;
import com.logic.system.service.ITaskLogService;
import org.springframework.stereotype.Service;

@Service
public class TaskLogService implements ITaskLogService {
	
	@Autowired
	private TaskLogReadMapper taskLogReadMapper;
	
	@Autowired
	private TaskLogWriteMapper taskLogWriteMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
		TaskLog taskLog = (TaskLog)obj;
		Boolean isValid = this.validateForInsert(taskLog);
	    if (isValid) {
	    	return taskLogWriteMapper.insertSelective(taskLog);
	    }
	    return 0;
	}

	@Override
	public TaskLog get(Integer id) throws BusinessException {
		return taskLogReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<TaskLog> getByTaskId(Integer taskId) {
		return taskLogReadMapper.selectByTaskId(taskId);
	}

	@Override
	public List<TaskLogRootDTO> getRootByTaskId(Integer taskId) {
		return taskLogReadMapper.selectRootByTaskId(taskId);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		TaskLog taskLog = (TaskLog)obj;
		Boolean isValid = this.validateForUpdate(taskLog);
		if(isValid){
			taskLogWriteMapper.updateByPrimaryKeySelective(taskLog);
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		taskLogWriteMapper.deleteByPrimaryKey(Integer.valueOf(ids));	
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
		Boolean retValue = Boolean.valueOf(false);
		
		TaskLog taskLog = (TaskLog)obj;
		String originalVal = taskLog.getOriginalValue();
		String newVal = taskLog.getNewValue();
		
		if (originalVal == null && newVal == null) {
			retValue = Boolean.valueOf(false);
		} else if (originalVal != null && newVal != null  && originalVal.equals(newVal)) {
			retValue = Boolean.valueOf(false);
		} else {
			retValue = Boolean.valueOf(true);
		}
		
		return retValue;
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
}
