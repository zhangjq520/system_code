package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class QuestionOptionalAnswer extends BasePojo {

  private static final long serialVersionUID = -96980500224305673L;

  private Integer questionId;

  private String answerSeq;

  private Integer point;

  private String answerText;

  private Boolean acceptable;

  public Integer getQuestionId() {
    return questionId;
  }

  public void setQuestionId(Integer questionId) {
    this.questionId = questionId;
  }

  public String getAnswerSeq() {
    return answerSeq;
  }

  public void setAnswerSeq(String answerSeq) {
    this.answerSeq = answerSeq == null ? null : answerSeq.trim();
  }

  public Integer getPoint() {
    return point;
  }

  public void setPoint(Integer point) {
    this.point = point;
  }

  public String getAnswerText() {
    return answerText;
  }

  public void setAnswerText(String answerText) {
    this.answerText = answerText == null ? null : answerText.trim();
  }

  public Boolean getAcceptable() {
    return acceptable;
  }

  public void setAcceptable(Boolean acceptable) {
    this.acceptable = acceptable;
  }

}
