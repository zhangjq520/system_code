package com.logic.system.service;

import com.logic.system.domain.SystemFile;
import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

import java.io.InputStream;

public interface IFileService extends ICRUDService {

  SystemFile insert(SystemFile systemFile, InputStream file, FormDataContentDisposition fileDisposition, String file_name)
      throws BusinessException;

  Object get(String id) throws BusinessException;

  SystemFile update(SystemFile systemFile, InputStream file, FormDataContentDisposition fileDisposition)
      throws BusinessException;

}
