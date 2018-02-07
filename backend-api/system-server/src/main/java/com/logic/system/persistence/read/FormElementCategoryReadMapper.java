package com.logic.system.persistence.read;



import com.logic.system.domain.FormElementCategory;

import java.util.List;

public interface FormElementCategoryReadMapper {

  List<FormElementCategory> selectByElementId(Integer id);
}
