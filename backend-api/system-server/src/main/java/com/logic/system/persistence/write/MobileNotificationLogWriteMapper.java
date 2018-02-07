package com.logic.system.persistence.write;

import com.logic.system.domain.MobileNotificationLog;


public interface MobileNotificationLogWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MobileNotificationLog record);

    int insertSelective(MobileNotificationLog record);

    int updateByPrimaryKeySelective(MobileNotificationLog record);

    int updateByPrimaryKey(MobileNotificationLog record);
}