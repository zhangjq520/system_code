package com.logic.system.persistence.write;

import com.logic.system.domain.DiagnoseData;

import java.util.List;


public interface DiagnoseDataWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DiagnoseData record);

    int insertSelective(DiagnoseData record);

    int updateByPrimaryKeySelective(DiagnoseData record);

    int updateByPrimaryKey(DiagnoseData record);

    void insertBatch(List<DiagnoseData> diagnoseDataList);
}