package com.logic.system.persistence.write;

import com.logic.system.domain.Device;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public interface DeviceWriteMapper {
    int deleteByPrimaryKey(Device record);

    int insertSelective(Device record);

    int updateByPrimaryKeySelective(Device record);

    int unbindDevice(Integer id);

    int bindDevice(String deviceSerial, String userId);
}
