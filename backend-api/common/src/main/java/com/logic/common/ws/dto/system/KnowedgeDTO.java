package com.logic.common.ws.dto.system;

public class KnowedgeDTO {

	private String project_id;
	private String machine_name;
	private String business_type;
	private String business_type_desc;
	private String file_name;
	private String file_path;
	private String file_source;
	private String file_format;
	private String file_size;
	private String uploaded_time;
	private String full_path;

	public String getBusiness_type_desc() {
		return business_type_desc;
	}

	public void setBusiness_type_desc(String business_type_desc) {
		this.business_type_desc = business_type_desc;
	}

	public String getFull_path() {
		return full_path;
	}

	public void setFull_path(String full_path) {
		this.full_path = full_path;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getMachine_name() {
		return machine_name;
	}

	public void setMachine_name(String machine_name) {
		this.machine_name = machine_name;
	}

	public String getBusiness_type() {
		return business_type;
	}

	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	public String getFile_source() {
		return file_source;
	}

	public void setFile_source(String file_source) {
		this.file_source = file_source;
	}

	public String getFile_format() {
		return file_format;
	}

	public void setFile_format(String file_format) {
		this.file_format = file_format;
	}

	public String getFile_size() {
		return file_size;
	}

	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}

	public String getUploaded_time() {
		return uploaded_time;
	}

	public void setUploaded_time(String uploaded_time) {
		this.uploaded_time = uploaded_time;
	}

}
