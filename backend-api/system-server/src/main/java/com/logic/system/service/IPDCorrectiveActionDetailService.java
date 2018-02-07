package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.PDCorrectiveActionDetail;

import java.util.List;

public interface IPDCorrectiveActionDetailService extends ICRUDService {
	List<PDCorrectiveActionDetail> getPDCorrectiveActionDetailListByMasterId(Integer masterId)  throws BusinessException;

	void insertBatch(List<PDCorrectiveActionDetail> pdCorrectiveActionDetailList);
}
