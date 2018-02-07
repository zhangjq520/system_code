package com.logic.system.ws.dto;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.RoleDTO;
import com.logic.system.domain.Role;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class RoleConverter {

    public static RoleDTO fromRoleToDTO(Role role) {
        RoleDTO roleDto = new RoleDTO();
        roleDto.setId(role.getId() == null ? null : role.getId().toString());
        roleDto.setCode(role.getCode());
        roleDto.setName(role.getName());
        roleDto.setLevel(role.getLevel() == null ? null : role.getLevel().toString());
        roleDto.setSystemic(role.getSystemic() == null ? null : role.getSystemic().toString());
        return roleDto;

    }

    public static Role fromDTOToRole(RoleDTO roleDTO) throws BusinessException {
        Role role = new Role();
        role.setId(SysUtil.getValidDtoInteger(roleDTO.getId(), "RoleDTO id"));
        role.setCode(roleDTO.getCode());
        role.setName(roleDTO.getName());
        role.setLevel(SysUtil.getValidDtoInteger(roleDTO.getLevel(), "RoleDTO level"));
        role.setSystemic(SysUtil.getValidDtoBoolean(roleDTO.getSystemic(), "systemic"));
        return role;
    }
}
