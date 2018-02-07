package com.logic.system.persistence.write;

import com.logic.system.domain.UserNotifyConfig;

public interface UserNotifyConfigWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserNotifyConfig record);

    int insertSelective(UserNotifyConfig record);

    int updateByPrimaryKeySelective(UserNotifyConfig record);

    int updateByPrimaryKey(UserNotifyConfig record);
}