package com.logic.common.enums;

public enum MailStatusEnum {

	UNSENT("_BC1"), HAVE_SENT("_BC2"), SEND_FAILED("_BC3");

	private MailStatusEnum(String code) {
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
