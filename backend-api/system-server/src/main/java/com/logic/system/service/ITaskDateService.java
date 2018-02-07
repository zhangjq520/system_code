package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.TaskDate;

import java.sql.Timestamp;
import java.util.List;

public interface ITaskDateService extends ICRUDService {
    List<TaskDate> getByTaskId(Integer taskId);

    int insert(Object obj, Timestamp insertTime) throws BusinessException;

    void update(Object obj, Timestamp updateTime) throws BusinessException;
}
