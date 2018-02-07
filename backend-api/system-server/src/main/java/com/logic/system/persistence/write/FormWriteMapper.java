package com.logic.system.persistence.write;

import com.logic.system.domain.Form;
import com.logic.system.domain.OrgForm;

import java.util.List;

public interface FormWriteMapper {

  int deleteByPrimaryKey(Form record);

  int insertSelective(Form record);

  int updateByPrimaryKeySelective(Form record);

  int insertOrgForms(List<OrgForm> orgForms);

  int deleteOrgForms(Integer formId);

}
