package com.logic.system.service;

import java.util.List;

import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.OrganizationDTO;
import com.logic.common.ws.dto.system.OrganizationForJSTreeDTO;
import com.logic.system.domain.Organization;


public interface ICorporateService extends ICRUDService{

  
  List<Organization> quickSearch(String code);
  
  List<OrganizationDTO> queryOrgByUser(Integer userId);
  
  List<Organization> getRootCorporate();
  
  List<Organization> getCorporateChildren(Integer corporateId);
  
  List<Integer> getAllChildByOrgId(Integer orgId, List<Integer> list);
  
  List<Organization> getAllCorporateHierarchy(Integer corporateId);
  
  List<OrganizationForJSTreeDTO> getChildOrgForJSTree(Integer parentOrgId);

  OrganizationForJSTreeDTO getRootOrgForJSTree(String corporateIds);

  Organization getOrganizationByCode(String code);
  
  Organization getDivisionBySubcompanyCode(String code);
}
