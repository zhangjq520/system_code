package com.logic.system.service.impl;

import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.PDCorrectiveActionDetail;
import com.logic.system.persistence.read.PDCorrectiveActionDetailReadMapper;
import com.logic.system.persistence.write.PDCorrectiveActionDetailWriteMapper;
import com.logic.system.service.IPDCorrectiveActionDetailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PDCorrectiveActionDetailService implements IPDCorrectiveActionDetailService {
	private final Logger log = LoggerFactory.getLogger(PDCorrectiveActionDetailService.class);
	@Autowired
	private PDCorrectiveActionDetailReadMapper detailReadMapper;

	@Autowired
	private PDCorrectiveActionDetailWriteMapper correctiveActionDetailWriteMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
		PDCorrectiveActionDetail correctiveActionDetail = (PDCorrectiveActionDetail) obj;

		Boolean isValidateForInsert = this.validateForInsert(correctiveActionDetail);
		if (isValidateForInsert) {
			correctiveActionDetail.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			correctiveActionDetailWriteMapper.insertSelective(correctiveActionDetail);
		}

		return correctiveActionDetail.getId();
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		return detailReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		PDCorrectiveActionDetail detail = (PDCorrectiveActionDetail)obj;
		correctiveActionDetailWriteMapper.updateByPrimaryKeySelective(detail);
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
		return true;
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
	public List<PDCorrectiveActionDetail> getPDCorrectiveActionDetailListByMasterId(Integer masterId) {
		
		return detailReadMapper.getPDCorrectiveActionDetailListByMasterId(masterId);
	}

	@Override
	public void insertBatch(List<PDCorrectiveActionDetail> pdCorrectiveActionDetailList) {
		correctiveActionDetailWriteMapper.insertBatch(pdCorrectiveActionDetailList);
	}
}
