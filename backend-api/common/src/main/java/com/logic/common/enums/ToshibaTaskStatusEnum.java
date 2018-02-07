package com.logic.common.enums;

public enum ToshibaTaskStatusEnum {
    OPEN("_TS1"), IN_PROGRESS("_TS2"), RESOLVED("_TS3"), CLOSED("_TS4"), REOPENED("_TS5"),
    SUB_COMPANY_APPROVING("_TS7"), SUB_COMPANY_APPROVED("_TS8"), HEAD_QUARTERS_ASSIGNING("_TS9"),
    HEAD_QUARTERS_ASSIGNED("_TSA"), DIVISION_APPROVING("_TSB"), DIVISION_APPROVED("_TSC"),
    HEAD_QUARTERS_APPROVING("_TSD"), HEAD_QUARTERS_APPROVED("_TSE");

    private String code;

    private ToshibaTaskStatusEnum(String code) {
        this.code = code;
    }

    public static ToshibaTaskStatusEnum toStatus(String code) {
        for (ToshibaTaskStatusEnum t : ToshibaTaskStatusEnum.values()) {
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
