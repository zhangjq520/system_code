package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Form DTO")
public class FormDTO {

  @ApiModelProperty(value = "Form ID, don't need when add a question", position = 1)
  private String id;

  @ApiModelProperty(value = "Form code", required = true, position = 2)
  private String code;

  @ApiModelProperty(value = "Form name", required = true, position = 3)
  private String form_name;

  @ApiModelProperty(value = "Form description", position = 4)
  private String form_description;
  
  @ApiModelProperty(value = "Form type", position = 4)
  private String style;
  
  @ApiModelProperty(value = "Form status", position = 5)
  private String status;

  private String machine_type;

  @ApiModelProperty(value = "Form status", position = 5)
  private String created_date;
  
  @ApiModelProperty(value = "Form created by id", hidden = true, position = 6)
  private String created_by_id;

  @ApiModelProperty(value = "Form created by name", hidden = true, position = 7)
  private String created_by_name;

  @ApiModelProperty(value = "Form updated by id", hidden = true, position = 8)
  private String updated_by_id;

  @ApiModelProperty(value = "Form updated by name", hidden = true, position = 9)
  private String updated_by_name;

  @ApiModelProperty(value = "Form updated date", hidden = true, position = 10)
  private String updated_date;

  @ApiModelProperty(value = "Org ids, seperated with comma of multiple values", position = 11)
  private String org_ids;
  
  @ApiModelProperty(value = "total score", required = true, position = 2)
  private String total_score;
  
  @ApiModelProperty(value = "pass score", required = true, position = 2)
  private String pass_score;

  @ApiModelProperty(value = "task id",  hidden = true ,position = 2)
  private Integer task_id;

  private String apply_type;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getForm_name() {
    return form_name;
  }

  public void setForm_name(String form_name) {
    this.form_name = form_name;
  }

  public String getForm_description() {
    return form_description;
  }

  public void setForm_description(String form_description) {
    this.form_description = form_description;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getCreated_by_name() {
    return created_by_name;
  }

  public void setCreated_by_name(String created_by_name) {
    this.created_by_name = created_by_name;
  }

  public String getUpdated_by_id() {
    return updated_by_id;
  }

  public void setUpdated_by_id(String updated_by_id) {
    this.updated_by_id = updated_by_id;
  }

  public String getUpdated_by_name() {
    return updated_by_name;
  }

  public void setUpdated_by_name(String updated_by_name) {
    this.updated_by_name = updated_by_name;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getCreated_by_id() {
    return created_by_id;
  }

  public void setCreated_by_id(String created_by_id) {
    this.created_by_id = created_by_id;
  }

  public String getUpdated_date() {
    return updated_date;
  }

  public void setUpdated_date(String updated_date) {
    this.updated_date = updated_date;
  }

  public String getOrg_ids() {
    return org_ids;
  }

  public void setOrg_ids(String org_ids) {
    this.org_ids = org_ids;
  }

  public String getTotal_score() {
	return total_score;
  }

  public void setTotal_score(String total_score) {
	this.total_score = total_score;
  }

  public String getPass_score() {
	return pass_score;
  }

  public void setPass_score(String pass_score) {
	this.pass_score = pass_score;
  }

  public String getStyle() {
	return style;
  }

  public void setStyle(String style) {
	this.style = style;
  }

  public Integer getTask_id() {
    return task_id;
  }

  public void setTask_id(Integer task_id) {
    this.task_id = task_id;
  }

  public String getCreated_date() {
    return created_date;
  }

  public void setCreated_date(String created_date) {
    this.created_date = created_date;
  }

  public String getMachine_type() {
    return machine_type;
  }

  public void setMachine_type(String machine_type) {
    this.machine_type = machine_type;
  }

  public String getApply_type() {
    return apply_type;
  }

  public void setApply_type(String apply_type) {
    this.apply_type = apply_type;
  }

  //  public Form convertFromDtoToForm() throws BusinessException {
//    Form form = new Form();
//    form.setId(SysUtil.getValidDtoInteger(this.getId(), "Form DTO id"));
//    form.setCode(this.getCode());
//    form.setShortDesc(this.getForm_name());
//    form.setLongDesc(this.getForm_description());
//    form.setStatus(this.getStatus());
//    return form;
//  }
//
//  public static FormDTO convertFromFormToDto(Form form) {
//    FormDTO dto = new FormDTO();
//    dto.setId(form.getId() == null ? null : form.getId().toString());
//    dto.setCode(form.getCode());
//    dto.setForm_name(form.getShortDesc());
//    dto.setForm_description(form.getLongDesc());
//    dto.setStatus(form.getStatus());
//    return dto;
//  }
}
