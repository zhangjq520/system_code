package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.KnowedgeDTO;
import com.logic.system.domain.Knowedge;

public class KnowedgeConverter {

	public static Knowedge toKnowedgePOJO(KnowedgeDTO dto) {
		Knowedge pojo = new Knowedge();
		pojo.setBusiness_type(dto.getBusiness_type());
		pojo.setFile_name(dto.getFile_name());
		pojo.setFile_path(dto.getFile_path());
		pojo.setFile_size(dto.getFile_size());
		pojo.setFile_format(dto.getFile_format());
		pojo.setFile_source(dto.getFile_source());
		pojo.setUploaded_time(dto.getUploaded_time());
		
		return pojo;
	}
	
	public static KnowedgeDTO toKnowedgeDTO(Knowedge pojo) {
		KnowedgeDTO dto = new KnowedgeDTO();
		dto.setBusiness_type(pojo.getBusiness_type());
		dto.setFile_name(pojo.getFile_name());
		dto.setFile_path(pojo.getFile_path());
		dto.setFile_size(pojo.getFile_size());
		dto.setFile_format(pojo.getFile_format());
		dto.setFile_source(pojo.getFile_source());
		dto.setUploaded_time(pojo.getUploaded_time());
		
		return dto;
	}
}
