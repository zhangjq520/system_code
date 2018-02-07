package com.logic.system.persistence.read;

import com.logic.system.domain.UserNotifyConfig;

public interface UserNotifyConfigReadMapper {

    UserNotifyConfig selectByPrimaryKey(Integer id);
    UserNotifyConfig[] selectByUserId(Integer userId);
}