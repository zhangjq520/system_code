package com.logic.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SftpClientUtil;
import com.logic.common.ws.dto.system.KnowedgeDTO;
import com.logic.system.persistence.read.KnowedgeReadMapper;
import com.logic.system.service.IKnowedgeService;

@Service
@Configuration
public class KnowedgeService implements IKnowedgeService, EnvironmentAware  {
	
	private static RelaxedPropertyResolver propertyResolver;
	private static final String ENV_FILE_PATH = "logic.file.path.";
	private static final String LOCAL_PATH = "local";
	private static final String REMOTE_PATH = "remote";
	
	private static final String ENV_SFTP_INFO = "logic.sftp.info.";
	private static final String SFTP_IP = "ip";
	private static final String SFTP_PORT = "port";
	private static final String SFTP_USERNAME = "username";
	private static final String SFTP_PASSWORD = "password";
	
	@Autowired
	private KnowedgeReadMapper knowedgeReadMapper;
	private String localPath;
	private String remotePath;
	private String sftp_ip;
	private Integer sftp_port;
	private String sftp_username;
	private String sftp_password;

	@Override
	public int insert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Object obj) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String ids) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public List<KnowedgeDTO> download(String projectID, String machineName) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("projectID", projectID);
		params.put("machineName", machineName);
		List<KnowedgeDTO> dtoList = knowedgeReadMapper.getFilesByParams(params);
		
		//SftpClientUtil sftp = new SftpClientUtil("192.168.8.44", 22, "root", "sLogicH@55");
		SftpClientUtil sftp = new SftpClientUtil(sftp_ip, sftp_port, sftp_username, sftp_password);
		if (dtoList != null && dtoList.size() > 0) {
			try {
				sftp.connect();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			String file_path = null;
			String file_name = null;
			for (KnowedgeDTO knowedgeDTO : dtoList) {
				file_path = knowedgeDTO.getFile_path().substring(0,  knowedgeDTO.getFile_path().lastIndexOf("/"));
				file_name = knowedgeDTO.getFile_name();
				try {
					if(file_path != null && file_name != null) {
						sftp.download(file_path, file_name, localPath);
						knowedgeDTO.setFull_path(remotePath + "/" + file_name);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			try {
				sftp.disconnect();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtoList;
	}

	@Override
	public void setEnvironment(Environment environment) {
			propertyResolver = new RelaxedPropertyResolver(environment, ENV_FILE_PATH);
			localPath = propertyResolver.getProperty(LOCAL_PATH, String.class, null);
			remotePath = propertyResolver.getProperty(REMOTE_PATH, String.class, null);
			
			propertyResolver = new RelaxedPropertyResolver(environment, ENV_SFTP_INFO);
			sftp_ip = propertyResolver.getProperty(SFTP_IP, String.class, null);
			sftp_port = propertyResolver.getProperty(SFTP_PORT, Integer.class, null);
			sftp_username = propertyResolver.getProperty(SFTP_USERNAME, String.class, null);
			sftp_password = propertyResolver.getProperty(SFTP_PASSWORD, String.class, null);
	}

}
