package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.TaskCommentDTO;
import com.logic.system.domain.TaskComment;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 27-12-2015
 */
public class TaskCommentConverter {
    public static TaskCommentDTO fromTaskCommentToTaskCommentDTO(TaskComment taskComment){
        TaskCommentDTO taskCommentDTO = new TaskCommentDTO();
        taskCommentDTO.setId(String.valueOf(taskComment.getId()));
        taskCommentDTO.setTask_id(taskComment.getTaskId());
        taskCommentDTO.setUser_id(taskComment.getUserId());
        taskCommentDTO.setComments(taskComment.getComments());
        taskCommentDTO.setDeleted(taskComment.getDeleted());
        taskCommentDTO.setCreatedAt(taskComment.getCreatedDtm());

        return taskCommentDTO;
    }

    public static List<TaskCommentDTO> fromTaskCommentsToTaskCommentDTOs(List<TaskComment> taskComments){
        List<TaskCommentDTO> taskCommentDTOs = new ArrayList<>();
        for (TaskComment taskComment : taskComments){
            TaskCommentDTO taskCommentDTO = fromTaskCommentToTaskCommentDTO(taskComment);
            taskCommentDTOs.add(taskCommentDTO);
        }

        return taskCommentDTOs;
    }

    public static TaskComment fromTaskCommentDTOToTaskComment(TaskCommentDTO taskCommentDTO){
        TaskComment taskComment = new TaskComment();

        taskComment.setTaskId(taskCommentDTO.getTask_id());
        taskComment.setUserId(taskCommentDTO.getUser_id());
        taskComment.setComments(taskCommentDTO.getComments());

        return taskComment;
    }
}
