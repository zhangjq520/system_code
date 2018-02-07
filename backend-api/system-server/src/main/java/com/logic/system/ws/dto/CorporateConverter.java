package com.logic.system.ws.dto;

import java.util.ArrayList;
import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CorporateDTO;
import com.logic.common.ws.dto.system.CorporateHierarchyDTO;
import com.logic.system.domain.Organization;

public class CorporateConverter {
	public static CorporateHierarchyDTO convertFromCorporateToHierarchyDto(Organization org) {
		CorporateHierarchyDTO dto = new CorporateHierarchyDTO();
		dto.setId(org.getId());
		dto.setOrg_type(org.getOrgType());
		dto.setCode(org.getCode());
		dto.setShort_name(org.getShortName());
		dto.setFull_name(org.getFullName());
		dto.setParent_id(org.getParentId());

		List<CorporateHierarchyDTO> orgDtoList = null;
		List<Organization> orgList = org.getChildOrganization();
		if (orgList != null && orgList.size() > 0) {
			dto.setHas_children(true);
			orgDtoList = new ArrayList<CorporateHierarchyDTO>();
			for (Organization organization : orgList) {
				CorporateHierarchyDTO orgDto = convertFromCorporateToHierarchyDto(organization);
				orgDtoList.add(orgDto);
			}
		} else {
			dto.setHas_children(false);
		}
		dto.setChildCorporate(orgDtoList);

		return dto;
	}

	public static CorporateDTO convertFromCorporateToDto(Organization org) {
		CorporateDTO dto = new CorporateDTO();
		dto.setId(org.getId() == null ? null : org.getId().toString());
		dto.setOrg_type(org.getOrgType());
		dto.setCode(org.getCode());
		dto.setShort_name(org.getShortName());
		dto.setFull_name(org.getFullName());
		dto.setParent_id(org.getParentId() == null ? null : org.getParentId().toString());
		dto.setDescription(org.getDescription());
		dto.setStatus(org.getStatus());
		dto.setManager_id(org.getManagerId() == null ? null : org.getManagerId().toString());
		dto.setAddress_id(org.getAddressId() == null ? null : org.getAddressId().toString());

		return dto;
	}

	public static Organization convertFromDtoToCorporate(CorporateDTO dto) throws BusinessException {
		Organization org = new Organization();
		org.setId(SysUtil.getValidDtoInteger(dto.getId(), "corporateDTO id"));
		org.setOrgType(dto.getOrg_type());
		org.setCode(dto.getCode());
		org.setShortName(dto.getShort_name());
		org.setFullName(dto.getFull_name());
		org.setParentId(SysUtil.getValidDtoInteger(dto.getParent_id(), "corporateDTO parentId"));
		org.setDescription(dto.getDescription());
		org.setStatus(dto.getStatus());
		org.setManagerId(SysUtil.getValidDtoInteger(dto.getManager_id(), "corporateDTO manageerId"));
		org.setAddressId(SysUtil.getValidDtoInteger(dto.getAddress_id(), "corporateDTO addressId"));

		return org;
	}
}
