package com.logic.system.service.impl;

import com.logic.common.enums.ToshibaTaskStatusEnum;
import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;

import com.logic.system.domain.PDRequestOverallCheck;
import com.logic.system.persistence.write.PDRequestOverallCheckWriteMapper;
import com.logic.system.service.IPDRequestOverallCheckService;
import org.apache.commons.lang.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
@Service
public class PDRequestOverallCheckService implements IPDRequestOverallCheckService {

    private static final Logger logger = LoggerFactory.getLogger(PDRequestOverallCheckService.class);

    @Autowired
    private PDRequestOverallCheckWriteMapper pdRequestOverallCheckWriteMapper;

    String[] validApplyTypes = {"310", "320", "330", "410", "420", "430", "510", "520", "530"};

    @Override
    public int insert(Object obj) throws BusinessException {
       return 0;
    }

    @Override
    public Object get(Integer id) throws BusinessException {
       return null;
    }

    @Override
    public void update(Object obj) throws BusinessException {
        PDRequestOverallCheck pdRequestOverallCheck = (PDRequestOverallCheck)obj;

        if(pdRequestOverallCheck != null && pdRequestOverallCheck.getId() != null){
            pdRequestOverallCheck.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            pdRequestOverallCheckWriteMapper.updateByPrimaryKeySelective(pdRequestOverallCheck);
        }

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
        return true;
    }

    @Override
    public Boolean validateForInsert(Object obj) throws BusinessException {
       return true;
    }

    @Override
    public Boolean validateForUpdate(Object obj) throws BusinessException {
        return validate(obj);
    }

    @Override
    public Boolean validateForDelete(Object obj) throws BusinessException {
        return null;
    }

}
