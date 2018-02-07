package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class SystemFile extends BasePojo {

	private static final long serialVersionUID = 6362178950444527288L;

	// 文件路径
	private String path;

	// 文件名
	private String name;

	// 文件类型
	private String fileType;

	// 文件大小
	private Integer fileSize;

	// 文件说明
	private String description;

	// 文件标签,（多个标签之间以逗号分隔）
	private String tags;

	private String coverImage;

	private String status;

	// 文件全路径
	private String fullPath;
	
	//本地全路径
	private String localFullPath;

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

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public Integer getFileSize() {
		return fileSize;
	}

	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
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

	public String getFullPath() {
		return fullPath;
	}

	public void setFullPath(String fullPath) {
		this.fullPath = fullPath;
	}

	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "SystemFile [path=" + path + ", name=" + name + ", fileType=" + fileType + ", coverImage=" + coverImage + ", status=" + status+ ", description=" + description
				+ ", tags=" + tags + ", fullPath=" + fullPath + "]";
	}

	public String getCoverImage() {
		return coverImage;
	}

	public void setCoverImage(String coverImage) {
		this.coverImage = coverImage;
	}

	public String getLocalFullPath() {
		return localFullPath;
	}

	public void setLocalFullPath(String localFullPath) {
		this.localFullPath = localFullPath;
	}


  

	

	

}
