package com.logic.system.persistence.read;

import com.logic.system.domain.MobileDataSync;


public interface MobileDataSyncReadMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSTEM_MOBILE_DATA_SYNC
     *
     * @mbggenerated Fri Jan 22 18:38:44 CST 2016
     */
    MobileDataSync selectByPrimaryKey(Integer id);
}