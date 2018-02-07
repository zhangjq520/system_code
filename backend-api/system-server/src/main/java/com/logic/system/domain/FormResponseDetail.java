package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class FormResponseDetail extends BasePojo {

  private static final long serialVersionUID = -3795138079246900186L;

  private Integer formResponseMasterId;

  private Integer formElementId;

  private String response;
  
  private String comments;
  
  private String attachments;
  
  private Float point;

  public Integer getFormResponseMasterId() {
    return formResponseMasterId;
  }

  public void setFormResponseMasterId(Integer formResponseMasterId) {
    this.formResponseMasterId = formResponseMasterId;
  }

  public Integer getFormElementId() {
    return formElementId;
  }

  public void setFormElementId(Integer formElementId) {
    this.formElementId = formElementId;
  }

  public String getResponse() {
    return response;
  }

  public void setResponse(String response) {
    this.response = response == null ? null : response.trim();
  }

  public String getComments() {
	return comments;
  }

  public void setComments(String comments) {
	this.comments = comments;
  }

  public String getAttachments() {
	return attachments;
  }

  public void setAttachments(String attachments) {
	this.attachments = attachments;
  }

  public Float getPoint() {
	return point;
  }

  public void setPoint(Float point) {
	this.point = point;
  }
  
}
