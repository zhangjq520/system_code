package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class FormSection extends BasePojo {

  private static final long serialVersionUID = -8765834725937703574L;

  private Integer seq;

  private Integer formId;

  private Integer stepId;

  private String name;

  private String code;

  private Integer columns;

  public Integer getSeq() {
    return seq;
  }

  public void setSeq(Integer seq) {
    this.seq = seq;
  }

  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

  public Integer getStepId() {
    return stepId;
  }

  public void setStepId(Integer stepId) {
    this.stepId = stepId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name == null ? null : name.trim();
  }

  public Integer getColumns() {
    return columns;
  }

  public void setColumns(Integer columns) {
    this.columns = columns;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}
