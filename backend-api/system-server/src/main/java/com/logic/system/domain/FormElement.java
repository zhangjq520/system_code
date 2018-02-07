package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.List;

public class FormElement extends BasePojo {

  private static final long serialVersionUID = 1196224813533580797L;

  private Integer formId;

  private Integer seq;

  private String elementType;

  private String code;

  private String type;
  
  private String other1;
  
  private String other2;
  
  private String other3;

  private String other4;

  private String subjectDesc;

  private String inputDesc;

  private String correctResponse;

  private Double correctNumberStart;

  private Double correctNumberEnd;

  private String inputForException;

  private String parentAnswerCode;

  private String viewName;

  private String columnForDisplay;

  private String columnForValue;

  private String whereClause;

  private String headerText;

  private Integer refQuestionId;

  private Short required;

  private Double point;

  private Boolean isSummary;

  private Boolean isInvalid;

  private Boolean isSummaryHidden;

  private Integer stepId;

  private Integer sectionId;

  private String subject;

  private String status;

  private String questionCategory;

  private String questionReferenceItem;

  private List<FormElementReferenceItem> questionReferenceItems;

  private List<FormElementOptionalAnswer> formElementOptionalAnswer;

  private List<FormElementCategory> questionCategories;

  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public Integer getSeq() {
    return seq;
  }

  public void setSeq(Integer seq) {
    this.seq = seq;
  }

  public String getElementType() {
    return elementType;
  }

  public void setElementType(String elementType) {
    this.elementType = elementType == null ? null : elementType.trim();
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type == null ? null : type.trim();
  }

  public String getSubjectDesc() {
    return subjectDesc;
  }

  public void setSubjectDesc(String subjectDesc) {
    this.subjectDesc = subjectDesc == null ? null : subjectDesc.trim();
  }

  public String getInputDesc() {
    return inputDesc;
  }

  public void setInputDesc(String inputDesc) {
    this.inputDesc = inputDesc == null ? null : inputDesc.trim();
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getCorrectResponse() {
    return correctResponse;
  }

  public void setCorrectResponse(String correctResponse) {
    this.correctResponse = correctResponse;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Double getCorrectNumberStart() {
    return correctNumberStart;
  }

  public void setCorrectNumberStart(Double correctNumberStart) {
    this.correctNumberStart = correctNumberStart;
  }

  public Double getCorrectNumberEnd() {
    return correctNumberEnd;
  }

  public void setCorrectNumberEnd(Double correctNumberEnd) {
    this.correctNumberEnd = correctNumberEnd;
  }

  public String getInputForException() {
    return inputForException;
  }

  public void setInputForException(String inputForException) {
    this.inputForException = inputForException == null ? null : inputForException.trim();
  }

  public String getParentAnswerCode() {
    return parentAnswerCode;
  }

  public void setParentAnswerCode(String parentAnswerCode) {
    this.parentAnswerCode = parentAnswerCode == null ? null : parentAnswerCode.trim();
  }

  public String getViewName() {
    return viewName;
  }

  public void setViewName(String viewName) {
    this.viewName = viewName == null ? null : viewName.trim();
  }

  public String getColumnForDisplay() {
    return columnForDisplay;
  }

  public void setColumnForDisplay(String columnForDisplay) {
    this.columnForDisplay = columnForDisplay == null ? null : columnForDisplay.trim();
  }

  public String getColumnForValue() {
    return columnForValue;
  }

  public void setColumnForValue(String columnForValue) {
    this.columnForValue = columnForValue == null ? null : columnForValue.trim();
  }

  public String getWhereClause() {
    return whereClause;
  }

  public void setWhereClause(String whereClause) {
    this.whereClause = whereClause == null ? null : whereClause.trim();
  }

  public String getHeaderText() {
    return headerText;
  }

  public void setHeaderText(String headerText) {
    this.headerText = headerText == null ? null : headerText.trim();
  }

  public Integer getRefQuestionId() {
    return refQuestionId;
  }

  public void setRefQuestionId(Integer refQuestionId) {
    this.refQuestionId = refQuestionId;
  }

  public Short getRequired() {
    return required;
  }

  public void setRequired(Short required) {
    this.required = required;
  }

  public Double getPoint() {
    return point;
  }

  public void setPoint(Double point) {
    this.point = point;
  }

  public Boolean getIsSummary() {
    return isSummary;
  }

  public void setIsSummary(Boolean isSummary) {
    this.isSummary = isSummary;
  }

  public Boolean getIsInvalid() {
    return isInvalid;
  }

  public void setIsInvalid(Boolean isInvalid) {
    this.isInvalid = isInvalid;
  }

  public Boolean getIsSummaryHidden() {
    return isSummaryHidden;
  }

  public void setIsSummaryHidden(Boolean isSummaryHidden) {
    this.isSummaryHidden = isSummaryHidden;
  }

  public Integer getStepId() {
    return stepId;
  }

  public void setStepId(Integer stepId) {
    this.stepId = stepId;
  }

  public Integer getSectionId() {
    return sectionId;
  }

  public void setSectionId(Integer sectionId) {
    this.sectionId = sectionId;
  }

  public String getSubject() {
    return subject;
  }

  public void setSubject(String subject) {
    this.subject = subject == null ? null : subject.trim();
  }

  public String getQuestionCategory() {
    return questionCategory;
  }

  public void setQuestionCategory(String questionCategory) {
    this.questionCategory = questionCategory;
  }

  public String getQuestionReferenceItem() {
    return questionReferenceItem;
  }

  public void setQuestionReferenceItem(String questionReferenceItem) {
    this.questionReferenceItem = questionReferenceItem;
  }

  public List<FormElementReferenceItem> getQuestionReferenceItems() {
    return questionReferenceItems;
  }

  public void setQuestionReferenceItems(List<FormElementReferenceItem> questionReferenceItems) {
    this.questionReferenceItems = questionReferenceItems;
  }

  public List<FormElementOptionalAnswer> getFormElementOptionalAnswer() {
    return formElementOptionalAnswer;
  }

  public void setFormElementOptionalAnswer(List<FormElementOptionalAnswer> formElementOptionalAnswer) {
    this.formElementOptionalAnswer = formElementOptionalAnswer;
  }

  public List<FormElementCategory> getQuestionCategories() {
    return questionCategories;
  }

  public void setQuestionCategories(List<FormElementCategory> questionCategories) {
    this.questionCategories = questionCategories;
  }

  public String getOther1() {
	return other1;
  }

  public void setOther1(String other1) {
	this.other1 = other1;
  }

  public String getOther2() {
	return other2;
  }

  public void setOther2(String other2) {
	this.other2 = other2;
  }

  public String getOther3() {
	return other3;
  }

  public void setOther3(String other3) {
	this.other3 = other3;
  }

  @Override
  public int hashCode() {
    if(code == null || "".equals(code) ){
      return subject.hashCode();
    }
    return code.hashCode();
  }

  @Override
  public boolean equals(Object obj) {
    FormElement element = (FormElement) obj;
    if(code==null || "".equals(code)){
      return false;
    }
    return code.equalsIgnoreCase(element.getCode());
  }

  public String getOther4() {
    return other4;
  }

  public void setOther4(String other4) {
    this.other4 = other4;
  }
}
