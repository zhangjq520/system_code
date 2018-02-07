package com.logic.system.persistence.write;

import com.logic.system.domain.User;
import com.logic.system.domain.UserOrg;
import com.logic.system.domain.UserRole;

import java.util.List;

public interface UserWriteMapper {

  int deleteByPrimaryKey(User record);

  int insertSelective(User record);

  int updateByPrimaryKeySelective(User record);

  int insertUserRoles(List<UserRole> userRoles);

  int deleteUserRoles(Integer userId);

  int insertUserOrgSelective(UserOrg record);

  void deleteUserOrgByUserId(Integer userId);
  
  void updateSecurityId(User user);
}
