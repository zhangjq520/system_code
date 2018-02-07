package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.TaskCommentDTO;
import com.logic.common.ws.dto.system.TaskDateDTO;
import com.logic.system.domain.TaskComment;
import com.logic.system.domain.TaskDate;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 27-12-2015
 */
public class TaskDateConverter {
    public static TaskDateDTO fromTaskDateToTaskDateDTO(TaskDate taskDate){
        TaskDateDTO taskDateDTO = new TaskDateDTO();
        taskDateDTO.setId(String.valueOf(taskDate.getId()));
        taskDateDTO.setTask_id(taskDate.getTaskId());
        taskDateDTO.setDate_type(taskDate.getDateType());
        taskDateDTO.setDate_value(taskDate.getDateValue());
        taskDateDTO.setDeleted(taskDate.getDeleted());

        return taskDateDTO;
    }

    public static List<TaskDateDTO> fromTaskDatesToTaskDateDTOs(List<TaskDate> taskDates){
        List<TaskDateDTO> taskDateDTOs = new ArrayList<>();
        for (TaskDate taskDate : taskDates){
            TaskDateDTO taskDateDTO = fromTaskDateToTaskDateDTO(taskDate);
            taskDateDTOs.add(taskDateDTO);
        }

        return taskDateDTOs;
    }

    public static TaskDate fromTaskDateDTOToTaskDate(TaskDateDTO taskDateDTO){
        TaskDate taskDate = new TaskDate();

        taskDate.setTaskId(taskDateDTO.getTask_id());
        taskDate.setDateType(taskDateDTO.getDate_type());
        taskDate.setDateValue(taskDateDTO.getDate_value());


        return taskDate;
    }
}
