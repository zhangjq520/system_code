package com.logic.system.service;

import java.util.List;

import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.KnowedgeDTO;

public interface IKnowedgeService extends ICRUDService  {
	
	List<KnowedgeDTO> download(String projectID, String machineName);

}
