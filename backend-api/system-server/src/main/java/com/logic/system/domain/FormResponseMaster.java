package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.List;

public class FormResponseMaster extends BasePojo {

  private static final long serialVersionUID = 2837127922980232897L;

  private Integer userId;

  private Integer formId;
  
  private Integer taskId;

  private List<FormResponseDetail> responseDetailList;

  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }

  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }
  
  public Integer getTaskId() {
	return taskId;
  }

  public void setTaskId(Integer taskId) {
	this.taskId = taskId;
  }

  public List<FormResponseDetail> getResponseDetailList() {
    return responseDetailList;
  }

  public void setResponseDetailList(List<FormResponseDetail> responseDetailList) {
    this.responseDetailList = responseDetailList;
  }

}
