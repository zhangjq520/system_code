package com.logic.system.persistence.read;

import java.util.List;

import com.logic.common.util.QueryUtil;
import com.logic.system.domain.OrgProfile;
import com.logic.system.ws.dto.OrgProfileDTO;

public interface OrgProfileReadMapper {
	OrgProfile selectByPrimaryKey(Integer id);
	
	OrgProfile selectByOrgId(Integer orgId);
	
	List<OrgProfileDTO> getOrgProfile(QueryUtil queryUtil);
}
