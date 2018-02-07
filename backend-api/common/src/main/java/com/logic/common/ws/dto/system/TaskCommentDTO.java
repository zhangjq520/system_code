package com.logic.common.ws.dto.system;

import java.util.Date;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
@ApiModel(description = "Task Comment DTO")
public class TaskCommentDTO {

    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 1)
    private String id;

    @ApiModelProperty(value = "Comment", position = 2)
    private String comments;

    @ApiModelProperty(value = "User ID this comment belongs to",  hidden = true, position = 3)
    private Integer user_id;

    // Task id fields can be removed
    @ApiModelProperty(value = "Task ID this comment belongs to.",  hidden = true, position = 4)
    private Integer task_id;

    @ApiModelProperty(value = "Task Name this comment belongs to.",  hidden = true, position = 5)
    private String user_name;

    @ApiModelProperty(value = "Declares whether the given comment is deleted or not",  hidden = true, position = 6)
    private Boolean deleted;

    @ApiModelProperty(value = "The date the comment is created",  hidden = true, position = 6)
    private Date createdAt;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
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

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}
