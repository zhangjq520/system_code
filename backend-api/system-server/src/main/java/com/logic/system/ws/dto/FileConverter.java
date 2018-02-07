package com.logic.system.ws.dto;

import com.logic.system.domain.SystemFile;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.FileDTO;
import net.sf.json.JSONObject;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class FileConverter {

    public static SystemFile fromDTOToFile(SystemFile systemFile, FileDTO fileDTO) throws BusinessException {
        systemFile.setId(SysUtil.getValidDtoInteger(fileDTO.getId(), "FileDTO id"));
        systemFile.setPath(fileDTO.getPath());
        systemFile.setName(fileDTO.getName());
        systemFile.setFileType(fileDTO.getFile_type());
        systemFile.setFileSize(fileDTO.getFile_size());
        systemFile.setDescription(fileDTO.getDescription());
        systemFile.setTags(fileDTO.getTags());
        systemFile.setCoverImage(fileDTO.getCoverImage());
        systemFile.setStatus(fileDTO.getStatus());
        systemFile.setFullPath(fileDTO.getFullPath());
        systemFile.setLocalFullPath(fileDTO.getLocalFullPath());
        return systemFile;
    }

    public static FileDTO fromFileToDTO(SystemFile systemFile){
    	FileDTO fileDTO = new FileDTO();
    	if(systemFile != null) { 		
    		fileDTO.setId(systemFile.getId() == null ? null : systemFile.getId().toString());
    		fileDTO.setPath(systemFile.getPath());
    		fileDTO.setName(systemFile.getName());
        if (systemFile.getName().contains("_")) {
            fileDTO.setOriginalName(systemFile.getName().substring(systemFile.getName().indexOf("_") + 1));
        } else {
    		fileDTO.setOriginalName(systemFile.getName());
        }
        
        	
    		
    		fileDTO.setFile_type(systemFile.getFileType());
    		fileDTO.setFile_size(systemFile.getFileSize());
    		fileDTO.setDescription(systemFile.getDescription());
    		fileDTO.setTags(systemFile.getTags());
    		fileDTO.setCoverImage(systemFile.getCoverImage());
    		fileDTO.setStatus(systemFile.getStatus());
    		fileDTO.setVersion(systemFile.getVersion());
    		fileDTO.setLastModifiedDtm(systemFile.getLastModifiedDtm());
    		fileDTO.setFullPath(systemFile.getFullPath());
    		fileDTO.setLocalFullPath(systemFile.getLocalFullPath());
    	}
        return fileDTO;
    }
   
    public static FileDTO fromFileToDTO(String json){
        FileDTO fileDTO = new FileDTO();
        if (json != null && json.trim().length() > 0) {
            JSONObject jsonObject = JSONObject.fromObject(json);

            if (jsonObject.containsKey("id")) {
                fileDTO.setId(jsonObject.getString("id") == null ? null : jsonObject.getString("id"));
            }
            if (jsonObject.containsKey("path")) {
                fileDTO.setPath(jsonObject.getString("path"));
            }
            if (jsonObject.containsKey("name")) {
                fileDTO.setName(jsonObject.getString("name"));
            }
            if (jsonObject.containsKey("type")) {
                fileDTO.setFile_type(jsonObject.getString("type"));
            }
            if (jsonObject.containsKey("description")) {
                fileDTO.setDescription(jsonObject.getString("description"));
            }
            if (jsonObject.containsKey("tags")) {
                fileDTO.setTags(jsonObject.getString("tags"));
            }
            if (jsonObject.containsKey("coverImage")) {
            	fileDTO.setCoverImage(jsonObject.getString("coverImage"));
            }
            if (jsonObject.containsKey("status")) {
            	fileDTO.setStatus(jsonObject.getString("status"));
            }
            if (jsonObject.containsKey("fullPath")) {
                fileDTO.setFullPath(jsonObject.getString("fullPath"));
            }            
            if (jsonObject.containsKey("localFullPath")) {
            	fileDTO.setLocalFullPath(jsonObject.getString("localFullPath"));
            }            
        }
        return fileDTO;
    }
}
