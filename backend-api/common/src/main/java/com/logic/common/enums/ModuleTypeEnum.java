package com.logic.common.enums;

public enum ModuleTypeEnum {
  FOLDER("_A51"), // 目录
  FUNCTION("_A52"), // 功能
  SUB_FUNCTION("_A53") // 子功能
  ;

  private String code;

  private ModuleTypeEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
