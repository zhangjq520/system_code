package com.logic.system.service.impl;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.OnlineHelpDTO;
import com.logic.system.domain.OnlineHelp;
import com.logic.system.persistence.read.OnlineHelpReadMapper;
import com.logic.system.service.IOnlineHelpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by albert on 16-2-23.
 */
@Service
public class OnlineHelpService implements IOnlineHelpService{

    @Autowired
    private OnlineHelpReadMapper onlineHelpReadMapper;
    @Override
    public int insert(Object obj) throws BusinessException {
        return 0;
    }

    @Override
    public Object get(Integer id) throws BusinessException {
       return onlineHelpReadMapper.selectByPrimaryKey(id);
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

    @Override
    public List<OnlineHelp> getAllOnlineHelp() {
        return onlineHelpReadMapper.selectAll();
    }

    @Override
    public List<OnlineHelpDTO> queryOnlineHelps(QueryUtil queryUtil) {
       return onlineHelpReadMapper.queryOnlineHelps(queryUtil);
    }
}
