package com.logic.system.persistence.read;



import com.logic.system.domain.FormElementReferenceItem;

import java.util.List;

public interface FormElementReferenceItemReadMapper {

  List<FormElementReferenceItem> selectByElementId(Integer id);
}
