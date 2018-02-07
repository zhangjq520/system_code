package com.logic.common.enums;

public enum ScheduleStatusEnum {

	COMPLETED("_A101"), FAILED("_A102");

	private ScheduleStatusEnum(String code) {
		this.code = code;
	}

	private String code;

	public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
