package com.logic.system.persistence.read;

import com.logic.system.domain.MobileNotificationLog;


public interface MobileNotificationLogReadMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSTEM_MOBILE_NOTIFICATION_LOG
     *
     * @mbggenerated Fri Jan 22 18:38:44 CST 2016
     */
    MobileNotificationLog selectByPrimaryKey(Integer id);
}