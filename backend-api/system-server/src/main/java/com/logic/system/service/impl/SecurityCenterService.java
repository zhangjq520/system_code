package com.logic.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.service.ISecurityCenterService;
import com.logic.system.service.IUserService;
import com.logic.system.domain.*;
import com.logic.system.persistence.read.SecurityCenterReadMapper;
import com.logic.system.persistence.write.SecurityCenterWriteMapper;

/**
 * Author: Roy Zhou Date : 06/06/2016
 */

@Service
public class SecurityCenterService implements ISecurityCenterService {

	@Autowired
	private SecurityCenterReadMapper readerMapper;

	@Autowired
	private SecurityCenterWriteMapper writerMapper;

	@Autowired
	private IUserService userService;

	@Override
	public int insert(Object obj) throws BusinessException {
		return -1;
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		
		Integer securityId = -1;
		Object temp = userService.get(id);
		
		if(temp!=null){
			User user = (User) temp;
			securityId = user.getSecurityId();
		}
		
		SecurityCenter record = readerMapper.selectByPrimaryKey(securityId);

		return record;
	}

	@Override
	public void update(Object obj) throws BusinessException {

		if (validate(obj)) {

			User user = null;
			Integer securityId = -1;
			Integer userId = SecurityUtils.getCurrentLogin().getUserId();

			SecurityCenter sc = (SecurityCenter) obj;
			Object temp = userService.get(userId);

			if (temp != null) {
				user = (User) temp;
			}

			if (user != null) {
				
				securityId = user.getSecurityId();

				if (securityId != null && securityId > 0) {
					// do update
					sc.setId(securityId);
					sc.updateCommonInfo(userId);
					Boolean passedValidation = validateForUpdate(sc);
					
					if (passedValidation) {
						writerMapper.updateByPrimaryKey(sc);
					}					
				} else {
					// do insert
					int newSecurityId = -1;
					sc.updateCommonInfo(userId);
					Boolean passedValidation = validateForInsert(sc);
					
					if (passedValidation) {
						writerMapper.insertSelective(sc);
					}
					
					user.updateCommonInfo(userId);
					user.setSecurityId(sc.getId());
					userService.updateSecurityId(user);
				}
			}
		}
	}

	@Override
	public void delete(String ids) throws BusinessException {
		// nothing to do here.
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {

		if (obj == null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		Boolean result = false;

		if (obj != null) {

			SecurityCenter sc = (SecurityCenter) obj;
			if (sc != null && sc.getVersion() != null && sc.getCreatedDtm() != null
					&& sc.getDeleted() != null) {
				result = true;
			}
		}

		return result;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {

		Boolean result = false;

		if (obj != null) {

			SecurityCenter sc = (SecurityCenter) obj;
			if (sc != null && sc.getId() != null && sc.getId() > 0) {
				result = true;
			}
		}

		return result;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		return true;
	}
}