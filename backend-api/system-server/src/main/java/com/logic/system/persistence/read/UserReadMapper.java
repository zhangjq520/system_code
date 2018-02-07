package com.logic.system.persistence.read;

import java.util.List;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.configuration.UserEmployeeDTO;
import com.logic.common.ws.dto.system.UserDTO;
import com.logic.common.ws.dto.system.UserSearchDTO;
import com.logic.system.domain.User;
import com.logic.system.domain.UserOrg;
import com.logic.system.domain.UserRole;

public interface UserReadMapper {

  User selectByPrimaryKey(Integer id);

  int checkLoginIdUnique(String loginID);

  List<UserDTO> selectUsers(QueryUtil queryUtil);

  User selectByLoginId(String loginId);

  List<UserDTO> quickFind(String name);

  List<UserEmployeeDTO> getUserEmployee(QueryUtil queryUtil);

  List<UserSearchDTO> getAllSearchUser();

  List<UserOrg> selectOrgByUserId(Integer userId);

  List<UserRole> getUserRolesByUserId(Integer userId);

  List<User> selectAllUserByRoleId(Integer roleId);

  List<User> selectUsersByRoleCode(String code);

  Integer selectFactoryManagerId(String installVendorId);
  
  List<User> getAllUserByOrgID(Integer orgID);
}
