package com.logic.system.ws.dto;

import com.logic.system.domain.Log;
import com.logic.common.ws.dto.system.LogDTO;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class LogConverter {

    public static LogDTO fromLogToDto(Log log) {
        LogDTO logDto = new LogDTO();
        logDto.setId(log.getId());
        logDto.setOrgId(log.getOrg_id());
        logDto.setIp(log.getIp());
        logDto.setLevels(log.getLevels());
        logDto.setClass_info(log.getClassInfo());
        logDto.setType(log.getType());
        logDto.setMessage(log.getMessage());
        logDto.setCreated_by(log.getCreatedBy());
        logDto.setCreated_dtm(log.getCreatedDtm());
        logDto.setLast_modified_by(log.getLastModifiedBy());
        logDto.setLast_modified_dtm(log.getLastModifiedDtm());
        return logDto;
    }

}
