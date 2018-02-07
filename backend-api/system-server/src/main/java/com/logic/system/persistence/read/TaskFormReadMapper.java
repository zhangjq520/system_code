package com.logic.system.persistence.read;

import java.util.List;
import java.util.Map;

import com.logic.system.domain.TaskForm;

public interface TaskFormReadMapper {

    TaskForm selectByPrimaryKey(Integer id);

    List<TaskForm> selectByTaskId(Integer taskId);

    List<TaskForm> getTaskFormsByTaskIdAndFormType(Map<String,String> params);
}