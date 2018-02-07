package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.TaskPeopleDTO;
import com.logic.system.domain.TaskPeople;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public interface ITaskPeopleService extends ICRUDService {
    List<TaskPeople> getByTaskId(Integer taskId);

    List<TaskPeopleDTO> getDTOsByTaskId(Integer taskId);

    int insert(Object obj, Timestamp insertTime) throws BusinessException;

    void update(Object obj, Timestamp updateTime) throws BusinessException;

    TaskPeople getAssignByTaskId(Integer id);
}
