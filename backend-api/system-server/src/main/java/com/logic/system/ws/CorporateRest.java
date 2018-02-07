package com.logic.system.ws;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.IconStyle;
import com.logic.common.enums.OrganizationTypeEnum;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.AddressDTO;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.CorporateDTO;
import com.logic.common.ws.dto.system.CorporateHierarchyDTO;
import com.logic.common.ws.dto.system.OrganizationForJSTreeDTO;
import com.logic.system.domain.Organization;
import com.logic.system.domain.User;
import com.logic.system.service.IAddressService;
import com.logic.system.service.ICodeService;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.IUserService;
import com.logic.system.ws.dto.CodeConverter;
import com.logic.system.ws.dto.CorporateConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/corporates")
@Api(value = "corporate", description = "Corporate structure Rest WebServices", position = 8)
public class CorporateRest {
	
	private final Integer textStartIndex = 0;
	private final Integer textEndIndex = 22;

	@Autowired
	ICorporateService corporateService;

	@Autowired
	private ICodeService codeService;

	@Context
	private HttpServletResponse response;

	@Autowired
	private IUserService userService;
	
	@Autowired
	private IAddressService addressService;
	
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a new corporate structure based on the passed corporate structure object.", position = 1)
	public Response createCorporate(@ApiParam(value = "param", required = true) CorporateDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			Organization org = CorporateConverter.convertFromDtoToCorporate(dto);
			Integer id = corporateService.insert(org);
			map.setData(id);
			map.setResult(CommonResult.SUCCESS, "Create success");

		} catch (BusinessException e) {
			map.setResult(e);

		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());

		}

		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/{corporateId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a corporate structure object by corporate ID.", position = 2)
	public Response getCorporate(
			@ApiParam(value = "param", required = true) @PathParam("corporateId") Integer corporateId) {
		CommonResultMap map = new CommonResultMap();
		try {
			Organization org = (Organization) corporateService.get(corporateId);
			CorporateDTO dto = null;
			if (org != null) {
				dto = CorporateConverter.convertFromCorporateToDto(org);
				Organization parentOrg = (Organization) corporateService.get(org.getParentId());
				if(parentOrg != null) dto.setParent_short_name(parentOrg.getShortName());
				if(org.getAddressId()!=null){
					AddressDTO address = (AddressDTO) addressService.get(org.getAddressId());
				}
				User manager = (User)userService.get(org.getManagerId());
				if(manager != null && manager.getPersonalInfo() != null){
					String firstName = manager.getPersonalInfo().getFirstName();
					String lastName = manager.getPersonalInfo().getLastName();
					StringBuilder fullName = new StringBuilder();
					if(lastName != null) fullName.append(lastName);
					if(firstName != null) fullName.append(firstName);

					dto.setManager_name(fullName.toString());
				}
			}
			map.setData(dto);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update a corporate structure based on the passed-in corporate structure object.", position = 3)
	public Response updateCorporate(@ApiParam(value = "param", required = true) CorporateDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			Organization org = CorporateConverter.convertFromDtoToCorporate(dto);
			org.setCreatedDtm(null);
			corporateService.update(org);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Delete corporate structure by corporate structure ID.", position = 4)
	public Response deleteCorporate(
			@ApiParam(value = "param", required = true) @QueryParam("corporateId") String corporateId) {
		CommonResultMap map = new CommonResultMap();
		try {
			corporateService.delete(corporateId);
			map.setResult(CommonResult.SUCCESS, "Delete success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@POST
	@Path("/list/table")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Retrieve a corporate structure list, view by table list.", position = 5)
	public Response queryCorporates(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
		CommonResultMap map = new CommonResultMap();
		try {
			queryUtil.getPagingTool().calculateStartIndex();
			// List<CorporateDTO> corporateList =
			// corporateService.getCorporates(queryUtil);
			List<Object> corporateList = corporateService.query(queryUtil);
			Integer totalCount = queryUtil.getPagingTool().getTotalNum();
			map.setResult(CommonResult.SUCCESS);
			map.setData(corporateList);
			map.setResultTotalCount(totalCount);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}

		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/list/tree")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Retrieve a corporate structure list, view by tree.", position = 6)
	public Response getRootCorporate() {
		CommonResultMap map = new CommonResultMap();
		List<CorporateDTO> corporateDtoList = null;
		try {
			List<Organization> orgList = corporateService.getRootCorporate();
			if (orgList != null && orgList.size() > 0) {
				corporateDtoList = new ArrayList<CorporateDTO>();
				for (Organization org : orgList) {
					Integer orgId = org.getId();
					CorporateDTO dto = CorporateConverter.convertFromCorporateToDto(org);
					List<Organization> list = corporateService.getCorporateChildren(orgId);
					if (list != null && list.size() > 0) {
						dto.setHas_children(new Boolean(true).toString());
					} else {
						dto.setHas_children(new Boolean(false).toString());
					}
					corporateDtoList.add(dto);
				}
			}
			map.setResult(CommonResult.SUCCESS);
			map.setData(corporateDtoList);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(corporateDtoList).build();
	}

	@GET
	@Path("/{corporateId}/children")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get child corporate list by parent corporate id.", position = 7)
	public Response getCorporateChildren(
			@ApiParam(value = "param", required = true) @PathParam("corporateId") Integer corporateId) {
		CommonResultMap map = new CommonResultMap();
		try {
			List<CorporateDTO> corporateDtoList = null;
			List<Organization> orgList = corporateService.getCorporateChildren(corporateId);
			if (orgList != null && orgList.size() > 0) {
				corporateDtoList = new ArrayList<CorporateDTO>();
				for (Organization org : orgList) {
					CorporateDTO dto = CorporateConverter.convertFromCorporateToDto(org);
					Integer orgId = org.getId();
					List<Organization> list = corporateService.getCorporateChildren(orgId);
					if (list != null && list.size() > 0) {
						dto.setHas_children(new Boolean(true).toString());
					} else {
						dto.setHas_children(new Boolean(false).toString());
					}
					corporateDtoList.add(dto);
				}
			}
			map.setData(corporateDtoList);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/{corporateId}/hierarchy")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get corporate hierarchy by corporate id.", position = 8)
	public Response getCorporateHierarchy(
			@ApiParam(value = "param", required = true) @PathParam("corporateId") Integer corporateId) {
		CommonResultMap map = new CommonResultMap();
		try {
			List<CorporateHierarchyDTO> dtoList = new ArrayList<CorporateHierarchyDTO>();
			List<Organization> orgList = null;
			orgList = corporateService.getAllCorporateHierarchy(corporateId);
			if (orgList != null && orgList.size() > 0) {
				for (Organization org : orgList) {
					CorporateHierarchyDTO dto = CorporateConverter.convertFromCorporateToHierarchyDto(org);
					dtoList.add(dto);
				}
			}
			map.setData(dtoList);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/initData")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Initialize Data", position = 9)
	public Response initData() {
		CommonResultMap map = new CommonResultMap();
		try {
			List<CodeDTO> corporateStructureTypeList = codeService.getHierarchyCodes(SystemEnum._A8.name());

			List<Code> statusList = codeService.getChildCodes(SystemEnum._A9.name());
			List<CodeDTO> statusDtoList = null;
			if (statusList != null && statusList.size() > 0) {
				statusDtoList = new ArrayList<CodeDTO>();
				for (Code code : statusList) {
					CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(code);
					statusDtoList.add(codeDto);
				}
			}

			Map<String, Object> retMap = new HashMap<String, Object>();
			retMap.put("corporateStructureTypeList", corporateStructureTypeList);
			retMap.put("statusList", statusDtoList);
			map.setData(retMap);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/{orgId}/childrenForJSTree")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@ApiOperation(value = "Get child org list by parent id.", position = 3, response = String.class)
	public Response getChildModulesForJSTree(
			@ApiParam(value = "param", required = true) @PathParam("orgId") Integer orgId) {
		CommonResultMap map = new CommonResultMap();
		List<OrganizationForJSTreeDTO> dtoList = new ArrayList<OrganizationForJSTreeDTO>();
		List<Organization> organizationList = corporateService.getCorporateChildren(orgId);
		try {
			for (Organization org : organizationList) {
				OrganizationForJSTreeDTO dto = new OrganizationForJSTreeDTO();
				dto.setId(String.valueOf(org.getId()));

				List<Organization> orgList = corporateService.getCorporateChildren(org.getId());
				if (orgList != null && !orgList.isEmpty()) {
					dto.setChildren("1");
				}else{
					dto.setChildren("0");
				}
				
				StringBuffer buf = new StringBuffer();
				buf.append("[").append(org.getCode()).append("] ").append(org.getShortName());

				if(buf.length() > textEndIndex) {
					dto.setText(buf.substring(textStartIndex, textEndIndex));
				} else {
					dto.setText(buf.toString());					
				}
				
				switch (OrganizationTypeEnum.toType(org.getOrgType())) {
				case GroupCompanies:
					dto.setIcon(IconStyle.ORG_GROUPCOMPANIES.getStyle());
					break;
				case Company:
					dto.setIcon(IconStyle.ORG_COMPANY.getStyle());
					break;
				case Region:
					dto.setIcon(IconStyle.ORG_REGION.getStyle());
					break;
				case Division:
					dto.setIcon(IconStyle.ORG_DIVISION.getStyle());
					break;
				case Agent:
					dto.setIcon(IconStyle.ORG_AGENT.getStyle());
					break;
				case Departments:
					dto.setIcon(IconStyle.ORG_DEPARTMENTS.getStyle());
					break;
				case Department:
					dto.setIcon(IconStyle.ORG_DEPARTMENT.getStyle());
					break;
				default:
					break;
				}
				dtoList.add(dto);
			}

			map.setData(dtoList);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(dtoList).build();
	}

	@GET
	@Path("/{corporateIds}/organizationForJSTree")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Retrieve root Org :(eg:4,3)", position = 7)
	public Response getRootModuleForJSTree(@ApiParam(value = "param", required = true) @PathParam("corporateIds") String corporateIds) throws BusinessException {
		CommonResultMap map = new CommonResultMap();
		List<OrganizationForJSTreeDTO> organizationForJSTreeDTOList = new ArrayList<OrganizationForJSTreeDTO>();
		 try {
			 String[] strCorporate = corporateIds.split(",");
			 for(String s : strCorporate){
				 Organization org = (Organization) corporateService.get(Integer.parseInt(s));
				 OrganizationForJSTreeDTO organizationForJSTreeDTO = corporateService.getRootOrgForJSTree(s);
				 switch (OrganizationTypeEnum.toType(org.getOrgType())) {
				    case GroupCompanies:
				    	organizationForJSTreeDTO.setIcon(IconStyle.ORG_GROUPCOMPANIES.getStyle());
						break;
					case Company:
						organizationForJSTreeDTO.setIcon(IconStyle.ORG_COMPANY.getStyle());
						break;
					case Department:
						organizationForJSTreeDTO.setIcon(IconStyle.ORG_DEPARTMENT.getStyle());
						break;
					default:
						break;
					}
					organizationForJSTreeDTOList.add(organizationForJSTreeDTO);
			 }
		
			map.setResult(CommonResult.SUCCESS);
			map.setData(organizationForJSTreeDTOList);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(organizationForJSTreeDTOList).build();
	}
	
	@GET
	@Path("/{corporateIds}/codes")
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get corporate code by multi corporateIds.", position = 10)
	public Response getHieraCorporatesCodes(
			@ApiParam(value = "param", required = true) @PathParam("corporateIds") String corporateIds) {
		CommonResultMap map = new CommonResultMap();
		Map<String, String> ret = new HashMap<String, String>();
		try {
			StringBuffer orgCodesBuffer = new StringBuffer();
			String[] corporateIdList = corporateIds.split(",");
			for (String corporateId : corporateIdList) {
				Organization or = (Organization) corporateService.get(Integer.valueOf(corporateId));
				if (or != null) {
					orgCodesBuffer.append(or.getCode()).append(",");
				}
				orgCodesBuffer = ff(orgCodesBuffer, Integer.valueOf(corporateId));
			}
			ret.put("orgCodes", orgCodesBuffer.toString().substring(0, orgCodesBuffer.toString().length() - 1));
			map.setData(ret);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@GET
	@Path("/{corporateIds}/childCoporateIds")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get child corporate ids by multiple corporate ids.", position = 8)
	public Response getChildCoporateIds(
			@ApiParam(value = "param", required = true) @PathParam("corporateIds") String corporateIds) {
		CommonResultMap map = new CommonResultMap();
		Map<String, String> ret = new HashMap<String, String>();
		
		try {

			StringBuffer childOrgIdsBuffer = new StringBuffer();
			String[] corporateIdList = corporateIds.split(",");
			
			List<Organization> orgList = null;
			Set<Integer> orgSet = new HashSet<Integer>();

			for (String corporateId : corporateIdList) {
				orgList = corporateService.getAllCorporateHierarchy(Integer.parseInt(corporateId));
				orgSet.add(Integer.parseInt(corporateId));
				for (Organization org : orgList) {
					orgSet.add(org.getId());
				}
			}
			
			if (orgSet != null && orgSet.size() > 0) {
				for (Integer orgId : orgSet) {
					if (orgId != null) {
						childOrgIdsBuffer.append(orgId).append(",");
					}
				}
			}

			ret.put("childOrgIds", childOrgIdsBuffer.toString().substring(0, childOrgIdsBuffer.toString().length() - 1));
			map.setData(ret);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	private StringBuffer ff(StringBuffer sb, Integer corporateId) {
		StringBuffer sb_old = new StringBuffer();
		sb_old.append(sb);
		List<Organization> list = corporateService.getCorporateChildren(corporateId);
		if (list != null && list.size() > 0) {
			for (Organization org : list) {
				Integer orgId = org.getId();
				sb_old.append(org.getCode()).append(",");
				sb_old = ff(sb_old, orgId);
			}
		}
		return sb_old;
	}
}
