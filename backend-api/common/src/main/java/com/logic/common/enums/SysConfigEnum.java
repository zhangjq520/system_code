package com.logic.common.enums;

public enum SysConfigEnum {
  FILE_LOCAT_PATH("file.local.path"), 
  FILE_REMOTE_PATH("file.remote.path"), 
  DATABASE_READ_PREFIX("database.read.prefix"), 
  DATABASE_WRITE_PREFIX("database.write.prefix"), 
  ;

  private String code;

  private SysConfigEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}