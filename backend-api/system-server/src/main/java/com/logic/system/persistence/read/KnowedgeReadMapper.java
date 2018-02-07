package com.logic.system.persistence.read;

import java.util.List;
import java.util.Map;

import com.logic.common.ws.dto.system.KnowedgeDTO;

public interface KnowedgeReadMapper {
	
	List<KnowedgeDTO> getFilesByParams(Map<String, String> params);

}
