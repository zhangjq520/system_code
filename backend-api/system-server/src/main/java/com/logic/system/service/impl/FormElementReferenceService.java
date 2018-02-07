package com.logic.system.service.impl;

import com.logic.system.domain.FormElementReferenceItem;
import com.logic.system.persistence.read.FormElementReferenceItemReadMapper;
import com.logic.system.persistence.write.FormElementReferenceItemWriteMapper;
import com.logic.system.service.IFormElementReferenceService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FormElementReferenceService implements IFormElementReferenceService {

  @Autowired
  FormElementReferenceItemReadMapper formElementReferenceItemReadMapper;

  @Autowired
  FormElementReferenceItemWriteMapper formElementReferenceItemWriteMapper;

  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    FormElementReferenceItem item = (FormElementReferenceItem) obj;
    Boolean isValidForInsert = this.validateForInsert(item);
    if (isValidForInsert) {
      formElementReferenceItemWriteMapper.insertSelective(item);
    }
    return item.getReferenceItemId();
  }

  public List<FormElementReferenceItem> get(Integer id) throws BusinessException {
    List<FormElementReferenceItem> items = formElementReferenceItemReadMapper.selectByElementId(id);
    return items;
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      formElementReferenceItemWriteMapper.deleteByElementId(Integer.valueOf(id));
    }
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {
    FormElementReferenceItem item = (FormElementReferenceItem) obj;
    Boolean ret = validate(item);
    return ret;
  }

  public Boolean validate(Object obj) throws BusinessException {
    FormElementReferenceItem item = (FormElementReferenceItem) obj;
    Boolean ret = false;

    if (item == null) {
      throw new BusinessException(ErrorMessageEnum.Element_Reference_Insert_Empty_Reference);
    }
    if (item.getFormElementId() == null) {
      throw new BusinessException(ErrorMessageEnum.Element_Reference_Insert_Empty_Form_Element_ID);
    }
    if (item.getReferenceItemId() == null) {
      throw new BusinessException(ErrorMessageEnum.Element_Reference_Insert_Empty_ID);
    }
    ret = true;
    return ret;
  }

  @Deprecated
  public void update(Object obj) throws BusinessException {
    // TODO Auto-generated method stub

  }

  @Deprecated
  public List<Object> query(QueryUtil queryUtil) {
    // TODO Auto-generated method stub
    return null;
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
