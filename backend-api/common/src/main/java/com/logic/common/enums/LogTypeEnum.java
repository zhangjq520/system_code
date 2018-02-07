package com.logic.common.enums;

public enum LogTypeEnum {
  ADD("_A71"), EDIT("_A72"), QUERY("_A73"), DELETE("_A74"), AUDIT("_A75"), EXTENSION("_A76"), OPEN("_A77"), CLOSE("_A78");

  private String code;

  private LogTypeEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}
