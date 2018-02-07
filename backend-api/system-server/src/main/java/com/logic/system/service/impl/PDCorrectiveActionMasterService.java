package com.logic.system.service.impl;

import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.PDCorrectiveActionMaster;
import com.logic.system.persistence.read.PDCorrectiveActionMasterReadMapper;
import com.logic.system.persistence.write.PDCorrectiveActionMasterWriteMapper;
import com.logic.system.service.IPDCorrectiveActionMasterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PDCorrectiveActionMasterService implements IPDCorrectiveActionMasterService {
	private final Logger log = LoggerFactory.getLogger(PDCorrectiveActionMasterService.class);
	@Autowired
	private PDCorrectiveActionMasterReadMapper masterReadMapper;

	@Autowired
	private PDCorrectiveActionMasterWriteMapper pdCorrectiveActionMasterWriteMapper;
	
	@Override
	public int insert(Object obj) throws BusinessException {
		PDCorrectiveActionMaster correctiveActionMaster = (PDCorrectiveActionMaster) obj;

		Boolean isValidateForInsert = this.validateForInsert(correctiveActionMaster);
		if (isValidateForInsert) {
			correctiveActionMaster.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			pdCorrectiveActionMasterWriteMapper.insertSelective(correctiveActionMaster);
		}

		return correctiveActionMaster.getId();
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		return masterReadMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Object obj) throws BusinessException {
		PDCorrectiveActionMaster master = (PDCorrectiveActionMaster)obj;
		pdCorrectiveActionMasterWriteMapper.updateByPrimaryKeySelective(master);
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
	public List<PDCorrectiveActionMaster> getPDCorrectiveActionMasterListByTaskId(Integer taskId) throws BusinessException {
		// TODO Auto-generated method stub
		log.info("taskId=========================:" + taskId);
		return masterReadMapper.getPDCorrectiveActionMasterListByTaskId(taskId);
	}

}
