package com.logic.common.ws.dto.system;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Module DTO")
public class ModuleDTO {

	@ApiModelProperty(value = "Module ID, don't need when add a module", position = 1)
	private String id;

	@ApiModelProperty(value = "Module type, don't need when add or update a module", allowableValues = "_A51, _A52, _A53", position = 2)
	private String type;

	@ApiModelProperty(value = "Module Code, unique", allowableValues = "maxlength:10", required = true, position = 3)
	private String code;

	@ApiModelProperty(value = "Module english name", position = 4)
	private String name_en;

	@ApiModelProperty(value = "Module chinese name", position = 5)
	private String name_zh;

	@ApiModelProperty(value = "Module url, don't need when create or update folder module", position = 6)
	private String url;

	@ApiModelProperty(value = "Module english description", position = 7)
	private String descriptions_en;

	@ApiModelProperty(value = "Module chinese description", position = 8)
	private String descriptions_zh;

	@ApiModelProperty(value = "Module parent id, don't need when create root folder", position = 9)
	private String parent_id;

	@ApiModelProperty(value = "Module priority", position = 10)
	private String priority;

	@ApiModelProperty(value = "Module permission, don't need when add or update module", position = 11)
	private String permission_string;

	@ApiModelProperty(value = "Module function, need when add or update function or sub function module", position = 12)
	private ModuleFunctionDTO moduleFunctionDto;

	@ApiModelProperty(value = "child modules", hidden = true, position = 13)
	private List<ModuleDTO> child_modules;

	@ApiModelProperty(value = "Whether the module has children",hidden = true, position = 14)
	private Boolean has_children;

	@ApiModelProperty(value = "Module path", hidden = true, position = 15)
	private String module_path;
	
	@ApiModelProperty(value = "Current operator permission string", hidden = true, position = 16)
	private String operator_permission_string;
	
	@ApiModelProperty(value = "Specific role permission string", hidden = true, position = 17)
	private String role_permission_string;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName_en() {
		return name_en;
	}

	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

	public String getName_zh() {
		return name_zh;
	}

	public void setName_zh(String name_zh) {
		this.name_zh = name_zh;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescriptions_en() {
		return descriptions_en;
	}

	public void setDescriptions_en(String descriptions_en) {
		this.descriptions_en = descriptions_en;
	}

	public String getDescriptions_zh() {
		return descriptions_zh;
	}

	public void setDescriptions_zh(String descriptions_zh) {
		this.descriptions_zh = descriptions_zh;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParent_id() {
		return parent_id;
	}

	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getPermission_string() {
		return permission_string;
	}

	public void setPermission_string(String permission_string) {
		this.permission_string = permission_string;
	}

	public ModuleFunctionDTO getModuleFunctionDto() {
		return moduleFunctionDto;
	}

	public void setModuleFunctionDto(ModuleFunctionDTO moduleFunctionDto) {
		this.moduleFunctionDto = moduleFunctionDto;
	}

	public List<ModuleDTO> getChild_modules() {
		return child_modules;
	}

	public void setChild_modules(List<ModuleDTO> child_modules) {
		this.child_modules = child_modules;
	}

	public Boolean getHas_children() {
		return has_children;
	}

	public void setHas_children(Boolean has_children) {
		this.has_children = has_children;
	}

	public String getModule_path() {
		return module_path;
	}

	public void setModule_path(String module_path) {
		this.module_path = module_path;
	}

	public String getOperator_permission_string() {
		return operator_permission_string;
	}

	public void setOperator_permission_string(String operator_permission_string) {
		this.operator_permission_string = operator_permission_string;
	}

	public String getRole_permission_string() {
		return role_permission_string;
	}

	public void setRole_permission_string(String role_permission_string) {
		this.role_permission_string = role_permission_string;
	}
	
}
