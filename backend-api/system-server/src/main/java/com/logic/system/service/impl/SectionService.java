package com.logic.system.service.impl;

import com.logic.system.domain.FormSection;
import com.logic.system.persistence.read.FormReadMapper;
import com.logic.system.persistence.read.FormSectionReadMapper;
import com.logic.system.persistence.write.FormSectionWriteMapper;
import com.logic.system.service.ISectionService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class SectionService implements ISectionService {

  @Autowired
  FormSectionReadMapper sectionReadMapper;

  @Autowired
  FormSectionWriteMapper sectionWriteMapper;

  @Autowired
  FormReadMapper formReadMapper;

  @Autowired
  private HttpServletRequest request;

  @Override
  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    Boolean valid = this.validateForInsert(obj);
    Integer sectionId = null;
    if (valid) {
      FormSection section = (FormSection) obj;
      Integer formId = section.getFormId();
      Integer sequence = sectionReadMapper.selectMaxSequence(formId);
      sequence = sequence == null ? 1 : ++sequence;
      section.setSeq(sequence);
      section.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      sectionWriteMapper.insertSelective(section);
      sectionId = section.getId();
    }
    return sectionId;
  }

  @Override
  public Object get(Integer id) throws BusinessException {
    FormSection section = sectionReadMapper.selectByPrimaryKey(id);
    return section;
  }

  @Override
  @Transactional(rollbackFor = BusinessException.class)
  public void update(Object obj) throws BusinessException {
    Boolean valid = this.validateForUpdate(obj);
    if (valid) {
      FormSection section = (FormSection) obj;
      section.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      sectionWriteMapper.updateByPrimaryKeySelective(section);
    }
  }

  @Override
  public void delete(String ids) throws BusinessException {
    Boolean valid = this.validateForDelete(ids);
    if (valid) {
      FormSection record = new FormSection();
      record.setId(Integer.valueOf(ids));
      record.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      sectionWriteMapper.deleteByPrimaryKey(record);
    }
  }

  @Override
  public List<Object> query(QueryUtil queryUtil) {
    return null;
  }

  @Override
  public Boolean validate(Object obj) throws BusinessException {
    Boolean ret = false;

    if (obj == null) {
      throw new BusinessException(ErrorMessageEnum.Section_Insert_Or_Update_Empty_Section_Object);
    }

    ret = true;
    return ret;
  }

  @Override
  public Boolean validateForInsert(Object obj) throws BusinessException {
    Boolean ret = validate(obj);

    FormSection section = (FormSection) obj;

    if (null != section.getId()) {
      throw new BusinessException(ErrorMessageEnum.Section_Insert_ID_Not_Empty);
    }

    if (StringUtils.isEmpty(section.getName())) {
      throw new BusinessException(ErrorMessageEnum.Section_Insert_Empty_Name);
    }

    return ret;
  }

  @Override
  public Boolean validateForUpdate(Object obj) throws BusinessException {
    Boolean ret = false;

    validate(obj);
    FormSection section = (FormSection) obj;
    if (get(section.getId()) == null) {
      throw new BusinessException(ErrorMessageEnum.Section_Update_Section_Not_Exist, section.getId());
    }

    if (null != section.getName() && StringUtils.isEmpty(section.getName())) {
      throw new BusinessException(ErrorMessageEnum.Section_Update_Empty_Name);
    }

    ret = true;
    return ret;
  }

  @Override
  public Boolean validateForDelete(Object obj) throws BusinessException {
    Boolean ret = false;
    Integer sectionId = Integer.parseInt(String.valueOf(obj));
    if (get(sectionId) == null) {
      throw new BusinessException(ErrorMessageEnum.Section_Delete_Section_Not_Exist, sectionId);
    }
    ret = true;
    return ret;

  }

  @Override
  public List<FormSection> selectByFormId(Integer formId) {
    return sectionReadMapper.selectByFormId(formId);
  }

}
