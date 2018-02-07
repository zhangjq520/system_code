package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.TaskLogDTO;
import com.logic.common.ws.dto.system.TaskPeopleDTO;
import com.logic.system.domain.TaskLog;
import com.logic.system.domain.TaskPeople;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 27-12-2015
 */
public class TaskLogConverter {

    public static TaskLogDTO fromTaskLogToTaskLogDTO(TaskLog taskLog){
        TaskLogDTO taskLogDTO = new TaskLogDTO();
        taskLogDTO.setTask_id(taskLog.getTaskId());
        taskLogDTO.setUser_id(taskLog.getUserId());
        taskLogDTO.setChanged_time(taskLog.getChangedTime());
        taskLogDTO.setField_name(taskLog.getFieldName());
        taskLogDTO.setOriginal_value(taskLog.getOriginalValue());
        taskLogDTO.setNew_value(taskLog.getNewValue());

        return taskLogDTO;
    }

    public static List<TaskLogDTO> fromTaskLogsToTaskLogDTOs(List<TaskLog> taskLogs){
        List<TaskLogDTO> taskLogDTOs = new ArrayList<>();
        for (TaskLog taskLog : taskLogs){
            TaskLogDTO taskLogDTO = fromTaskLogToTaskLogDTO(taskLog);
            taskLogDTOs.add(taskLogDTO);
        }

        return taskLogDTOs;
    }

    public static TaskLog fromTaskLogDTOToTaskLog(TaskLogDTO taskLogDTO){
        TaskLog taskLog = new TaskLog();

        taskLog.setTaskId(taskLogDTO.getTask_id());
        taskLog.setUserId(taskLogDTO.getUser_id());
        taskLog.setChangedTime(taskLogDTO.getChanged_time());
        taskLog.setFieldName(taskLogDTO.getField_name());
        taskLog.setNewValue(taskLogDTO.getNew_value());
        taskLog.setOriginalValue(taskLogDTO.getOriginal_value());

        return taskLog;
    }
}
