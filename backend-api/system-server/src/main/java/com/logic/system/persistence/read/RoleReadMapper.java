package com.logic.system.persistence.read;

import com.logic.system.domain.Role;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.RoleDTO;

import java.util.List;

public interface RoleReadMapper {

  Role selectByPrimaryKey(Integer id);

  List<Role> getRolesByUserID(Integer userID);

  List<Role> getAllRole();
  
  List<Role> getETMGRoles();

  Integer checkCodeUnique(Role role);

  List<RoleDTO> getRoles(QueryUtil queryUtil);

  int getRoleIdCount(Integer id);


}
