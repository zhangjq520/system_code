package com.logic.common.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by albert on 16-2-1.
 */
public enum ToshibaCheckPhase {
    MACHINE_ROOM("Z41-1"),
    HOISTWAY("Z42-2"),
    LANDING_DOOR("Z43-3"),
    LIFT_CAR("Z44-4"),
    MELTPIT("Z45-5");

    private String code;

    ToshibaCheckPhase(String code){ this.code = code ;}

    public static String convertToSysCode(String clientCode){
        Map<String,String> clientAndSysCodes = new HashMap<String,String>();
        clientAndSysCodes.put("1","Z41-1");
        clientAndSysCodes.put("2","Z42-2");
        clientAndSysCodes.put("3","Z43-3");
        clientAndSysCodes.put("4","Z44-4");
        clientAndSysCodes.put("5","Z45-5");
        return clientAndSysCodes.get(clientCode);
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
