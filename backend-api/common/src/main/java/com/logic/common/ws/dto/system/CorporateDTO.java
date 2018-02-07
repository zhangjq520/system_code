package com.logic.common.ws.dto.system;

import java.math.BigDecimal;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Corporate structure DTO")
public class CorporateDTO {

	@ApiModelProperty(value = "Corporate structure ID, don't need when add a corporate structure", position = 1)
	private String id;

	@ApiModelProperty(value = "Corporate structure type", allowableValues = "_A81, _A82, _A83, _A84, _A85", required = true, position = 2)
	private String org_type;

	@ApiModelProperty(value = "Corporate structure code, unique", required = true, position = 3)
	private String code;

	@ApiModelProperty(value = "Corporate structure short name", required = true, position = 4)
	private String short_name;

	@ApiModelProperty(value = "Corporate structure full name", required = true, position = 5)
	private String full_name;

	@ApiModelProperty(value = "Parent Corporate structure", position = 6)
	private String parent_id;

	@ApiModelProperty(value = "Corporate description", hidden = true, position = 7)
	private String description;

	@ApiModelProperty(value = "Corporate description status", allowableValues = "_A91, _A92", required = true, position = 8)
	private String status;

	@ApiModelProperty(value = "Corporate description manager id", position = 9)
	private String manager_id;

	@ApiModelProperty(value = "Corporate address id", position = 10)
	private String address_id;

	@ApiModelProperty(value = "Whether Corporate structure have children", hidden = true, position = 11)
	private String has_children;

	@ApiModelProperty(value = "Corporate structure path", hidden = true, position = 12)
	private String path;

	private String parent_short_name;
	private String manager_name;

	@ApiModelProperty(value = "Child corporates", hidden = true, position = 13)
	private List<CorporateDTO> childCorporates;

	public String getOrg_type() {
		return org_type;
	}

	public void setOrg_type(String org_type) {
		this.org_type = org_type;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getShort_name() {
		return short_name;
	}

	public void setShort_name(String short_name) {
		this.short_name = short_name;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getParent_id() {
		return parent_id;
	}

	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getManager_id() {
		return manager_id;
	}

	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}

	public String getAddress_id() {
		return address_id;
	}

	public void setAddress_id(String address_id) {
		this.address_id = address_id;
	}

	public String getHas_children() {
		return has_children;
	}

	public void setHas_children(String has_children) {
		this.has_children = has_children;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public List<CorporateDTO> getChildCorporates() {
		return childCorporates;
	}

	public void setChildCorporates(List<CorporateDTO> childCorporates) {
		this.childCorporates = childCorporates;
	}

	public String getParent_short_name() {
		return parent_short_name;
	}

	public void setParent_short_name(String parent_short_name) {
		this.parent_short_name = parent_short_name;
	}

	public String getManager_name() {
		return manager_name;
	}

	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	
}
