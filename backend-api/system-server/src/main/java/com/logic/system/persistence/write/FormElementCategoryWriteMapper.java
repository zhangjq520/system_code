package com.logic.system.persistence.write;

import com.logic.system.domain.FormElementCategory;

public interface FormElementCategoryWriteMapper {

  int deleteByPrimaryKey(FormElementCategory key);

  void deleteByElementId(Integer id);

  int insertSelective(FormElementCategory record);
}
