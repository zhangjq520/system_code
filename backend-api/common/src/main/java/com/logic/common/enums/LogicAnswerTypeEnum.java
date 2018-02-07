package com.logic.common.enums;

public enum LogicAnswerTypeEnum {
  Yes("_AM1"), No("_AM2"), Unknown("_AM3");

  private String code;

  private LogicAnswerTypeEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
