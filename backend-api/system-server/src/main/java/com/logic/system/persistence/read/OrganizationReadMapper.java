package com.logic.system.persistence.read;

import java.util.List;
import java.util.Map;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.CorporateDTO;
import com.logic.common.ws.dto.system.OrganizationDTO;
import com.logic.common.ws.dto.system.OrganizationForJSTreeDTO;
import com.logic.system.domain.Organization;

public interface OrganizationReadMapper {

  Organization selectByPrimaryKey(Integer id);

  List<Organization> getCorporateStructuresByPhysicalId(Integer physicalId);

  List<CorporateDTO> selectCorporates(QueryUtil queryUtil);

  List<Organization> getRootCorporate();

  List<Organization> getCorporateChildren(Integer corporateId);

  int checkCodeUnique(Organization org);

  List<Organization> quickSearch(Map<String, Object> params);
  
  List<OrganizationDTO> queryOrgByUser(Integer userId);

  Integer getPhysicalCount(String id);

  Integer getEmployeeCount(String id);

  Integer getInspectionCount(String id);

  Integer getOrgUserCount(String id);

  Integer getOrgQuestionCount(String id);

  Integer getOrgFormCount(String id);
  
  List<OrganizationForJSTreeDTO> getChildOrgForJSTree(Integer parentOrgId);

  OrganizationForJSTreeDTO getRootOrgForJSTree(String corporateId);

  Organization getOrgByCode(String installVendorId);

  Organization selectByCode(String code);

  Organization getDivisionBySubcompanyCode(String code);
  
  Organization getOrgByFullName(String fullName);
}
