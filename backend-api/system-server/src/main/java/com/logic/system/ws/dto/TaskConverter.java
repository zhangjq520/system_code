package com.logic.system.ws.dto;

import com.logic.common.security.SecurityUtils;
import com.logic.common.ws.dto.system.*;
import com.logic.system.domain.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
public class TaskConverter {
    public static TaskDTO fromTaskToTaskDTO(Task task){
        TaskDTO taskDTO = new TaskDTO();

        taskDTO.setId(task.getId());
        taskDTO.setResolution(task.getResolution());
        taskDTO.setStatus(task.getStatus());
        taskDTO.setSubject(task.getSubject());
        taskDTO.setTask_type(task.getTaskType());
        taskDTO.setTask_ref_id(task.getTaskRefId());
        taskDTO.setTask_priority(task.getTaskPriority());
        taskDTO.setTask_assign_type(task.getTaskAssignType());

        return taskDTO;
    }

    public static Task fromTaskDTOToTask(TaskDTO taskDTO){
        Task task = new Task();

        task.setId(taskDTO.getId());
        task.setResolution(taskDTO.getResolution());
        task.setStatus(taskDTO.getStatus());
        task.setSubject(taskDTO.getSubject());
        task.setTaskRefId(taskDTO.getTask_ref_id());
        task.setTaskType(taskDTO.getTask_type());
        task.setTaskPriority(taskDTO.getTask_priority());
        task.setTaskAssignType(taskDTO.getTask_assign_type());

        return task;
    }

    public static List<TaskPeople> fromTaskDTOToTaskPeopleList(TaskDTO taskDTO){
        List<TaskPeople> taskPeopleList = new ArrayList<>();

        if (taskDTO.getTask_people() != null){
            for (TaskPeopleDTO taskPeopleDTO : taskDTO.getTask_people()){
                TaskPeople taskPeople = TaskPeopleConverter.fromTaskPeopleDTOToTaskPeople(taskPeopleDTO);
                if (taskPeopleDTO.getId() != null){
                    taskPeople.setId(Integer.valueOf(taskPeopleDTO.getId()));
                }

                taskPeople.setTaskId(taskDTO.getId());
                taskPeople.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

                taskPeopleList.add(taskPeople);
            }

        }

        return taskPeopleList;
    }

    public static List<TaskComment> fromTaskDTOToTaskCommentList(TaskDTO taskDTO){
        List<TaskComment> taskCommentList = new ArrayList<>();

        if (taskDTO.getTask_comments() != null){
            for (TaskCommentDTO taskCommentDTO : taskDTO.getTask_comments()){
                TaskComment taskComment = TaskCommentConverter.fromTaskCommentDTOToTaskComment(taskCommentDTO);
                if (taskCommentDTO.getId() != null){
                    taskComment.setId(Integer.valueOf(taskCommentDTO.getId()));
                }

                taskComment.setTaskId(taskDTO.getId());
                taskComment.setUserId(SecurityUtils.getCurrentLogin().getUserId());
                taskComment.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

                taskCommentList.add(taskComment);
            }

        }

        return taskCommentList;
    }

    public static List<TaskDate> fromTaskDTOToTaskDateList(TaskDTO taskDTO){
        List<TaskDate> taskDateList = new ArrayList<>();

        if (taskDTO.getTask_dates() != null){
            for (TaskDateDTO taskDateDTO : taskDTO.getTask_dates()){
                TaskDate taskDate = TaskDateConverter.fromTaskDateDTOToTaskDate(taskDateDTO);
                if (taskDateDTO.getId() != null){
                    taskDate.setId(Integer.valueOf(taskDateDTO.getId()));
                }

                taskDate.setTaskId(taskDTO.getId());
                taskDate.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                taskDateList.add(taskDate);
            }

        }

        return taskDateList;
    }

    public static List<TaskForm> fromTaskDTOToTaskFormList(TaskDTO taskDTO){
        List<TaskForm> taskFormList = new ArrayList<>();

        if (taskDTO.getTask_forms() != null){
            for (TaskFormDTO taskFormDTO : taskDTO.getTask_forms()){
                TaskForm taskForm = TaskFormConverter.fromTaskFormDTOToTaskFrom(taskFormDTO);
                if (taskFormDTO.getId() != null){
                    taskForm.setId(Integer.valueOf(taskFormDTO.getId()));
                }

                taskForm.setTaskId(taskDTO.getId());
                taskForm.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

                taskFormList.add(taskForm);
            }

        }

        return taskFormList;
    }
}
