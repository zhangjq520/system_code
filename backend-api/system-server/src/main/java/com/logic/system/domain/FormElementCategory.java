package com.logic.system.domain;

public class FormElementCategory {

  private Integer formElementId;

  private String category;

  public Integer getFormElementId() {
    return formElementId;
  }

  public void setFormElementId(Integer formElementId) {
    this.formElementId = formElementId;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category == null ? null : category.trim();
  }
}
