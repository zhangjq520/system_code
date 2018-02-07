package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.TaskLogRootDTO;
import com.logic.system.domain.TaskLog;

import java.util.List;

public interface ITaskLogService extends ICRUDService {
    List<TaskLog> getByTaskId(Integer taskId);

    List<TaskLogRootDTO> getRootByTaskId(Integer taskId);
}
