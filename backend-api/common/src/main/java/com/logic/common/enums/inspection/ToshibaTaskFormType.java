package com.logic.common.enums.inspection;

/**
 * Created by albert on 16-2-16.
 */
public enum ToshibaTaskFormType {

    MIDDLE_CHECK_FORM("_T71"),
    RE_MIDDLE_CHECK_FORM("_T72"),
    DIAGNOSE_FORM("_T73"),
    RE_DIAGNOSE_FORM("_T74"),
    DIAGNOSE_COMMIT_FORM("_T75"),
    RE_DIAGNOSE_COMMIT_FORM("_T76"),
    OVERALL_CHECK_FORM("_T78")
    ;
    private String code;

    ToshibaTaskFormType(String code) {
        this.code = code;
    }

    public String getCode(){ return code;}
}
