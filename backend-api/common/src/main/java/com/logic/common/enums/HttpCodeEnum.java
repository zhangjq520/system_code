package com.logic.common.enums;

public enum HttpCodeEnum {
  OK(200), CREATED(201), UNAUTHORIZED(401), FORBIDDEN(403), NOT_IMPLEMENTED(501);

  private HttpCodeEnum(Integer code) {
    this.code = code;
  }

  Integer code;

  public Integer getCode() {
    return code;
  }

  public void setCode(Integer code) {
    this.code = code;
  }

}
