package com.logic.system.ws.dto;

public class FormDetailDTO {
	private String id;

	  private String elementId;
	  
	  private String elementCode;
	  
	  private String elementType;
	  
	  private String elementSubject;
	  
	  private String elementSubjectDesc;
	  
	  private String parentAnswerCode;
	  
	  private Integer formId;	 
	  
	  private Integer sectionId;
	  
	  private String sectionCode;

	  private String response;
	  
	  private String responseValue;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getElementId() {
		return elementId;
	}

	public void setElementId(String elementId) {
		this.elementId = elementId;
	}

	public String getElementCode() {
		return elementCode;
	}

	public void setElementCode(String elementCode) {
		this.elementCode = elementCode;
	}

	public String getElementType() {
		return elementType;
	}

	public void setElementType(String elementType) {
		this.elementType = elementType;
	}

	public String getElementSubject() {
		return elementSubject;
	}

	public void setElementSubject(String elementSubject) {
		this.elementSubject = elementSubject;
	}

	public String getElementSubjectDesc() {
		return elementSubjectDesc;
	}

	public void setElementSubjectDesc(String elementSubjectDesc) {
		this.elementSubjectDesc = elementSubjectDesc;
	}

	public String getParentAnswerCode() {
		return parentAnswerCode;
	}

	public void setParentAnswerCode(String parentAnswerCode) {
		this.parentAnswerCode = parentAnswerCode;
	}
	
	public Integer getFormId() {
		return formId;
	}

	public void setFormId(Integer formId) {
		this.formId = formId;
	}

	public Integer getSectionId() {
		return sectionId;
	}

	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}

	public String getSectionCode() {
		return sectionCode;
	}

	public void setSectionCode(String sectionCode) {
		this.sectionCode = sectionCode;
	}

	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}

	public String getResponseValue() {
		return responseValue;
	}

	public void setResponseValue(String responseValue) {
		this.responseValue = responseValue;
	}
	 
}