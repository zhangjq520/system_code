package com.logic.system.persistence.read;

import com.logic.system.domain.User;
import com.logic.common.ws.dto.system.MyProfileInfoDTO;

public interface MyProfileReadMapper {

  MyProfileInfoDTO selectMyProfileInfo(Integer userId);

  User selectUserInfo(Integer userId);
}
