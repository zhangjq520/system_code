package com.logic.system.persistence.write;

import com.logic.system.domain.FormSection;

public interface FormSectionWriteMapper {

  int deleteByPrimaryKey(FormSection record);

  int insertSelective(FormSection record);

  int updateByPrimaryKeySelective(FormSection record);

  int deleteByFormId(FormSection record);

}
