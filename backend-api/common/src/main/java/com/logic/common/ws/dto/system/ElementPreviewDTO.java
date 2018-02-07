package com.logic.common.ws.dto.system;

import java.util.List;

public class ElementPreviewDTO {

  private String id;

  private String sequence;

  private String code;

  private String subject;

  private List<Integer> reference_item;

  private List<String> question_category;

  private String status;

  private String type;
  
  private String part;
  
  private String cause;
  
  private String corrective_action;

  private String must_true;
  
  private String score;

  //from response detail
  private String response;


  //from pd corrective action detail
  private String pd_errorCause;
  private String pd_corrective_action;
  private String pd_part;

  private List<DropdownOptionsDTO> form_dropdown_options;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getSequence() {
    return sequence;
  }

  public void setSequence(String sequence) {
    this.sequence = sequence;
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

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public List<DropdownOptionsDTO> getForm_dropdown_options() {
    return form_dropdown_options;
  }

  public void setForm_dropdown_options(List<DropdownOptionsDTO> form_dropdown_options) {
    this.form_dropdown_options = form_dropdown_options;
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

  public String getMust_true() {
    return must_true;
  }

  public void setMust_true(String must_true) {
    this.must_true = must_true;
  }

  public String getScore() {
	return score;
  }

  public void setScore(String score) {
	this.score = score;
  }

  public String getResponse() {
    return response;
  }

  public void setResponse(String response) {
    this.response = response;
  }

  public String getPd_errorCause() {
    return pd_errorCause;
  }

  public void setPd_errorCause(String pd_errorCause) {
    this.pd_errorCause = pd_errorCause;
  }

  public String getPd_corrective_action() {
    return pd_corrective_action;
  }

  public void setPd_corrective_action(String pd_corrective_action) {
    this.pd_corrective_action = pd_corrective_action;
  }

  public String getPd_part() {
    return pd_part;
  }

  public void setPd_part(String pd_part) {
    this.pd_part = pd_part;
  }
}
