package com.logic.common.ws.dto.system;

import java.util.List;

//import com.system.domain.FormElement;
//import com.system.domain.FormElementCategory;
//import com.system.domain.FormElementOptionalAnswer;
//import com.system.domain.FormElementReferenceItem;
//import com.system.enums.ErrorMessageEnum;
//import com.system.exception.BusinessException;
//import com.system.util.SysUtil;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Form Element Question DTO")
public class FormElementQuestionDTO {

  @ApiModelProperty(value = "Form element ID, don't need when add a form element", position = 1)
  private String id;

  @ApiModelProperty(value = "Form element Code, unique", allowableValues = "maxlength:10", required = true, position = 2)
  private String code;

  @ApiModelProperty(value = "Form element question subject description", required = true, position = 3)
  private String subject;

  @ApiModelProperty(value = "Reference item list", position = 4)
  private List<Integer> reference_item;

  @ApiModelProperty(value = "Response type", required = true, position = 5)
  private String type;
  
  @ApiModelProperty(value = "score", required = true, position = 5)
  private String score;
  
  @ApiModelProperty(value = "When response type selected numeric, the acceptable range start", position = 6)
  private String numeric_acceptable_range_start;

  @ApiModelProperty(value = "When response type selected numeric, the acceptable range end", position = 7)
  private String numeric_acceptable_range_end;

  @ApiModelProperty(value = "When response type selected logical, the acceptable answer", position = 8)
  private String logical_acceptable_answer;

  @ApiModelProperty(value = "When response type selected dropdown, the acceptable options", position = 9)
  private List<FormDropdownOptionsDTO> form_dropdown_options;

  @ApiModelProperty(value = "Question type list", position = 10)
  private List<String> question_category;

  @ApiModelProperty(value = "Status", required = true, position = 11)
  private String status;
  
  @ApiModelProperty(value = "other_1", required = true, position = 16)
  private String part;
  
  @ApiModelProperty(value = "other_1", required = true, position = 17)
  private String cause;
  
  @ApiModelProperty(value = "other_1", required = true, position = 18)
  private String corrective_action;

  @ApiModelProperty(value = "must_true", required = true, position = 18)
  private String must_true;

  @ApiModelProperty(value = "Reference item string", hidden = true, position = 12)
  private String sReference_item;

  @ApiModelProperty(value = "Question type string", hidden = true, position = 13)
  private String sQuestion_type;

  @ApiModelProperty(value = "Form ID", hidden = true, position = 14)
  private String form_id;

  @ApiModelProperty(value = "Form section ID", hidden = true, position = 15)
  private String section_id;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getSubject() {
    return subject;
  }

  public void setSubject(String subject) {
    this.subject = subject;
  }

  public List<Integer> getReference_item() {
    return reference_item;
  }

  public void setReference_item(List<Integer> reference_item) {
    this.reference_item = reference_item;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getNumeric_acceptable_range_start() {
    return numeric_acceptable_range_start;
  }

  public void setNumeric_acceptable_range_start(String numeric_acceptable_range_start) {
    this.numeric_acceptable_range_start = numeric_acceptable_range_start;
  }

  public String getNumeric_acceptable_range_end() {
    return numeric_acceptable_range_end;
  }

  public void setNumeric_acceptable_range_end(String numeric_acceptable_range_end) {
    this.numeric_acceptable_range_end = numeric_acceptable_range_end;
  }

  public String getLogical_acceptable_answer() {
    return logical_acceptable_answer;
  }

  public void setLogical_acceptable_answer(String logical_acceptable_answer) {
    this.logical_acceptable_answer = logical_acceptable_answer;
  }

  public List<FormDropdownOptionsDTO> getForm_dropdown_options() {
    return form_dropdown_options;
  }

  public void setForm_dropdown_options(List<FormDropdownOptionsDTO> form_dropdown_options) {
    this.form_dropdown_options = form_dropdown_options;
  }

   public List<String> getQuestion_category() {
	return question_category;
  }

   public void setQuestion_category(List<String> question_category) {
	this.question_category = question_category;
   }

public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getsReference_item() {
    return sReference_item;
  }

  public void setsReference_item(String sReference_item) {
    this.sReference_item = sReference_item;
  }

  public String getsQuestion_type() {
    return sQuestion_type;
  }

  public void setsQuestion_type(String sQuestion_type) {
    this.sQuestion_type = sQuestion_type;
  }

  public String getForm_id() {
    return form_id;
  }

  public void setForm_id(String form_id) {
    this.form_id = form_id;
  }

  public String getSection_id() {
    return section_id;
  }

  public void setSection_id(String section_id) {
    this.section_id = section_id;
  }

  public String getPart() {
    return part;
  }

  public void setPart(String part) {
    this.part = part;
  }

  public String getCause() {
    return cause;
  }

  public void setCause(String cause) {
    this.cause = cause;
  }

  public String getCorrective_action() {
    return corrective_action;
  }

  public void setCorrective_action(String corrective_action) {
    this.corrective_action = corrective_action;
  }

  public String getScore() {
	return score;
  }

  public void setScore(String score) {
	this.score = score;
  }

  public String getMust_true() {
    return must_true;
  }

  public void setMust_true(String must_true) {
    this.must_true = must_true;
  }
}
