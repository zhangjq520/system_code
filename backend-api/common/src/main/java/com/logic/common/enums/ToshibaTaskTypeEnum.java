package com.logic.common.enums;

public enum ToshibaTaskTypeEnum {
    MIDDLE_CHECK("_T11"), DIAGNOSE("_T12"), OVERALL_CHECK("_T13"), Other("");

    private String code;

    private ToshibaTaskTypeEnum(String code) {
        this.code = code;
    }

    public static ToshibaTaskTypeEnum toType(String code) {
        for (ToshibaTaskTypeEnum t : ToshibaTaskTypeEnum.values()) {
            if (t.getCode().equals(code)) {
                return t;
            }
        }
        return Other;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
