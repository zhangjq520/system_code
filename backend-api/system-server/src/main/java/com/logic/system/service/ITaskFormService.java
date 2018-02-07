package com.logic.system.service;

import java.sql.Timestamp;
import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.Task;
import com.logic.system.domain.TaskForm;
/**
 * Author: omer 
 * Date  : 06-01-2016
 */
public interface ITaskFormService extends ICRUDService {
    List<TaskForm> getByTaskId(Integer taskId);

    List<TaskForm> getRelatedMiddleCheckTaskForm(List<Task> tasks);

    List<TaskForm> getRelatedDiagCheckTaskForm(List<Task> tasks);

    //public List<TaskForm> getRelatedDiagCheckTaskForm(List<Task> tasks){ return getTaskForms(tasks, ToshibaTaskFormType.DIAGNOSE_FORM);}
    List<TaskForm> getRelatedOverAllCheckTaskForm(List<Task> tasks);

    List<TaskForm> getRelatedDiagCommitCheckTaskForm(List<Task> tasks);

    int insert(Object obj, Timestamp timestamp) throws BusinessException;

    void update(Object obj, Timestamp updateTime) throws BusinessException;

}
