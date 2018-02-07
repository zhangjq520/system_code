package com.logic.common.ws.dto.system;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
@ApiModel(description = "Task Log DTO")
public class TaskLogDTO {
    @ApiModelProperty(value = "User ID this log belongs to", position = 1)
    private Integer user_id;

    @ApiModelProperty(value = "Task ID this log belongs to",  hidden = true, position = 2)
    private Integer task_id;

    @ApiModelProperty(value = "Task log change time", position = 3)
    private Date changed_time;

    @ApiModelProperty(value = "Updated field's name", position = 4)
    private String field_name;

    @ApiModelProperty(value = "Updated field's previous value", position = 5)
    private String original_value;

    @ApiModelProperty(value = "Updated field's new value", position = 6)
    private String new_value;

    @ApiModelProperty(value = "Name of th user this log belongs to", position = 7)
    private String user_name;


    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getTask_id() {
        return task_id;
    }

    public void setTask_id(Integer task_id) {
        this.task_id = task_id;
    }

    public Date getChanged_time() {
        return changed_time;
    }

    public void setChanged_time(Date changed_time) {
        this.changed_time = changed_time;
    }

    public String getField_name() {
        return field_name;
    }

    public void setField_name(String field_name) {
        this.field_name = field_name;
    }

    public String getOriginal_value() {
        return original_value;
    }

    public void setOriginal_value(String original_value) {
        this.original_value = original_value;
    }

    public String getNew_value() {
        return new_value;
    }

    public void setNew_value(String new_value) {
        this.new_value = new_value;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}
