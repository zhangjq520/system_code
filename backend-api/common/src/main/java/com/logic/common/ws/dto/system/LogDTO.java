package com.logic.common.ws.dto.system;

import java.sql.Timestamp;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Log DTO")
public class LogDTO {

	@ApiModelProperty(value = "Log ID", position = 1)
	private Integer id;
	
	@ApiModelProperty(value = "Log org ID", position = 2)
	private Integer orgId;

	@ApiModelProperty(value = "Log ip", position = 3)
	private String ip;

	@ApiModelProperty(value = "Log levels", position = 4)
	private String levels;

	@ApiModelProperty(value = "Log class info", position = 5)
	private String class_info;

	@ApiModelProperty(value = "Log type", position = 6)
	private String type;

	@ApiModelProperty(value = "Log message", position = 7)
	private String message;

	@ApiModelProperty(value = "Log loginId", position = 8)
	private String loginId;
	
	private Integer other_1;
	  
	private Integer other_2;
	  
	private Integer other_3;

	@ApiModelProperty(value = "Log createdBy", position = 9)
	private Integer created_by;
	
	@ApiModelProperty(value = "Log createdDate", position = 10)
	private Timestamp created_dtm;
	
	@ApiModelProperty(value = "Log last_modified_by", position = 11)
	private Integer last_modified_by;
	
	@ApiModelProperty(value = "Log last_modified_dtm", position = 12)
	private Timestamp last_modified_dtm;
	
	private Class<?> clzz;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getOrgId() {
		return orgId;
	}

	public void setOrgId(Integer orgId) {
		this.orgId = orgId;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getLevels() {
		return levels;
	}

	public void setLevels(String levels) {
		this.levels = levels;
	}

	public String getClass_info() {
		return class_info;
	}

	public void setClass_info(String class_info) {
		this.class_info = class_info;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public Integer getCreated_by() {
		return created_by;
	}

	public void setCreated_by(Integer created_by) {
		this.created_by = created_by;
	}

	public Timestamp getCreated_dtm() {
		return created_dtm;
	}

	public void setCreated_dtm(Timestamp created_dtm) {
		this.created_dtm = created_dtm;
	}

	public Integer getLast_modified_by() {
		return last_modified_by;
	}

	public void setLast_modified_by(Integer last_modified_by) {
		this.last_modified_by = last_modified_by;
	}

	public Timestamp getLast_modified_dtm() {
		return last_modified_dtm;
	}

	public void setLast_modified_dtm(Timestamp last_modified_dtm) {
		this.last_modified_dtm = last_modified_dtm;
	}

	public Class<?> getClzz() {
		return clzz;
	}

	public void setClzz(Class<?> clzz) {
		this.clzz = clzz;
	}

	public Integer getOther_1() {
		return other_1;
	}

	public void setOther_1(Integer other_1) {
		this.other_1 = other_1;
	}

	public Integer getOther_2() {
		return other_2;
	}

	public void setOther_2(Integer other_2) {
		this.other_2 = other_2;
	}

	public Integer getOther_3() {
		return other_3;
	}

	public void setOther_3(Integer other_3) {
		this.other_3 = other_3;
	}

	@Override
	public String toString() {
		return "LogDTO [id=" + id + ", orgId=" + orgId + ", ip=" + ip + ", levels=" + levels + ", class_info="
				+ class_info + ", type=" + type + ", message=" + message + ", loginId=" + loginId + ", other_1="
				+ other_1 + ", other_2=" + other_2 + ", other_3=" + other_3 + ", created_by=" + created_by
				+ ", created_dtm=" + created_dtm + ", last_modified_by=" + last_modified_by + ", last_modified_dtm="
				+ last_modified_dtm + ", clzz=" + clzz + "]";
	}

	

	// public static LogDTO convertFromLogToDto(Log log) {
	// LogDTO logDto = new LogDTO();
	// logDto.setId(log.getId());
	// logDto.setIp(log.getIp());
	// logDto.setLevel(log.getLevel());
	// logDto.setClass_info(log.getClassInfo());
	// logDto.setType(log.getType());
	// logDto.setMessage(log.getMessage());
	// return logDto;
	//
	// }

}
