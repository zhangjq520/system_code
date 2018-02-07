package com.logic.common.enums;

public enum LogLevelEnum {
  DEBUG("_A61"), INFO("_A62"), WARN("_A63"), ERROR("_A64"), FATAL("_A65");

  private String code;

  private LogLevelEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}
