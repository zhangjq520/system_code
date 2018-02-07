package com.logic.system.persistence.write;

import com.logic.system.domain.MobileDevice;

public interface MobileDeviceWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MobileDevice record);

    int insertSelective(MobileDevice record);

    int updateByPrimaryKeySelective(MobileDevice record);

    int updateByPrimaryKey(MobileDevice record);
}