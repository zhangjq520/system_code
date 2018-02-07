package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class FormStep extends BasePojo {

  private static final long serialVersionUID = -6058748136964880542L;

  private Integer seq;

  private String name;

  private Integer formId;

  public Integer getSeq() {
    return seq;
  }

  public void setSeq(Integer seq) {
    this.seq = seq;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name == null ? null : name.trim();
  }

  public Integer getFormId() {
    return formId;
  }

  public void setFormId(Integer formId) {
    this.formId = formId;
  }

}
