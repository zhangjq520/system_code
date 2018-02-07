package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryCriteria;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.CorporateDTO;
import com.logic.common.ws.dto.system.OrganizationDTO;
import com.logic.common.ws.dto.system.OrganizationForJSTreeDTO;
import com.logic.system.domain.Organization;
import com.logic.system.domain.User;
import com.logic.system.domain.UserOrg;
import com.logic.system.persistence.read.OrganizationReadMapper;
import com.logic.system.persistence.write.OrganizationWriteMapper;
import com.logic.system.service.ICodeService;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.IUserService;

@Service
public class CorporateService implements ICorporateService {
   
  private final String KEY_ORG_ID = "id";

  @Autowired
  OrganizationReadMapper orgReadMapper;
  

  @Autowired
  OrganizationWriteMapper orgWriteMapper;

  @Autowired
  IUserService userService;

  @Autowired
  private HttpServletRequest request;

  @Autowired
  ICodeService codeService;
  
  public int insert(Object obj) throws BusinessException {
    Organization org = (Organization) obj;
    Boolean isValidForInsert = this.validateForInsert(org);
    if (isValidForInsert) {
      org.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      orgWriteMapper.insertSelective(org);
    }
    
    return org.getId();
  }

  public Organization get(Integer id) {
    Organization org = orgReadMapper.selectByPrimaryKey(id);
    return org;
  }

  public void update(Object obj) throws BusinessException {
    Organization org = (Organization) obj;
    Boolean isValidForUpdate = this.validateForUpdate(org);
    if (isValidForUpdate) {
      org.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
      orgWriteMapper.updateByPrimaryKeySelective(org);
    }
  }

 public List<Object> query(QueryUtil queryUtil) {
	 List<CorporateDTO> corporateDTOList = null;
	 List<Object> list = new ArrayList<Object>();
//	 Integer userId = SecurityUtils.getCurrentLogin().getUserId();
//	 User user = null;
//	 try {
//		 user = (User) userService.get(userId);
//	 } catch (BusinessException e) {
//		 e.printStackTrace();
//	 }
//	 if(user != null){
//		 List<UserOrg> userOrgsList = null;
//		 userOrgsList = user.getUserOrgs();
//		 List<Integer> orgIdsList = new ArrayList<Integer>();
//		 List<QueryCriteria> qcList = queryUtil.getQueryCriterias();
//		 QueryCriteria qc = null;
//		 boolean notExist =false;
//		 if(userOrgsList != null &&userOrgsList.size() > 0){
//			 Integer userOrgId = null;
//			 for (UserOrg org : userOrgsList) {
//				userOrgId = org.getOrgId();
//				orgIdsList.add(userOrgId);
//				orgIdsList = getAllChildByOrgId(userOrgId, orgIdsList);
//			 }
//			 if(qcList != null && qcList.size() > 0){
//				 boolean isOrgQC = true;
//				 int num = qcList.size();
//				 for (int i = 0; i <num ; i++) {
//					qc = qcList.get(i);
//					if(KEY_ORG_ID.equals(qc.getKey())){
//						isOrgQC =false;
//						if(orgIdsList.contains(Integer.parseInt(qc.getValue()))){
//							List<Integer> temp = new ArrayList<Integer>();
//							temp.add(Integer.valueOf(qc.getValue()));
//							temp = getAllChildByOrgId(Integer.valueOf(qc.getValue()), temp);
//							QueryCriteria temp1 = generateQCwithOrgIds(temp);
//	                        qcList.set(i, temp1);
//						}else{
//							notExist = true;
//						}
//					}
//					if(isOrgQC){
//						isOrgQC =false;
//						QueryCriteria temp = generateQCwithOrgIds(orgIdsList);
//						qcList.add(temp);
//					}
//				}
//			 }else{
//				 qc = generateQCwithOrgIds(orgIdsList);
//				 if(qcList == null){
//					 qcList = new ArrayList<QueryCriteria>();
//				 }
//				 qcList.add(qc);
//			 }
//		 }else{
//			 orgIdsList = getAllChildByOrgId(null, orgIdsList);
//		 }
//		 if(!notExist){
//			 queryUtil.setQueryCriterias(qcList);
//			 corporateDTOList =  orgReadMapper.selectCorporates(queryUtil);
//		 }
//	 }

    corporateDTOList =  orgReadMapper.selectCorporates(queryUtil);
    if (corporateDTOList != null) {
      for (CorporateDTO cto : corporateDTOList) {
        Integer id = Integer.valueOf(cto.getId());
		
        Organization org = getCorporateHierarchy(id);
        if (org != null) {
          String path = getCorporatePath(org);
          cto.setPath(path);          
        }     
		list.add(cto);
      }
    }
    return list;
  }
 
private QueryCriteria generateQCwithOrgIds(List<Integer> orgIdsList){
	 	QueryCriteria qc = new QueryCriteria();
	 	String idsListString ="";
		for (int i = 0; i < orgIdsList.size(); i++) {
			idsListString+=","+String.valueOf(orgIdsList.get(i));			
		}
		if(idsListString !=null || !"".equals(idsListString.substring(1))){			    	
			qc.setKey(KEY_ORG_ID);
			qc.setCondition("in");
			qc.setConnection("and");
			qc.setIsValueADigital(true);
			qc.setValue(idsListString.substring(1));
		}
		return qc;
 }

  private String getCorporatePath(Organization org) {
    StringBuffer sb = new StringBuffer("");
    sb.append(org.getFullName());
    while (true) {
      if (org.getChildOrganization() == null) {
        break;
      } else {
        org = org.getChildOrganization().get(0);
        sb.append("-->").append(org.getFullName());
      }
    }
    return sb.toString();
  }

  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      Organization org = get(Integer.valueOf(id));
      if (org == null) {
        throw new BusinessException(ErrorMessageEnum.Corporate_Delete_Not_Exist, Integer.valueOf(id));
      }
      
      Boolean ret = validateForDelete(id);
      if(!ret)
      {
         throw new BusinessException("this item has been userd in other sections");
      }
      
      List<Organization> list = getCorporateChildren(Integer.valueOf(id));
      if (list != null && list.size() > 0) {
        throw new BusinessException(ErrorMessageEnum.Corporate_Delete_Have_Children, Integer.valueOf(id));
      }
     // facilityService.deleteCorporateStructuresByOrgId(Integer.valueOf(id));

      orgWriteMapper.deleteByPrimaryKey(org);
    }
  }

  public List<Organization> getRootCorporate() {
    return orgReadMapper.getRootCorporate();
  }

  public List<Organization> getCorporateChildren(Integer corporateId) {
	  return orgReadMapper.getCorporateChildren(corporateId);
  }

  private List<Organization> getChildOrgsWithCorporateId(Integer corporateId){
	  List<Organization> orgsList = new ArrayList<Organization>();
	  List<Integer> orgIdsList = new ArrayList<Integer>();
	  Organization org = null;
	  orgIdsList = getAllChildByOrgId(corporateId,orgIdsList);
	  int orgIdsListSize = orgIdsList.size();
	  for (int i = 0; i < orgIdsListSize; i++) {
		org = orgReadMapper.selectByPrimaryKey(orgIdsList.get(i));
		orgsList.add(org);
	  }
	  return orgsList;
  }
  
  public Organization getCorporateHierarchy(Integer corporateId) {
    Organization org = get(corporateId);
    org = getParentCorporate(org);
    return org;
  }

  private Organization getParentCorporate(Organization org) {
    if (org != null) {
      Integer parentId = org.getParentId();
      if (parentId != null) {
        Organization parent = this.get(parentId);
        if (parent != null) {
          List<Organization> list = new ArrayList<Organization>();
          list.add(org);
          parent.setChildOrganization(list);
          org = getParentCorporate(parent);
        }
      }
    }
    return org;
  }

  public List<Organization> quickSearch(String code) {
    Map<String, Object> params = new HashMap<String, Object>();
    params.put("code", code);
    return orgReadMapper.quickSearch(params);
  }

  public List<Integer> getAllChildByOrgId(Integer orgId, List<Integer> list) {
	  List<Organization> orgList = null;
	  if(orgId == null){	  
		   orgList = getRootCorporate();
	  }else{	  
		  orgList = getCorporateChildren(orgId);
	  }
    if (orgList != null && orgList.size() > 0) {
      for (Organization org : orgList) {
        Integer childOrgId = org.getId();
        list.add(childOrgId);
        list = getAllChildByOrgId(childOrgId,list);
      }
    }
    return list;
  }

  public List<Organization> getAllCorporateHierarchy(Integer corporateId) {
	  Integer userId = SecurityUtils.getCurrentLogin().getUserId();
	  User user = null;
	  try {
		  user = (User) userService.get(userId);
	  } catch (BusinessException e) {
		  e.printStackTrace();
	  }

	  List<UserOrg> userOrgsList = null;
  	  List<Organization> orgsListTemp =null;	
  	  //List<Organization> orgsList = new ArrayList<Organization>();	
	  if (user != null) {
		  userOrgsList = user.getUserOrgs();
		  List<Integer> orgIdsList = new ArrayList<Integer>();
		  if(userOrgsList != null && userOrgsList.size() > 0){		  
			  for (UserOrg userOrg : userOrgsList) {
				  String userOrgId = String.valueOf(userOrg.getOrgId());
				    orgIdsList.add(Integer.valueOf(userOrgId));
					orgIdsList = getAllChildByOrgId(Integer.valueOf(userOrgId), orgIdsList);
				  if(orgIdsList.contains(corporateId)){
					  orgsListTemp = getChildOrgsWithCorporateId(corporateId);
				  }
			  }
		  } else {
			  orgsListTemp = getChildOrgsWithCorporateId(corporateId);
			  }
		  }
	  
/*	 if(orgsListTemp != null){
		 for (Organization org : orgsListTemp) {
			 org = getParentCorporate(org);
			 orgsList.add(org);			 
		}
	 }*/
  	 return orgsListTemp;
  }

  private Organization getChildCorporate(Organization org) {
    if (org != null) {
      List<Organization> childCorporation = getCorporateChildren(org.getId());
      if (childCorporation != null && childCorporation.size() > 0) {
        for (Organization childOrg : childCorporation) {
          childOrg = getChildCorporate(childOrg);
        }
        org.setChildOrganization(childCorporation);
      }
    }
    return org;
  }

  public Boolean validateForInsert(Object obj) throws BusinessException {

    Organization org = (Organization) obj;

    Boolean ret = validate(org);

    if (null != org.getId()) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_ID_Not_Empty);
    }
    
    if(checkOrgExistence(org.getFullName())){
    	throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Name_Exist);
    }

    if (StringUtils.isEmpty(org.getOrgType())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Empty_Org_Type);
    }

    if (StringUtils.isEmpty(org.getFullName())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Empty_Full_Name);
    }

    if (StringUtils.isEmpty(org.getShortName())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Empty_Short_Name);
    }

    if (StringUtils.isEmpty(org.getStatus())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Empty_Status);
    }

    if (org.getParentId() != null) {
      if (get(org.getParentId()) == null) {
        throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Parent_Not_Exist);
      }
    }

    if (StringUtils.isEmpty(org.getCode())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Empty_Code);
    }

    ret = true;
    return ret;
  }

  public Boolean validateForUpdate(Object obj) throws BusinessException {
    Organization org = (Organization) obj;

    Boolean ret = validate(org);

    if (null != org.getOrgType() && StringUtils.isEmpty(org.getOrgType())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Update_Empty_Org_Type);
    }

    if (null != org.getFullName() && StringUtils.isEmpty(org.getFullName())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Update_Empty_Full_Name);
    }

    if (null != org.getShortName() && StringUtils.isEmpty(org.getShortName())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Update_Empty_Short_Name);
    }

    if (null != org.getStatus() && StringUtils.isEmpty(org.getStatus())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Update_Empty_Status);
    }

    if (get(org.getId()) == null) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Update_Not_Exist);
    }

    if (org.getParentId() != null) {
      if (get(org.getParentId()) == null) {
        throw new BusinessException(ErrorMessageEnum.Corporate_Update_Parent_Not_Exist);
      }
    }

    if (null != org.getCode() && StringUtils.isEmpty(org.getCode())) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Update_Empty_Code);
    }

    ret = true;
    return ret;
  }
  
  private void addChildCodesToCodeList(List<Code> codeList,List<Code> codeListRoot){
	  for (Code code : codeListRoot) {
    	  List<Code> list = codeService.getChildCodes(code.getCode());
          if (list != null && list.size() > 0) {
        	  codeList.addAll(list);  
        	  addChildCodesToCodeList(codeList, list);
          } 
      }
  }
  
  public Boolean validate(Object obj) throws BusinessException {
    Organization org = (Organization) obj;
    boolean ret = false;
    if (org == null) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Or_Update_Empty_Object);
    }

    // 判断status 是以A9标准
    if (org.getStatus() != null && !org.getStatus().trim().isEmpty()) {
      List<Code> codeList = codeService.getChildCodes(SystemEnum._A9.name());
      for (int j = 0; j < codeList.size(); j++) {
        if (org.getStatus().equals(codeList.get(j).getCode())) {
          ret = true;
        }
      }
    }
    if (!ret && org.getStatus() != null) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Or_Update_Status_Not_Valid);
    }

    // 判断org_type 是以A8标准
    boolean iTunes = false;
    if (org.getOrgType() != null && !org.getOrgType().trim().isEmpty()) {
      List<Code> codeListRoot = codeService.getChildCodes(SystemEnum._A8.name());
      List<Code> codeList = new ArrayList<Code>();
      codeList.addAll(codeListRoot);
      addChildCodesToCodeList(codeList, codeListRoot);
      for(Code code :codeList)
    	  System.out.println(code.getCode());
      for (int j = 0; j < codeList.size(); j++) {
        if (org.getOrgType().equals(codeList.get(j).getCode())) {
          iTunes = true;
        }
      }
    }
    if (!iTunes && org.getOrgType() != null) {
      throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Or_Update_OrgType_Not_Valid);
    }

    if (null != org.getCode() && !StringUtils.isEmpty(org.getCode())) {
      int i = orgReadMapper.checkCodeUnique(org);
      if (i > 0) {
        throw new BusinessException(ErrorMessageEnum.Corporate_Insert_Code_Is_Exist);
      }
    }

    ret = true;
    return ret;
  }

  public List<OrganizationDTO> queryOrgByUser(Integer userId) {
    return orgReadMapper.queryOrgByUser(userId);
  }

  @Override
  public Boolean validateForDelete(Object obj) throws BusinessException {

    String id = (String) obj;
    
//    Integer physicalCount = orgReadMapper.getPhysicalCount(id);
//    Integer employeeCount = orgReadMapper.getEmployeeCount(id);
//    Integer inspectionCount = orgReadMapper.getInspectionCount(id);
    Integer orgUserCount = orgReadMapper.getOrgUserCount(id);
    Integer orgQuestionCount = orgReadMapper.getOrgQuestionCount(id);
    Integer orgFormCount = orgReadMapper.getOrgFormCount(id);
//    Integer sum = physicalCount + employeeCount + inspectionCount + orgUserCount + orgQuestionCount + orgFormCount;
    Integer sum =  orgUserCount + orgQuestionCount + orgFormCount;
    if (sum != 0) {
      return false;
    }

    return true;
  }


  @Override
   public List<OrganizationForJSTreeDTO> getChildOrgForJSTree(Integer parentOrgId) {
	  return orgReadMapper.getChildOrgForJSTree(parentOrgId);
  }

  @Override
  public OrganizationForJSTreeDTO getRootOrgForJSTree(String corporateIds) {
	// TODO Auto-generated method stub
	return orgReadMapper.getRootOrgForJSTree(corporateIds);
  }

    @Override
    public Organization getOrganizationByCode(String code){
        return orgReadMapper.selectByCode(code);
    }

	@Override
	public Organization getDivisionBySubcompanyCode(String code) {
		return orgReadMapper.getDivisionBySubcompanyCode(code);
	}
	
	private Boolean checkOrgExistence(String orgName){
		Boolean result = true;
		
		Organization org = orgReadMapper.getOrgByFullName(orgName);
		
		if(org ==null){
			result = false; 
		}		
		
		return result;
	}
}
