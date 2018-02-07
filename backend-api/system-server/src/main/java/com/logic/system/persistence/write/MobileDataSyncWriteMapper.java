package com.logic.system.persistence.write;

import com.logic.system.domain.MobileDataSync;


public interface MobileDataSyncWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MobileDataSync record);

    int insertSelective(MobileDataSync record);

    int updateByPrimaryKeySelective(MobileDataSync record);

    int updateByPrimaryKey(MobileDataSync record);
}