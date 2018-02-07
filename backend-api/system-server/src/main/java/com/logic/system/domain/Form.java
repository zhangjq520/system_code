package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.List;

public class Form extends BasePojo {

  private static final long serialVersionUID = 1262659866458113688L;

  private String code;

  private String style;

  private String shortDesc;

  private String longDesc;

  private String status;

  private String theme;

  private String other1;
  private String other2;
  private String other3;
  private String other4;
  private String other5;
  private String other6;
  private String other7;
  private String other8;
  private String other9;

  private List<OrgForm> orgForms;
  
  private List<FormStep> formStepList;
  
  private List<FormSection> formSectionList;
  
  private List<FormElement> formElementList;
  
  private List<FormElementOptionalAnswer> formElementOptionalAnswerList;
  
  private FormResponseMaster formResponseMaster;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code == null ? null : code.trim();
  }

  public String getStyle() {
    return style;
  }

  public void setStyle(String style) {
    this.style = style == null ? null : style.trim();
  }

  public String getShortDesc() {
    return shortDesc;
  }

  public void setShortDesc(String shortDesc) {
    this.shortDesc = shortDesc == null ? null : shortDesc.trim();
  }

  public String getLongDesc() {
    return longDesc;
  }

  public void setLongDesc(String longDesc) {
    this.longDesc = longDesc == null ? null : longDesc.trim();
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getTheme() {
    return theme;
  }

  public void setTheme(String theme) {
    this.theme = theme == null ? null : theme.trim();
  }

  public List<OrgForm> getOrgForms() {
    return orgForms;
  }

  public void setOrgForms(List<OrgForm> orgForms) {
    this.orgForms = orgForms;
  }

public List<FormStep> getFormStepList() {
	return formStepList;
}

public void setFormStepList(List<FormStep> formStepList) {
	this.formStepList = formStepList;
}

public List<FormSection> getFormSectionList() {
	return formSectionList;
}

public void setFormSectionList(List<FormSection> formSectionList) {
	this.formSectionList = formSectionList;
}

public List<FormElement> getFormElementList() {
	return formElementList;
}

public void setFormElementList(List<FormElement> formElementList) {
	this.formElementList = formElementList;
}

public List<FormElementOptionalAnswer> getFormElementOptionalAnswerList() {
	return formElementOptionalAnswerList;
}

public void setFormElementOptionalAnswerList(List<FormElementOptionalAnswer> formElementOptionalAnswerList) {
	this.formElementOptionalAnswerList = formElementOptionalAnswerList;
}

public FormResponseMaster getFormResponseMaster() {
	return formResponseMaster;
}

public void setFormResponseMaster(FormResponseMaster formResponseMaster) {
	this.formResponseMaster = formResponseMaster;
}

  public String getOther1() {
    return other1;
  }

  public void setOther1(String other1) {
    this.other1 = other1;
  }

  public String getOther3() {
    return other3;
  }

  public void setOther3(String other3) {
    this.other3 = other3;
  }

  public String getOther2() {
    return other2;
  }

  public void setOther2(String other2) {
    this.other2 = other2;
  }

  public String getOther4() {
    return other4;
  }

  public void setOther4(String other4) {
    this.other4 = other4;
  }

  public String getOther5() {
    return other5;
  }

  public void setOther5(String other5) {
    this.other5 = other5;
  }

  public String getOther6() {
    return other6;
  }

  public void setOther6(String other6) {
    this.other6 = other6;
  }

  public String getOther7() {
    return other7;
  }

  public void setOther7(String other7) {
    this.other7 = other7;
  }

  public String getOther8() {
    return other8;
  }

  public void setOther8(String other8) {
    this.other8 = other8;
  }

  public String getOther9() {
    return other9;
  }

  public void setOther9(String other9) {
    this.other9 = other9;
  }
}
