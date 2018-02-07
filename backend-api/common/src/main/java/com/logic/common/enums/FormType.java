package com.logic.common.enums;

public enum FormType {
	MIDDLE_CHECK_FORM("_T71"), REMAIN_MIDDLE_CHECK_FORM("_T72"), DIAGNOSE_FORM("_T73"), REMAIN_DIAGNOSE_FORM("_T74"), COMMIT_DIAGNOSE_FORM("_T75"), REMAIN_COMMIT_DIAGNOSE_FORM("_T76"), OVERALL_CHECK("_T78"), OTHER("");

	private String code;

	private FormType(String code) {
		this.code = code;
	}

	public static FormType toType(String code) {
		for (FormType t : FormType.values()) {
			if (t.getCode().equals(code)) {
				return t;
			}
		}
		return OTHER;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
