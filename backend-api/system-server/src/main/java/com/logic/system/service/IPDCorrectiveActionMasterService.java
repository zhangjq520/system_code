package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.PDCorrectiveActionMaster;

import java.util.List;

public interface IPDCorrectiveActionMasterService extends ICRUDService {
	List<PDCorrectiveActionMaster> getPDCorrectiveActionMasterListByTaskId(Integer taskId)  throws BusinessException;
}
