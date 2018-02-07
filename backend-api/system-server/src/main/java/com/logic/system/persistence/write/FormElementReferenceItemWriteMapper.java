package com.logic.system.persistence.write;

import com.logic.system.domain.FormElementReferenceItem;

public interface FormElementReferenceItemWriteMapper {

  int deleteByPrimaryKey(FormElementReferenceItem key);

  void deleteByElementId(Integer id);

  int insertSelective(FormElementReferenceItem record);
}
