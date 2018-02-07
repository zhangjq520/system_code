package com.logic.system.persistence.write;

import com.logic.system.domain.FormElementOptionalAnswer;

public interface FormElementOptionalAnswerWriteMapper {

  int deleteByPrimaryKey(FormElementOptionalAnswer record);

  void deleteByElementId(FormElementOptionalAnswer record);

  void deletePhysicallyByElementId(Integer id);

  int insertSelective(FormElementOptionalAnswer record);

  int updateByPrimaryKeySelective(FormElementOptionalAnswer record);

}
