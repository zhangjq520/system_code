package com.logic.common.enums;

/**
 * Created by albert on 16-2-2.
 */
public enum ToshibaApplyType {

    MIDDLE_CHECK_FIRST("Z31-110"),
    MIDDLE_CHECK_SECOND("Z32-210"),
    
    DIAG_CHECK_FIRST("Z33-20"),
    DIAG_CHECK_SECOND("Z34-50"),
    DIAG_CHECK_3RD("Z35-80"),
    DIAG_CHECK_HELP("Z36-100"),

    OVERALL_CHECK_FIRST("Z36-310"),
    OVERALL_CHECK_SECCOND("Z37-410"),
    OVERALL_CHECK_3RD("Z38-510"),
    OTHER("");
    ;
    private String code;

    private ToshibaApplyType(String code){this.code=code;}

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public static ToshibaApplyType toType(String code){
        for(ToshibaApplyType toshibaApplyType : ToshibaApplyType.values()){
            if(toshibaApplyType.getCode().equalsIgnoreCase(code)){
                return toshibaApplyType;
            }
        }
        return OTHER;
    }
}
