package com.logic.common.ws.dto.system;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
@ApiModel(description = "Task People DTO")
public class TaskPeopleDTO {

    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 1)
    private String id;

    @ApiModelProperty(value = "Responsibility of the person", position = 2)
    private String responsibility;

    @ApiModelProperty(value = "User id of the person", position = 3)
    private Integer user_id;

    @ApiModelProperty(value = "Task ID", position = 4, hidden = true)
    private Integer task_id;

    @ApiModelProperty(value = "User Name", position = 5, hidden = true)
    private String user_name;

    @ApiModelProperty(value = "Declares whether the given person is deleted or not",  hidden = true, position = 6)
    private Boolean deleted;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getResponsibility() {
        return responsibility;
    }

    public void setResponsibility(String responsibility) {
        this.responsibility = responsibility;
    }

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

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }
}
