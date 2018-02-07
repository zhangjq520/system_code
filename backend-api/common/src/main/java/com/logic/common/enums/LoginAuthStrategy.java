package com.logic.common.enums;

public enum LoginAuthStrategy {
    K12("k12"), DATBASE("db");

    private String code;

    private LoginAuthStrategy(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
