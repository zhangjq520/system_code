package com.logic.system.domain;

public class QuestionCategory {

  private Integer questionId;

  private String category;

  public Integer getQuestionId() {
    return questionId;
  }

  public void setQuestionId(Integer questionId) {
    this.questionId = questionId;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category == null ? null : category.trim();
  }
}
