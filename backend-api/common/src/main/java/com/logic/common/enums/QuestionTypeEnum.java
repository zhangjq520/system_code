package com.logic.common.enums;

public enum QuestionTypeEnum {
  Chemical("_AN1"), Environment("_AN2"), Health("_AN3"), Safety("_AN4");

  private String code;

  private QuestionTypeEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
