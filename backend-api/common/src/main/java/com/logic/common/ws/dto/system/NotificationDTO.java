package com.logic.common.ws.dto.system;

import java.sql.Timestamp;
import java.util.Date;

import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public class NotificationDTO {

    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = true, position = 1)
    private Integer id;

    private Integer userId;

    private String title;

    private String content;
    
    private String objectType;

    private Integer objectId;

    private Boolean isRead;

    private Date update_date;

    private Integer created_by_id;

    private String created_by_name;
    
    private String created_dtm;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getObjectType() {
		return objectType;
	}

	public void setObjectType(String objectType) {
		this.objectType = objectType;
	}

	public Integer getObjectId() {
		return objectId;
	}

	public void setObjectId(Integer objectId) {
		this.objectId = objectId;
	}


	public Boolean getIsRead() {
		return isRead;
	}

	public void setIsRead(Boolean isRead) {
		this.isRead = isRead;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	public Integer getCreated_by_id() {
		return created_by_id;
	}

	public void setCreated_by_id(Integer created_by_id) {
		this.created_by_id = created_by_id;
	}

	public String getCreated_by_name() {
		return created_by_name;
	}

	public void setCreated_by_name(String created_by_name) {
		this.created_by_name = created_by_name;
	}

	public String getCreated_dtm() {
		return created_dtm;
	}

	public void setCreated_dtm(String created_dtm) {
		this.created_dtm = created_dtm;
	}

	
}