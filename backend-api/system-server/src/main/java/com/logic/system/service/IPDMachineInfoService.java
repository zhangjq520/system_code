package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.toshiba.PDMachineInfoDTO;
import com.logic.system.domain.PDMachineInfo;

import java.util.List;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
public interface IPDMachineInfoService extends ICRUDService {
	List<PDMachineInfoDTO> querytMachines(QueryUtil query);
}
