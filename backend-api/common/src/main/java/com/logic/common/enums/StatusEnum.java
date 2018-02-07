package com.logic.common.enums;

public enum StatusEnum {
  ACTIVE("_A91"), // 有效
  INACTIVE("_A92") // 无效
  ;

  private String code;

  private StatusEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}
