package com.logic.system.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.LogTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.FileDTO;
import com.logic.system.domain.SystemFile;
import com.logic.system.domain.User;
import com.logic.system.persistence.read.FileReadMapper;
import com.logic.system.persistence.write.FileWriteMapper;
import com.logic.system.service.IFileService;
import com.logic.system.service.IUserService;
import com.logic.system.ws.dto.FileConverter;

@Service
public class FileService implements IFileService, EnvironmentAware {

	private static final String ENV_FILE_PATH = "logic.file.path.";
	private static final String LOCAL_PATH = "local";
	private static final String REMOTE_PATH = "remote";

	private static RelaxedPropertyResolver propertyResolver;

	@Autowired
	private FileWriteMapper fileWriteMapper;

	@Autowired
	private FileReadMapper fileReadMapper;

	@Autowired
	private LogService logService;
	
	@Autowired
	private IUserService userService;

	@Autowired
	private HttpServletRequest request;

	@Override
	public SystemFile insert(SystemFile systemFile, InputStream file, FormDataContentDisposition fileDisposition, String file_name)
			throws BusinessException {

		logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request), SecurityUtils.getCurrentLogin().getUserId(),
				"Starting upload a file....", LogTypeEnum.ADD.name());
		if (validate(fileDisposition)) {
			String path = propertyResolver.getProperty(LOCAL_PATH, String.class, null);
			StringBuffer url = propertyResolver.getProperty(REMOTE_PATH, StringBuffer.class, null);

			logService.debug(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(), "LOCAL_PATH: " + path, LogTypeEnum.ADD.name());

			logService.debug(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(), "REMOTE_PATH: " + url, LogTypeEnum.ADD.name());

			OutputStream outputStream = null;
			String fileFullName = fileDisposition.getFileName();
			try {
				fileFullName = new String(fileDisposition.getFileName().getBytes("ISO8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			if (StringUtils.isNotEmpty(file_name)) {
				fileFullName = file_name;
			}
			String regex = "[^?]{1,}";  
			fileFullName = fileFullName.replaceAll(",", "").trim();
		    if(fileFullName != null && !Pattern.matches(regex,fileFullName)) {
		    	fileFullName = fileFullName.replace("?", "").trim();
		    	if(fileFullName.contains(".")) {
		    		fileFullName = fileFullName.substring(0, fileFullName.lastIndexOf(".")) + "-" + fileFullName.substring(fileFullName.lastIndexOf("."), fileFullName.length());
		    	}
		    }

			if(fileFullName != null && fileFullName.contains(".")) {
				String file_type = fileFullName.substring(fileFullName.lastIndexOf(".") + 1, fileFullName.length());
				systemFile.setFileType(file_type);
			}
			
			String currentTS = String.valueOf(System.currentTimeMillis());
			String newFileName = currentTS +"_"+ fileFullName;

			try {
				outputStream = new FileOutputStream(new File(path, newFileName));
				int length = 0;
				int totalSize = 0;
				byte[] buff = new byte[256];
				while (-1 != (length = file.read(buff))) {
					outputStream.write(buff, 0, length);
					totalSize += length;
				}
				systemFile.setFileSize(Math.round(totalSize/1024));
				systemFile.setName(currentTS + "_" + fileFullName);
				
				insert(systemFile);

			} catch (Exception e) {
				logService.error(this.getClass(), null, SysUtil.getClientIpAddr(request),
						SecurityUtils.getCurrentLogin().getUserId(),
						"Uploaded file " + fileFullName + " exception: " + e.toString(), LogTypeEnum.ADD.name());

				systemFile = null;

			} finally {
				try {
					file.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				try {
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			url.append("/");
			if(systemFile.getPath() != null && !"".equals(systemFile.getPath())) {
				url.append(systemFile.getPath()).append("/");
			}
			url.append(systemFile.getName());
			systemFile.setFullPath(url.toString());
			
			logService.info(this.getClass(), null, SysUtil.getClientIpAddr(request),
					SecurityUtils.getCurrentLogin().getUserId(), "End uploaded file '" + fileFullName + "'",
					LogTypeEnum.ADD.name());
		}

		return systemFile;
	}

	@Override
	public int insert(Object obj) throws BusinessException {
		SystemFile systemFile = (SystemFile) obj;
		systemFile.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		fileWriteMapper.insertSelective(systemFile);
		return systemFile.getId();
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		return get(String.valueOf(id));
	}


	@Override
	public Object get(String id) throws BusinessException {
		StringBuffer url = propertyResolver.getProperty(REMOTE_PATH, StringBuffer.class, null);
		StringBuffer local = propertyResolver.getProperty(LOCAL_PATH, StringBuffer.class, null);

		SystemFile file = fileReadMapper.selectByPrimaryKeyStr(id);

		if (null != file) {
			url.append("/");
			local.append("/");
			if (file.getPath() != null && !"".equals(file.getPath())) {
				url.append(file.getPath()).append("/");
				local.append(file.getPath()).append("/");
			}
			if (file.getName() != null && !"".equals(file.getName())) {
				url.append(file.getName());
				local.append(file.getName());
			}
			file.setFullPath(url.toString());
			file.setLocalFullPath(local.toString());
		}

		return file;
	}

	@Override
	public SystemFile update(SystemFile systemFile, InputStream file, FormDataContentDisposition fileDisposition)
			throws BusinessException {

		if (validate(fileDisposition)) {
			String path = propertyResolver.getProperty(LOCAL_PATH, String.class, null);
			StringBuffer url = propertyResolver.getProperty(REMOTE_PATH, StringBuffer.class, null);

			SystemFile oldSystemFile = fileReadMapper.selectByPrimaryKey(systemFile.getId());
			if (oldSystemFile == null) {
				throw new BusinessException(ErrorMessageEnum.File_Update_File_Not_Exist, systemFile.getId());
			}
			File oldFile = new File(oldSystemFile.getPath());
			oldFile.delete();

			OutputStream outputStream = null;
			String fileFullName = fileDisposition.getFileName();

			String currentTS = String.valueOf(System.currentTimeMillis());
			String newFileName = currentTS + fileFullName.substring(fileFullName.lastIndexOf("."));

			try {
				outputStream = new FileOutputStream(new File(path, newFileName));
				int length = 0;
				int totalSize = 0;
				byte[] buff = new byte[256];
				while (-1 != (length = file.read(buff))) {
					outputStream.write(buff, 0, length);
					totalSize += length;
				}
				systemFile.setFileSize(Math.round(totalSize/1024));
				systemFile.setName(currentTS + "_" + fileFullName);

			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				try {
					file.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				try {
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			update(systemFile);
			
			url.append("/");
			if(systemFile.getPath() != null && !"".equals(systemFile.getPath())) {
				url.append(systemFile.getPath()).append("/");
			}
			url.append(systemFile.getName());
			systemFile.setFullPath(url.toString());
		}
		return systemFile;

	}

	@Override
	public void update(Object obj) throws BusinessException {
		SystemFile systemFile = (SystemFile) obj;
		fileWriteMapper.updateByPrimaryKeySelective(systemFile);
	}

	@Override
	public void delete(String ids) throws BusinessException {
		String datas[] = ids.split("\\,");
		for (int i = 0; i < datas.length; i++) {
			SystemFile systemFile = new SystemFile();
			systemFile.setId(Integer.parseInt(datas[i]));

			systemFile.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			fileWriteMapper.deleteByPrimaryKey(systemFile);
		}
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		List<Object> list = new ArrayList<Object>();
		List<SystemFile> systemFileList = fileReadMapper.selectSystemFile(queryUtil);
		if (systemFileList != null) {

			String url = propertyResolver.getProperty(REMOTE_PATH, String.class, null);
			String local = propertyResolver.getProperty(LOCAL_PATH, String.class, null);
			StringBuffer url_part = null;
			StringBuffer local_url_part = null;
			for (int i = 0; i < systemFileList.size(); i++) {
				SystemFile systemFile = systemFileList.get(i);
				
				url_part = new StringBuffer();
				local_url_part = new StringBuffer();
				url_part.append("/");
				local_url_part.append("/");
				if (systemFile.getPath() != null && !"".equals(systemFile.getPath())) {
					url_part.append(systemFile.getPath()).append("/");
					local_url_part.append(systemFile.getPath()).append("/");
				} 
				if (systemFile.getName() != null && !"".equals(systemFile.getName())) {
					url_part.append(systemFile.getName());
					local_url_part.append(systemFile.getName());
				} 
				systemFile.setFullPath(url + url_part.toString());
				systemFile.setLocalFullPath(local + local_url_part.toString());
				url_part = null;
				local_url_part = null;
//				if (systemFile.getName().indexOf("_") == -1) {
//					systemFile.setFullPath(url + "/" + systemFile.getName());
//				} else {
//					systemFile
//							.setFullPath(url + "/" + systemFile.getName().substring(0, systemFile.getName().indexOf("_")));
//				}

				try {
					User user = (User)userService.get(systemFile.getCreatedBy());
					FileDTO dto = FileConverter.fromFileToDTO(systemFile);
					dto.setCreatedBy(user.getLoginId());
					list.add(dto);
				} catch (BusinessException e) {
					e.printStackTrace();
				}
			}
		}
		return list;
	}
 

	 
	@Override
	public Boolean validate(Object obj) throws BusinessException {
		if (obj == null) {
			throw new BusinessException(ErrorMessageEnum.File_Insert_Empty_File);
		}
		return true;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		if (obj == null) {
			throw new BusinessException(ErrorMessageEnum.File_Insert_Empty_File);
		}
		return true;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		return true;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		return true;
	}

	@Override
	public void setEnvironment(Environment environment) {
		propertyResolver = new RelaxedPropertyResolver(environment, ENV_FILE_PATH);
	}

}
