package com.logic.system.ws.dto;

public class FormElementDTO {
	private Integer id;

	private Integer seq;

	private String code;

	private String type;
	
	private String subject;

	private String subjectDesc;

	private String parentAnswerCode;

	private Integer sectionId;
	
	private Boolean isSummary;

	private String status;
	
	private String sectionName;
	
	private String sectionCode;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubjectDesc() {
		return subjectDesc;
	}

	public void setSubjectDesc(String subjectDesc) {
		this.subjectDesc = subjectDesc;
	}

	public String getParentAnswerCode() {
		return parentAnswerCode;
	}

	public void setParentAnswerCode(String parentAnswerCode) {
		this.parentAnswerCode = parentAnswerCode;
	}

	public Integer getSectionId() {
		return sectionId;
	}

	public void setSectionId(Integer sectionId) {
		this.sectionId = sectionId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Boolean getIsSummary() {
		return isSummary;
	}

	public void setIsSummary(Boolean isSummary) {
		this.isSummary = isSummary;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getSectionCode() {
		return sectionCode;
	}

	public void setSectionCode(String sectionCode) {
		this.sectionCode = sectionCode;
	}
}