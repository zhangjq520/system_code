package com.logic.system.service.impl;

import com.logic.system.domain.FormElementCategory;
import com.logic.system.persistence.read.FormElementCategoryReadMapper;
import com.logic.system.persistence.write.FormElementCategoryWriteMapper;
import com.logic.system.service.IFormElementCategoryService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.QueryUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class FormElementCategoryService implements IFormElementCategoryService {

  @Autowired
  FormElementCategoryReadMapper formElementCategoryReadMapper;

  @Autowired
  FormElementCategoryWriteMapper formElementCategoryWriteMapper;

  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    FormElementCategory category = (FormElementCategory) obj;
    Boolean isValidForInsert = this.validateForInsert(category);
    if (isValidForInsert) {
      formElementCategoryWriteMapper.insertSelective(category);
    }
    return category.getFormElementId();
  }

  public List<FormElementCategory> get(Integer id) throws BusinessException {
    List<FormElementCategory> categories = formElementCategoryReadMapper.selectByElementId(id);
    return categories;
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      formElementCategoryWriteMapper.deleteByElementId(Integer.valueOf(id));
    }
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {

    FormElementCategory category = (FormElementCategory) obj;
    Boolean ret = validate(category);
    return ret;
  }

  public Boolean validate(Object obj) throws BusinessException {
    FormElementCategory category = (FormElementCategory) obj;
    Boolean ret = false;

    if (category == null) {
      throw new BusinessException(ErrorMessageEnum.Element_Category_Insert_Empty_Category);
    }
    if (category.getFormElementId() == null) {
      throw new BusinessException(ErrorMessageEnum.Element_Category_Insert_Empty_Form_Element_ID);
    }
    if (StringUtils.isEmpty(category.getCategory())) {
      throw new BusinessException(ErrorMessageEnum.Element_Category_Insert_Empty_ID);
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
