package com.logic.common.ws.dto.system;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
@ApiModel(description = "Task Date DTO")
public class TaskDateDTO {
    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 1)
    private String id;

    @ApiModelProperty(value = "Type of the Date", position = 2)
    private String date_type;

    @ApiModelProperty(value = "Value of Date", position = 3)
    private Date date_value;

    @ApiModelProperty(value = "Task ID this date belongs to",  hidden = true, position = 4)
    private Integer task_id;

    @ApiModelProperty(value = "Declares whether the given date is deleted or not",  hidden = true, position = 5)
    private Boolean deleted;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDate_type() {
        return date_type;
    }

    public void setDate_type(String date_type) {
        this.date_type = date_type;
    }

    public Date getDate_value() {
        return date_value;
    }

    public void setDate_value(Date date_value) {
        this.date_value = date_value;
    }

    public Integer getTask_id() {
        return task_id;
    }

    public void setTask_id(Integer task_id) {
        this.task_id = task_id;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }
}
