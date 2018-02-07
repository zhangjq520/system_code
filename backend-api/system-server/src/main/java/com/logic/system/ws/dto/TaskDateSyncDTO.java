package com.logic.system.ws.dto;

import com.logic.system.domain.Task;
import com.logic.system.domain.TaskDate;

import java.util.List;

/**
 * Created by albert on 16-3-1.
 */
public class TaskDateSyncDTO {
    private List<TaskDate> system_task_date;
    private Task system_task;

    public List<TaskDate> getSystem_task_date() {
        return system_task_date;
    }

    public void setSystem_task_date(List<TaskDate> system_task_date) {
        this.system_task_date = system_task_date;
    }

    public Task getSystem_task() {
        return system_task;
    }

    public void setSystem_task(Task system_task) {
        this.system_task = system_task;
    }
}
