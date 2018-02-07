package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.system.domain.OrgProfile;

public interface IOrgProfile extends ICRUDService {
	OrgProfile getByOrgId(Integer orgId);
}
