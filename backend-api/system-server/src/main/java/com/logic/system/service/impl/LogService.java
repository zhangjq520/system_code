package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.enums.LogLevelEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.LoggerHelper;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.LogDTO;
import com.logic.system.domain.Log;
import com.logic.system.domain.Organization;
import com.logic.system.domain.User;
import com.logic.system.persistence.read.LogReadMapper;
import com.logic.system.persistence.read.UserReadMapper;
import com.logic.system.persistence.write.LogWriteMapper;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.ILogService;

@Service
@SuppressWarnings("all")
public class LogService implements ILogService {

	private static final Logger logger = LoggerFactory.getLogger(LogService.class);

	private static final Integer MESSAGE_LENGTH = 500;

	@Autowired
	private LogReadMapper logReadMapper;

	@Autowired
	private LogWriteMapper logWriteMapper;

	@Autowired
	private UserReadMapper userReadMapper;
	

	@Autowired
	private HttpServletRequest request;

	private void log(Class c, Integer orgId, String ip, Integer createdBy, LogLevelEnum level, String message, String logType) {
		if (message == null) {
			message = "";
		}
		// log4j
		switch (level) {
		case DEBUG:
			logger.debug(message);
			break;
		case INFO:
			logger.info(message);
			break;
		case WARN:
			logger.warn(message);
			break;
		case ERROR:
			logger.error(message);
			break;
		// removing for moving to sl4j
		// case FATAL:
		// logger.fatal(message);
		// break;
		}
		// log to db
		Log log = new Log();
		log.setClassInfo(LoggerHelper.whoInvokedMe(c));
		log.setOrg_id(orgId);
		log.setIp(ip);
		log.setCreatedBy(createdBy);
		log.setType(logType);
		log.setLevels(level.name());
		if (message != null && message.length() > MESSAGE_LENGTH) {
			message = message.substring(0, MESSAGE_LENGTH);
		}
		log.setMessage(message);
		log.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		logWriteMapper.insertSelective(log);
	}
	
	private void log(Class c, Integer orgId, String ip, Integer createdBy, LogLevelEnum level, String message, String logType, Integer other1_id, Integer other2_id, Integer other3_id) {
		if (message == null) {
			message = "";
		}
		// log4j
		switch (level) {
		case DEBUG:
			logger.debug(message);
			break;
		case INFO:
			logger.info(message);
			break;
		case WARN:
			logger.warn(message);
			break;
		case ERROR:
			logger.error(message);
			break;
		// removing for moving to sl4j
		// case FATAL:
		// logger.fatal(message);
		// break;
		}
		// log to db
		Log log = new Log();
		log.setClassInfo(LoggerHelper.whoInvokedMe(c));
		log.setOrg_id(orgId);
		log.setIp(ip);
		log.setCreatedBy(createdBy);
		log.setType(logType);
		log.setLevels(level.name());
		log.setOther_1(other1_id);
		log.setOther_2(other2_id);
		log.setOther_3(other3_id);
		if (message != null && message.length() > MESSAGE_LENGTH) {
			message = message.substring(0, MESSAGE_LENGTH);
		}
		log.setMessage(message);
		log.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		logWriteMapper.insertSelective(log);
	}

	private void log(Class c, String ip, Integer createdBy, LogLevelEnum level, String message, String logType,
			Exception e) {
		if (message == null) {
			message = "";
		}
		// log4j
		switch (level) {
		case DEBUG:
			logger.debug(message);
			break;
		case INFO:
			logger.info(message);
			break;
		case WARN:
			logger.warn(message);
			break;
		case ERROR:
			logger.error(message, e);
			break;
		}
		// log to db
		Log log = new Log();
		log.setClassInfo(LoggerHelper.whoInvokedMe(c));
		log.setIp(ip);
		log.setCreatedBy(createdBy);
		log.setType(logType);
		log.setLevels(level.name());
		if (message != null && message.length() > MESSAGE_LENGTH) {
			message = message.substring(0, MESSAGE_LENGTH);
		}
		log.setMessage(message);
		log.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		logWriteMapper.insertSelective(log);
	}

	public void debug(Class c, Integer orgId, String ip, Integer createdBy, String message, String type, Integer other1_id, Integer other2_id, Integer other3_id) {
		log(c, orgId, ip, createdBy, LogLevelEnum.DEBUG, message, type, other1_id, other2_id, other3_id);
	}

	public void info(Class c, Integer orgId, String ip, Integer createdBy, String message, String type, Integer other1_id, Integer other2_id, Integer other3_id) {
		log(c, orgId, ip, createdBy, LogLevelEnum.INFO, message, type, other1_id, other2_id, other3_id);
	}

	public void warn(Class c, Integer orgId, String ip, Integer createdBy, String message, String type, Integer other1_id, Integer other2_id, Integer other3_id) {
		log(c, orgId, ip, createdBy, LogLevelEnum.WARN, message, type, other1_id, other2_id, other3_id);
	}

	public void error(Class c, Integer orgId, String ip, Integer createdBy, String message, String type, Integer other1_id, Integer other2_id, Integer other3_id) {
		log(c, orgId, ip, createdBy, LogLevelEnum.ERROR, message, type, other1_id, other2_id, other3_id);
	}

//	public void error(Class c, Integer orgId, String ip, Integer createdBy, String message, String type, Exception e) {
//		log(c, orgId, ip, createdBy, LogLevelEnum.ERROR, message, type, e);
//	}

	public List<Object> query(QueryUtil queryUtil) {
		List<Object> list = new ArrayList<Object>();
		List<LogDTO> dtos = logReadMapper.getLogs(queryUtil);
		if (dtos != null) {
			for (LogDTO dto : dtos) {
				User user = userReadMapper.selectByPrimaryKey(dto.getLast_modified_by());
				if (user != null) {
					dto.setLoginId("[" + user.getId() + "] " + user.getLoginId());
				}
				list.add(dto);
			}
		}
		return list;
	}

	public Log get(Integer id) {
		return logReadMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public List<LogDTO> getByOrgId(Integer orgId) {
		return logReadMapper.selectByOrgId(orgId);
	}

	@Deprecated
	public int insert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Deprecated
	public void update(Object obj) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Deprecated
	public void delete(String ids) throws BusinessException {
		// TODO Auto-generated method stub

	}

	@Deprecated
	public Boolean validate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Deprecated
	public Boolean validateForInsert(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Deprecated
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Deprecated
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public void createLog(LogDTO dto) {
		this.info(dto.getClzz(), dto.getOrgId(), dto.getIp(), dto.getCreated_by(), dto.getMessage(), dto.getType(), dto.getOther_1(), dto.getOther_2(), dto.getOther_3());
	}

	@Override
	public void info(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void debug(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void warn(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void error(Class<?> c, Integer orgId, String ip, Integer createdBy, String message, String type) {
		// TODO Auto-generated method stub
		
	}
}
