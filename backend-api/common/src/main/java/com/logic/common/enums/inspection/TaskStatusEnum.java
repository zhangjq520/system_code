package com.logic.common.enums.inspection;

public enum TaskStatusEnum {
  PENDING_TASK("B41"), TODO_TASK("B42"), COMPLETED_TASK("B43");

  private String code;

  private TaskStatusEnum(String code) {
    this.code = code;
  }

  public static TaskStatusEnum toStatus(String code) {
    for (TaskStatusEnum t : TaskStatusEnum.values()) {
      if (t.getCode().equals(code)) {
        return t;
      }
    }
    return null;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}
