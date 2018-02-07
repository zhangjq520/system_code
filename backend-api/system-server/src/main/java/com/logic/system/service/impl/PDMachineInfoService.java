package com.logic.system.service.impl;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.toshiba.PDMachineInfoDTO;
import com.logic.system.persistence.read.PDMachineInfoReadMapper;
import com.logic.system.service.IPDMachineInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */

@Service
public class PDMachineInfoService implements IPDMachineInfoService {

    @Autowired
    private PDMachineInfoReadMapper pdMachineInfoReadMapper;

    @Override
    public int insert(Object obj) throws BusinessException {
        return 0;
    }

	@Override
	public Object get(Integer id) throws BusinessException {
        return pdMachineInfoReadMapper.selectByPrimaryKey(id);
	}

    @Override
    public List<PDMachineInfoDTO> querytMachines(QueryUtil query){
        return pdMachineInfoReadMapper.selectMachines(query);
    }

    @Override
    public void update(Object obj) throws BusinessException {

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
        return null;
    }

    @Override
    public Boolean validateForDelete(Object obj) throws BusinessException {
        return null;
    }
}
