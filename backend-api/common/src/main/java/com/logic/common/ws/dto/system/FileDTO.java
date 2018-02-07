package com.logic.common.ws.dto.system;

import java.io.Serializable;
import java.sql.Timestamp;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "File DTO")
public class FileDTO implements Serializable {

	private static final long serialVersionUID = -431770432747602944L;

	@ApiModelProperty(value = "It's required when update, but not required when add", allowableValues = "Start with a digital and unique and maxlength:10", required = false, position = 1)
	private String id;

	@ApiModelProperty(value = "file path", required = false, position = 2)
	private String path;

	@ApiModelProperty(value = "file name", required = false, position = 3)
	private String name;

	@ApiModelProperty(value = "file type", required = false, position = 4)
	private String file_type;

	@ApiModelProperty(value = "file size", required = false, position = 5)
	private Integer file_size;

	@ApiModelProperty(value = "file desc", required = false, position = 6)
	private String description;

	@ApiModelProperty(value = "file tags", required = false, position = 7)
	private String tags;
	
	@ApiModelProperty(value = "file version", required = false, position = 8)
	private Integer version;

	@ApiModelProperty(value = "file cover image", required = false, position = 9)
	private String coverImage;

	@ApiModelProperty(value = "file status", required = false, position = 10)
	private String status;

	@ApiModelProperty(value = "original file name, not required when add or update", required = false, position = 11)
	private String originalName;

	@ApiModelProperty(value = "file fullPath", required = false, position = 12)
	private String fullPath;
	
	@ApiModelProperty(value = "file localfullPath", required = false, position = 13)
	private String localFullPath;
	
	@ApiModelProperty(value = "file createdBy", required = false, position = 14)
	private String createdBy;
	
	@ApiModelProperty(value = "last modified date", required = false, position = 15)
	private Timestamp lastModifiedDtm;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFile_type() {
		return file_type;
	}

	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}

	public Integer getFile_size() {
		return file_size;
	}

	public void setFile_size(Integer file_size) {
		this.file_size = file_size;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getFullPath() {
		return fullPath;
	}

	public void setFullPath(String fullPath) {
		this.fullPath = fullPath;
	}

	public String getCoverImage() {
		return coverImage;
	}

	public void setCoverImage(String coverImage) {
		this.coverImage = coverImage;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "FileDTO [id=" + id + ", path=" + path + ", name=" + name + ", file_type=" + file_type + ", description="
				+ description + ", tags=" + tags + ", originalName=" + originalName + ", fullPath=" + fullPath + "]";
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Timestamp getLastModifiedDtm() {
		return lastModifiedDtm;
	}

	public void setLastModifiedDtm(Timestamp lastModifiedDtm) {
		this.lastModifiedDtm = lastModifiedDtm;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getLocalFullPath() {
		return localFullPath;
	}

	public void setLocalFullPath(String localFullPath) {
		this.localFullPath = localFullPath;
	}






	

}
