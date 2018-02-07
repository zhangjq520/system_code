package com.logic.system.wsdl.utils;

/**
 * Author: omer 
 * Date  : 04-03-2016
 */
public class CDataTags {

    // specify which of your elements you want to be handled as CDATA.
    // The use of the '^' between the namespaceURI and the localname
    // seems to be an implementation detail of the xerces code.
    // When processing xml that doesn't use namespaces, simply omit the
    // namespace prefix as shown in the third CDataElement below.
    private static String[] values = new String[]{
            // ROOT
            "^LastRemark",
            "^SharePath",
            // Table "HEAD"
            "^PROJECT_ID",
            "^PROJECT_NAME",
            "^INSTALL_COMPANY",
            "^INSTALL_CUSTOMER",
            "^INSTALL_DIRECTOR",
            "^DIRECTOR_TEL",
            "^LOCAL_ADRESS",
            "^COMPANY_ID",
            "^ZJY",
            "^MEID",
            "^TEST11",
            "^AA",
            "^STYLE",
            "^TYPE",
            "^A",
            // Table "DETAIL"
            "^CHECK_TYPE",
            "^SCHEDULE_CHECK_START_DATE",
            "^SCHEDULE_CHECK_END_DATE",
            "^SJJCKSR",
            "^SJJCJSR",
            "^OVERALL_QUALITY_APPLY_DATE",
            "^OVERALL_SCHEDULE_DATE",
            "^INSTALL_RECORD",
            "^ELEVATO_TEST_REPORT",
            "^SPECIAL_MATTERS",
            "^SCHEDULE_QUALITY_PERSON",
            "^HALF_QUALITY_APPLY_DATE",
            "^ELEVATO_CORE",
            "^ELEVATO_PLACE",
            "^ELEVATO_GUIDE",
            "^ELEVATO_CAR",
            "^ELEVATO_ROOM",
            "^INSTALL_START_DATE",
            "^HALF_SCHEDULE_DATE",
            "^DEBUG_END_DATE",
            "^SALE_PRICE",
            // Table "MACHINE"
            "^MACHINE_NAMES",
            "^QUALITY_APPLY_DATE",
            "^ZJPERSON",
            "^ZJYSR",
            "^ZJFS",
            "^ZGTS",
            "^ZJWCR",
            "^ZJJG",
            "^RECHECK_INSPECTOR",
            "^FCR",
            "^RECHECK_RESULT",
            "^SND_RECTIFICATION_END_DATE",
            "^TRD_CHECK_INSPECTOR_ID",
            "^TRD_CHECK_DATE",
            "^TRD_CHECK_RESULT",
            "^MACHINE_KIND",
            "^BRIEF_SPEC",
            "^INSTALL_DIRECTOR",
            "^TSWBR",
            "^JJJYSR",
            "^INSTALL_PRICE",
            "^RECEIVED_AMOUNT",
            "^SEQID",
            "^ZJYS",
            "^ZJWC",
            "^YCXM",
            "^ECXM",
            "^TRD_CHECK_INSPECTOR",
            "^CJXM",
            "^FJXM",
            "^ZJFC",
            "^MACHINE_NUM",
            "^ZJFCFS",
            "^ZJY",
            "^TEST",
            "^AA",
            "^TSWCR",
            "^AZKGR",
            "^ZJJJR",
            "^AZZJJG",
            "^ZJFCY",
            "^HALF_INSTALL_DIRECTOR",
            "^HALF_RECHECK_RESULT",
            "^ZJFCR",
            "^A1",
            //"^SALE_PRICE", Already defined
            "^A2",
            "^YCSJRQ",
            "^ZGWCRQ",
            "^TT",
            "^SND_RECTIFICATION_DAYS"
    };

    public static String[] getValues(){
        return values;
    }
}
