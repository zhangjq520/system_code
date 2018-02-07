package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.TaskPeopleDTO;
import com.logic.system.domain.TaskPeople;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 25-12-2015
 */
public class TaskPeopleConverter {

    public static TaskPeopleDTO fromTaskPeopleToTaskPeopleDTO(TaskPeople taskPeople){
        TaskPeopleDTO taskPeopleDTO = new TaskPeopleDTO();
        taskPeopleDTO.setId(String.valueOf(taskPeople.getId()));
        taskPeopleDTO.setTask_id(taskPeople.getTaskId());
        taskPeopleDTO.setUser_id(taskPeople.getUserId());
        taskPeopleDTO.setResponsibility(taskPeople.getResponsibility());
        taskPeopleDTO.setDeleted(taskPeople.getDeleted());

        return taskPeopleDTO;
    }

    public static List<TaskPeopleDTO> fromTaskPeoplesToTaskPeopleDTOs(List<TaskPeople> taskPeoples){
        List<TaskPeopleDTO> taskPeopleDTOs = new ArrayList<>();
        for (TaskPeople taskPeople : taskPeoples){
            TaskPeopleDTO taskPeopleDTO = fromTaskPeopleToTaskPeopleDTO(taskPeople);
            taskPeopleDTOs.add(taskPeopleDTO);
        }

        return taskPeopleDTOs;
    }

    public static TaskPeople fromTaskPeopleDTOToTaskPeople(TaskPeopleDTO taskPeopleDTO){
        TaskPeople taskPeople = new TaskPeople();

        taskPeople.setTaskId(taskPeopleDTO.getTask_id());
        taskPeople.setUserId(taskPeopleDTO.getUser_id());
        taskPeople.setResponsibility(taskPeopleDTO.getResponsibility());

        return taskPeople;
    }

}
