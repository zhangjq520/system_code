package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;

import java.math.BigDecimal;
import java.util.List;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
public interface IPDRequestMiddleCheckService extends ICRUDService {

    List<PDRequestMiddleCheckDTO> queryMiddleChecks(QueryUtil query);
}
