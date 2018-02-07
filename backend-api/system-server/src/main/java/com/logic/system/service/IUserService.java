package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.configuration.UserEmployeeDTO;
import com.logic.common.ws.dto.system.UserDTO;
import com.logic.common.ws.dto.system.UserPassChangeDTO;
import com.logic.common.ws.dto.system.UserSearchDTO;
import com.logic.system.domain.Organization;
import com.logic.system.domain.Role;
import com.logic.system.domain.User;
import com.logic.system.domain.UserRole;

import java.util.List;

public interface IUserService extends ICRUDService {

  //String login(LoginDTO dto) throws BusinessException;

  List<Organization> getUserOrganizations(Integer userId);

  User getByLoginId(String loginId);

  List<UserEmployeeDTO> getUserEmployee(QueryUtil queryUtil);

  List<UserSearchDTO> getAllSearchUser();

  List<UserDTO> quickFind(String name);

  List<Role> getRolesByUserId(Integer userId);

  List<UserRole> getUserRolesByUserId(Integer userId);

  List<User> getUsersByRoleCode(String code);
  
  List<User> getAllUserByRoleId(Integer roleId); 
  
  void updateSecurityId(User user);

  //SYS_PWD_CFG_C_PWD_EXP
  boolean canPWDExpired();

  boolean isCurrentUserPwdExpired();

  Boolean updatePassword(UserPassChangeDTO userPassChangeDTO);

  Integer getT2GUserId();

  Integer getT2OUserId();
  
  Integer getFactoryManagerId(String installVendorId);
  
  List<User> getAllUserByOrgID(Integer orgID);
  
  Boolean resetPassword(UserPassChangeDTO userPassChangeDTO);
  
  void sendNewCreationEmail(Integer userId);
  
  String activateUser(Integer userId);
  
  void sendResetPwdEmail(Integer userId, String newPwd);
  void sendResetPwdRequestEmail(Integer userId);
  
  void refreshAllOrgUserHierarchy();
}
