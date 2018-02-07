package com.logic.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.FormElement;
import com.logic.system.persistence.read.FormElementReadMapper;
import com.logic.system.persistence.write.FormElementWriteMapper;
import com.logic.system.service.IFormElementService;

@Service
public class FormElementService implements IFormElementService {

	@Autowired
	private FormElementReadMapper readMapper;
	
	@Autowired
	private FormElementWriteMapper writeMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
		int id = 0 ;
		
		if(obj!=null){
			FormElement element = (FormElement) obj ;
			element.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			writeMapper.insertSelective(element);
			id = element.getId() ;
		}
		
		return id;
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<FormElement> getFormElementByIds(List<Integer> idList) throws BusinessException {
		List<FormElement> list = null;
		
		if(idList != null && idList.size() > 0) {
			list = readMapper.getFormElementByIds(idList);
		}
		
		return list;
	}
	
	@Override
	public FormElement getElementByCode(String code) throws BusinessException {
		FormElement formElement = null;
		
		if(code != null) {
			formElement = readMapper.getElementByCode(code);
		}
		
		return formElement;
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
	public List<FormElement> getElement(QueryUtil queryUtil) throws BusinessException {
		List<FormElement> queryFormElement = null;
		if(queryUtil!=null){
			queryFormElement = readMapper.queryFormElement(queryUtil);
		}
		return queryFormElement;
	}

}
