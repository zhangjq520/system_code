package com.logic.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.ModuleFunction;
import com.logic.system.persistence.read.ModuleFunctionReadMapper;
import com.logic.system.persistence.write.ModuleFunctionWriteMapper;
import com.logic.system.service.IModuleFunctionService;

@Service
public class ModuleFunctionService implements IModuleFunctionService {

  @Autowired
  private ModuleFunctionReadMapper moduleFunctionReadMapper;

  @Autowired
  private ModuleFunctionWriteMapper moduleFunctionWriteMapper;

  public ModuleFunction get(Integer id) throws BusinessException {
    return moduleFunctionReadMapper.selectByPrimaryKey(id);
  }

  public ModuleFunction getModuleFunctionByModuleId(Integer moduleId) {
    return moduleFunctionReadMapper.getModuleFunctionByModuleId(moduleId);
  }

  public int insert(Object obj) throws BusinessException {
    ModuleFunction moduleFunction = (ModuleFunction) obj;
    moduleFunction.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
    moduleFunctionWriteMapper.insertSelective(moduleFunction);
    return moduleFunction.getId();
  }

  public void update(Object obj) throws BusinessException {
    ModuleFunction moduleFunction = (ModuleFunction) obj;
    moduleFunction.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
    moduleFunctionWriteMapper.updateByPrimaryKeySelective(moduleFunction);
  }

  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      ModuleFunction mf = new ModuleFunction();
      mf.setId(Integer.parseInt(id));
      mf.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      moduleFunctionWriteMapper.deleteByPrimaryKey(mf);
    }
  }

  public void deleteModuleFunctionByModuleId(Integer moduleId) {
    ModuleFunction mf = new ModuleFunction();
    mf.setModuleId(moduleId);
    mf.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
    moduleFunctionWriteMapper.deleteModuleFunctionByModuleId(mf);
  }

  @Deprecated
  public List<Object> query(QueryUtil queryUtil) {
    // TODO Auto-generated method stub
    return null;
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

}
