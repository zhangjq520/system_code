package com.logic.system.ws.dto;

import com.logic.system.domain.PersonalInfo;
import com.logic.system.domain.Role;
import com.logic.system.domain.User;
import com.logic.system.domain.UserOrg;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.RoleDTO;
import com.logic.common.ws.dto.system.UserDTO;
import org.apache.commons.lang.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class UserConverter {
    public static UserDTO fromUserToDTO(User user){
        UserDTO dto = new UserDTO();
        dto.setLogin_id(user.getLoginId());
        dto.setId(user.getId() == null ? null : Integer.toString(user.getId()));
        dto.setLocked(user.getLoginId()==null?null: String.valueOf(user.getLocked()));
        dto.setDisabled(user.getDisabled()==null?null: String.valueOf(user.getDisabled()));
        dto.setSystemic((user.getSystemic()!=null && user.getSystemic()) ? "1" : "0");
        dto.setPwd_expired_date(user.getPwdExpiredDate());       
        dto.setDefault_locale(user.getDefaultLocale());
        PersonalInfo personalInfo = user.getPersonalInfo();
        if(user.getSecurityId() != null && user.getSecurityId()>0){
        	dto.setSecurityId(user.getSecurityId().toString());
        }
        if (personalInfo != null) {
            dto.setFirst_name(personalInfo.getFirstName());
            dto.setLast_name(personalInfo.getLastName());
            dto.setEmail_primary(personalInfo.getEmailPrimary());
            dto.setWorkPhoneNumber(personalInfo.getWorkPhoneNumber());
            dto.setMobilePhoneNumber(personalInfo.getMobilePhoneNumber());
            dto.setTitle(personalInfo.getTitle());
            Integer pid = personalInfo.getId();
            
            if(pid>0){
                dto.setPersonalInfoId(pid.toString());            	
            }
            
            if (personalInfo.getAvatar() != null){
                dto.setAvatarFileName(personalInfo.getAvatar().getFullPath());
            }
        }

        List<UserOrg> userOrgs = user.getUserOrgs();
        if (userOrgs != null) {
            List<String> list = new ArrayList<String>();
            for (UserOrg userOrg : userOrgs) {
                list.add(userOrg.getOrgId().toString());
            }
            dto.setOrg_ids(SysUtil.listToSortedString(list));
        }


        List<Role> roleList = user.getRoleList();
        List<RoleDTO> roleDTOs = new ArrayList<RoleDTO>();
        if (roleList != null) {
        	List<String> listRole = new ArrayList<String>();
            for (int i = 0; i < roleList.size(); i++) {
                RoleDTO roleDTO = RoleConverter.fromRoleToDTO(roleList.get(i));
                roleDTOs.add(roleDTO);
                listRole.add(roleList.get(i).getId().toString());
            }
            List<String> roleNames = roleDTOs.stream().map(RoleDTO::getName).collect(Collectors.toList());
            dto.setRole_ids(SysUtil.listToSortedString(listRole));
            dto.setRole_name(StringUtils.join(roleNames.toArray(), ","));
        }

        dto.setRoleDTOs(roleDTOs);
        return dto;
    }

    public static User fromDTOtoUser(UserDTO userDTO) throws BusinessException {
        User user = new User();
        user.setId(SysUtil.getValidDtoInteger(userDTO.getId(), "user id"));

        user.setLoginId(userDTO.getLogin_id());
        user.setPassword(userDTO.getPassword());
        user.setLocked(SysUtil.getValidDtoBoolean(userDTO.getLocked(), "user locked"));
        user.setDisabled(SysUtil.getValidDtoBoolean(userDTO.getDisabled(), "user disabled"));
        user.setDefaultLocale(userDTO.getDefault_locale());
        
        if (userDTO.getFirst_name() != null || userDTO.getLast_name() != null
                || userDTO.getEmail_primary() != null || userDTO.getWorkPhoneNumber() != null) {
            PersonalInfo personalInfo = new PersonalInfo();

            personalInfo.setFirstName(userDTO.getFirst_name());
            personalInfo.setLastName(userDTO.getLast_name());
            personalInfo.setEmailPrimary(userDTO.getEmail_primary());
            personalInfo.setWorkPhoneNumber(userDTO.getWorkPhoneNumber());
            personalInfo.setTitle(userDTO.getTitle());
            personalInfo.setMobilePhoneNumber(userDTO.getMobilePhoneNumber());
            
            user.setPersonalInfo(personalInfo);
        }

        if (userDTO.getOrg_ids() != null) {
            List<UserOrg> userOrgs = new ArrayList<UserOrg>();
            String[] orgIdArr = userDTO.getOrg_ids().split(",");
            for (String orgId : orgIdArr) {
                if (!orgId.isEmpty()) {
                    UserOrg userOrg = new UserOrg();
                    userOrg.setUserId(user.getId());
                    userOrg.setOrgId(Integer.valueOf(orgId));
                    userOrgs.add(userOrg);
                }
            }
            user.setUserOrgs(userOrgs);
        }

        if (userDTO.getRoleDTOs() != null) {
            List<Role> roleList = new ArrayList<Role>();
            for (int i = 0; i < userDTO.getRoleDTOs().size(); i++) {
                Role role = new Role();
                role.setId(SysUtil.getValidDtoInteger(userDTO.getRoleDTOs().get(i).getId(), "roleDTOS id"));
                roleList.add(role);
            }
            user.setRoleList(roleList);
        }
        return user;
    }

}
