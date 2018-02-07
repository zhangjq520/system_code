package com.logic.system.persistence.write;

import com.logic.system.domain.MobileDevicePosition;


public interface MobileDevicePositionWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MobileDevicePosition record);

    int insertSelective(MobileDevicePosition record);

    int updateByPrimaryKeySelective(MobileDevicePosition record);

    int updateByPrimaryKey(MobileDevicePosition record);
}