package com.logic.common.ws.dto.toshiba;

import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlRootElement;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@XmlRootElement
@ApiModel(description = "Request Diagnosis Data DTO")
public class PDDiagDataDTO {

	@ApiModelProperty(name = "id", value = "It's required when add, but not required when update", required = false, position = 1)
	private BigDecimal id;

	@ApiModelProperty(name = "diagRequetId", value = "Request Diagnose Id", required = false, position = 2)
	private BigDecimal diagRequetId;

	@ApiModelProperty(name = "key", value = "key", required = false, position = 3)
	private String key;

	@ApiModelProperty(name = "before_value", value = "before Value", required = false, position = 4)
	private String before_value;

	@ApiModelProperty(name = "value", value = "value", required = false, position = 5)
	private String value;

	@ApiModelProperty(name = "after_value", value = "after Value", required = false, position = 6)
	private String after_value;

	@ApiModelProperty(name = "code_desc_en", value = "code_desc_en", required = false, position = 7)
	private String code_desc_en;

	@ApiModelProperty(name = "code_desc_zh", value = "code_desc_zh", required = false, position = 8)
	private String code_desc_zh;

	public BigDecimal getId() {
		return id;
	}

	public void setId(BigDecimal id) {
		this.id = id;
	}

	public BigDecimal getDiagRequetId() {
		return diagRequetId;
	}

	public void setDiagRequetId(BigDecimal diagRequetId) {
		this.diagRequetId = diagRequetId;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getBefore_value() {
		return before_value;
	}

	public void setBefore_value(String before_value) {
		this.before_value = before_value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getAfter_value() {
		return after_value;
	}

	public void setAfter_value(String after_value) {
		this.after_value = after_value;
	}

	public String getCode_desc_en() {
		return code_desc_en;
	}

	public void setCode_desc_en(String code_desc_en) {
		this.code_desc_en = code_desc_en;
	}

	public String getCode_desc_zh() {
		return code_desc_zh;
	}

	public void setCode_desc_zh(String code_desc_zh) {
		this.code_desc_zh = code_desc_zh;
	}

}
