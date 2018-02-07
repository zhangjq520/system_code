package com.logic.system.persistence.read;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.toshiba.PDMachineInfoDTO;
import com.logic.system.domain.PDMachineInfo;

import java.util.List;

public interface PDMachineInfoReadMapper {
    PDMachineInfo selectByPrimaryKey(Integer id);

    List<PDMachineInfoDTO> selectMachines(QueryUtil query);

    PDMachineInfo getMachineInfoBySeqId(Integer seqId);
}