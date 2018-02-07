package com.logic.system.persistence.write;

import java.util.List;
import java.util.Map;

import com.logic.system.domain.FormResponseDetail;

public interface FormResponseDetailWriteMapper {

  int deleteByPrimaryKey(Integer id);

  int insertSelective(FormResponseDetail record);

  int updateByPrimaryKeySelective(FormResponseDetail record);

  void insertBatch(List<FormResponseDetail> formResponseDetailList);
  
  /***
   * batch update formResponseDetail info
   * @param formResponseDetailList
   */
  void deleteBatch(Map<String, Integer> map);
  /***
   * 根据elementid和masterid修改值
   * @param record
   * @return
   */
  int updateDetailByEleIdAndMasterId(FormResponseDetail record);
}
