package com.logic.system.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.persistence.write.FormResponseDetailWriteMapper;
import com.logic.system.service.IFormResponseDetailService;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
@Service
public class FormResponseDetailService implements IFormResponseDetailService{


    @Autowired
    private FormResponseDetailWriteMapper formResponseDetailWriteMapper;

    @Override
    public int insert(Object obj) throws BusinessException {
        FormResponseDetail responseDetail = (FormResponseDetail) obj;

        Boolean isValidateForInsert = this.validateForInsert(responseDetail);
        if (isValidateForInsert) {
            responseDetail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            formResponseDetailWriteMapper.insertSelective(responseDetail);
        }

        return responseDetail.getId();
    }

    @Override
    public Object get(Integer id) throws BusinessException {
        return null;
    }

    @Override
    public void update(Object obj) throws BusinessException {
        FormResponseDetail detail = (FormResponseDetail)obj;
        formResponseDetailWriteMapper.updateByPrimaryKeySelective(detail);
    }

    @Override
    public void delete(String ids) throws BusinessException {

    }

    @Override
    public List<Object> query(QueryUtil queryUtil) {
        return null;
    }

    @Override
    public Boolean validate(Object obj) throws BusinessException {
        return null;
    }

    @Override
    public Boolean validateForInsert(Object obj) throws BusinessException {
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
    public void insertBatch(List<FormResponseDetail> formResponseDetailList) {
        formResponseDetailWriteMapper.insertBatch(formResponseDetailList);
    }
    
    @Override
    public void updateBatch(List<FormResponseDetail> formResponseDetailList, Integer masterId) {
    	if(formResponseDetailList == null || formResponseDetailList.isEmpty()) {
    		return ;
    	}
    	
    	Map<String, Integer> map = new HashMap<String, Integer>();
    	map.put("masterId", masterId);
    	
        formResponseDetailWriteMapper.deleteBatch(map);
        
        this.insertBatch(formResponseDetailList);
    }
}
