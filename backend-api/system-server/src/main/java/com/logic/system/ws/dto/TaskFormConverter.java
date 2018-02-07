package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.TaskFormDTO;
import com.logic.common.ws.dto.system.TaskLogDTO;
import com.logic.system.domain.TaskForm;
import com.logic.system.domain.TaskLog;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: omer 
 * Date  : 06-01-2016
 */
public class TaskFormConverter {
    public static TaskFormDTO fromTaskFormToTaskFormDTO(TaskForm taskForm){
        TaskFormDTO taskFormDTO = new TaskFormDTO();
        taskFormDTO.setId(String.valueOf(taskForm.getId()));
        taskFormDTO.setTask_id(taskForm.getTaskId());
        taskFormDTO.setForm_id(taskForm.getFormId());
        taskFormDTO.setForm_desc(taskForm.getFormDesc());
        taskFormDTO.setForm_type_code(taskForm.getFormType());
        taskFormDTO.setLifter_diagnos(taskForm.getOther_1());
        taskFormDTO.setControl_panel_diagnoser(taskForm.getOther_2());
        taskFormDTO.setInspection(taskForm.getOther_3());
        taskFormDTO.setCorrective_action(taskForm.getOther_4());
        taskFormDTO.setDiagnose_completion(taskForm.getOther_5());
        taskFormDTO.setOther_6(taskForm.getOther_6());
        taskFormDTO.setOther_7(taskForm.getOther_7());
        taskFormDTO.setOther_8(taskForm.getOther_8());
        taskFormDTO.setOther_9(taskForm.getOther_9());

        return taskFormDTO;
    }

    public static List<TaskFormDTO> fromTaskFormsToTaskFormDTOs(List<TaskForm> taskForms){
        List<TaskFormDTO> taskFormDTOs = new ArrayList<>();
        for (TaskForm taskForm : taskForms){
            TaskFormDTO taskFormDTO = fromTaskFormToTaskFormDTO(taskForm);
            taskFormDTOs.add(taskFormDTO);
        }

        return taskFormDTOs;
    }

    public static TaskForm fromTaskFormDTOToTaskFrom(TaskFormDTO taskFormDTO){
        TaskForm taskForm = new TaskForm();
        
        Integer taskFormID = Integer.valueOf(taskFormDTO.getId());
        taskForm.setId(taskFormID);
        
        taskForm.setTaskId(taskFormDTO.getTask_id());
        taskForm.setFormId(taskFormDTO.getForm_id());
        taskForm.setFormDesc(taskFormDTO.getForm_desc());
        taskForm.setFormType(taskFormDTO.getForm_type_code());
        taskForm.setOther_1(taskFormDTO.getLifter_diagnos());
        taskForm.setOther_2(taskFormDTO.getControl_panel_diagnoser());
        taskForm.setOther_3(taskFormDTO.getInspection());
        taskForm.setOther_4(taskFormDTO.getCorrective_action());
        taskForm.setOther_5(taskFormDTO.getDiagnose_completion());
        taskForm.setOther_6(taskFormDTO.getOther_6());
        taskForm.setOther_7(taskFormDTO.getOther_7());
        taskForm.setOther_8(taskFormDTO.getOther_8());
        taskForm.setOther_9(taskFormDTO.getOther_9());
        return taskForm;
    }
}
