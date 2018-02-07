package com.logic.system.persistence.write;

import com.logic.system.domain.DevicePosition;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
public interface DevicePositionWriteMapper {
    int deleteByPrimaryKey(DevicePosition record);

    int insertSelective(DevicePosition record);

    int updateByPrimaryKeySelective(DevicePosition record);
}
