package com.logic.system.persistence.write;

import com.logic.system.domain.Notification;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public interface NotificationWriteMapper {
    int deleteByPrimaryKey(Notification record);

    int insertSelective(Notification record);

    int updateByPrimaryKeySelective(Notification record);
}
