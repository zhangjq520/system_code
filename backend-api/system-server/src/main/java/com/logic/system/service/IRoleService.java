package com.logic.system.service;


import com.logic.system.domain.Role;
import com.logic.common.service.ICRUDService;

import java.util.List;

public interface IRoleService extends ICRUDService {

  List<Role> getAllRole();
  
  boolean isOPMG();
  
  List<Role> getETMGRoles();

}
