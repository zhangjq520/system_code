package com.logic.system.service.impl;

import com.logic.system.domain.Role;
import com.logic.system.persistence.read.RoleReadMapper;
import com.logic.system.persistence.write.RoleWriteMapper;
import com.logic.system.service.IPermissionService;
import com.logic.system.service.IRoleService;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.RoleDTO;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service
public class RoleService implements IRoleService {

  @Autowired
  private RoleReadMapper roleReadMapper;

  @Autowired
  private RoleWriteMapper roleWriteMapper;

  @Autowired
  private IPermissionService permissionService;

  @Autowired
  private HttpServletRequest request;
  
  private final String roleCode = "OPMG";

  public List<Role> getAllRole() {
    return roleReadMapper.getAllRole();
  }

  public int insert(Object obj) throws BusinessException {
    Role role = (Role) obj;
    Boolean isValid = this.validateForInsert(role);
    if (isValid) {
      role.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      roleWriteMapper.insertSelective(role);
    }
    return role.getId();
  }

  public Boolean validateForUpdate(Object obj) throws BusinessException {

    Role role = (Role) obj;
    Boolean ret = validate(role);
    
    if(null == role.getId())
    {
        throw new BusinessException(ErrorMessageEnum.Role_UpdateRole_Empty_ID);
    }

    if (role.getId() != null) {
      if (get(role.getId()) == null) {
        throw new BusinessException(ErrorMessageEnum.Role_UpdateRole_Role_Not_Exist, role.getId());
      }
    }

    if (null != role.getCode() && StringUtils.isEmpty(role.getCode())) {
      throw new BusinessException(ErrorMessageEnum.Role_UpdateRole_Empty_Code);
    }

    if (null != role.getName() && StringUtils.isEmpty(role.getName())) {
      throw new BusinessException(ErrorMessageEnum.Role_UpdateRole_Empty_Name);
    }

    ret = true;
    return ret;
  }

  public Role get(Integer id) {
    return roleReadMapper.selectByPrimaryKey(id);
  }
  
  //判断是否是企业管理员
  public boolean isOPMG() {
	  
	  List<Role> roleList = roleReadMapper.getRolesByUserID(SecurityUtils.getCurrentLogin().getUserId());
	  if (roleList != null && roleList.size() > 0) {
		  for (Role role : roleList) {
			  if (roleCode.equals(role.getCode())) {
				  return true;
			  }
		  }
	  }
	  return false; 
  }
  
  //获取企业管理员及其下属角色

  
  
  

  public void update(Object obj) throws BusinessException {
    Role role = (Role) obj;
    Boolean isValid = this.validateForUpdate(role);
    if (isValid) {
      role.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      roleWriteMapper.updateByPrimaryKeySelective(role);
    }
  }

  public void delete(String ids) throws BusinessException {

    String[] idArr = ids.split(",");
    for (String id : idArr) {

      Role role = get(Integer.valueOf(id));
      if (role == null) {
        throw new BusinessException(ErrorMessageEnum.Role_DeleteRole_Role_Not_Exist, Integer.valueOf(id));
      }
      roleWriteMapper.deleteUserRoleByRoleId(Integer.valueOf(id));
      permissionService.deleteRolePermissionByRoleId(Integer.valueOf(id));
      roleWriteMapper.deleteByPrimaryKey(role);

    }
  }

  public List<Object> query(QueryUtil queryUtil) {

    List<Object> list = new ArrayList<Object>();
    List<RoleDTO> dtos = roleReadMapper.getRoles(queryUtil);
    if (dtos != null) {
      for (RoleDTO dto : dtos) {
        list.add(dto);
      }
    }
    return list;

  }

  public Boolean validate(Object obj) throws BusinessException {
    Role role = (Role) obj;
    Boolean ret = false;
    if (role == null) {
      throw new BusinessException(ErrorMessageEnum.Role_CreateRole_Empty_Role_Object);
    }
    
    if (!StringUtils.isEmpty(role.getCode())) {
      Integer count = roleReadMapper.checkCodeUnique(role);
      if (count > 0) {
        throw new BusinessException(ErrorMessageEnum.Role_CreateRole_Code_Already_Exist, role.getCode());
      }
    }
    ret = true;
    return ret;
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {
    Role role = (Role) obj;
    Boolean ret = validate(role);

    if (role.getId() != null) {

      throw new BusinessException(ErrorMessageEnum.Role_CreateRole_ID_Not_Empty);
    }

    if (StringUtils.isEmpty(role.getCode())) {
      throw new BusinessException(ErrorMessageEnum.Role_CreateRole_Empty_Code);
    }

    if (StringUtils.isEmpty(role.getName())) {
      throw new BusinessException(ErrorMessageEnum.Role_CreateRole_Empty_Name);
    }

   
    ret = true;
    return ret;
  }

  @Deprecated
  public Boolean validateForDelete(Object obj) throws BusinessException {
    return true;
  }
	
	@Override
	public List<Role> getETMGRoles() {
		
		return roleReadMapper.getETMGRoles();
	}
}
