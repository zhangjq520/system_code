package com.logic.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.DiagnoseData;
import com.logic.system.persistence.read.DiagnoseDataReadMapper;
import com.logic.system.persistence.write.DiagnoseDataWriteMapper;
import com.logic.system.service.IDiagnoseDataService;

/**
 * Created by albert on 16-2-4.
 */
@Service
public class DiagnoseDataService implements IDiagnoseDataService{
    @Autowired
    DiagnoseDataReadMapper diagnoseDataReadMapper;
    @Autowired
    DiagnoseDataWriteMapper diagnoseDataWriteMapper;

    @Override
    public List<DiagnoseData> getDiagnoseDatasByDiagRequestId(Integer id) throws BusinessException {
        return diagnoseDataReadMapper.selectDiagnoseDatasByDiagRequestId(id);
    }

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
        DiagnoseData diagnoseData = (DiagnoseData)obj;
        if(diagnoseData!=null)
        diagnoseDataWriteMapper.updateByPrimaryKeySelective(diagnoseData);
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
        return null;
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
