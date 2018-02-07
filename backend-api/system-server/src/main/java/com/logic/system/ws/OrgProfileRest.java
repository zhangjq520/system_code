package com.logic.system.ws;

import java.util.List;

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

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.system.domain.OrgProfile;
import com.logic.system.service.IOrgProfile;
import com.logic.system.ws.dto.OrgProfileDTO;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/orgprofile")
@Api(value = "orgprofile")
public class OrgProfileRest {
	@Context
	private HttpServletResponse response;
	
	@Autowired
	private IOrgProfile orgProfile;

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a new service based on the passed service object.")
	public Response createService(@ApiParam(value = "param", required = true) OrgProfileDTO dto) {
		CommonResultMap map = new CommonResultMap();
		try {
			OrgProfile pojo = dto.toOrgProfilePOJO(dto);
			Integer serviceId = orgProfile.insert(pojo);
			map.setData(serviceId);
			map.setResult(CommonResult.SUCCESS, "Create success");
		} catch (BusinessException e) {
			e.printStackTrace();
			map.setResult(e);
			map.setResult(CommonResult.BUSINESS_EXCEPTION, e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
		
	}
	
	
	@POST
	@Path("/list")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Retrieve a orgprofile list.", position = 5)
	public Response queryServices(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
		CommonResultMap map = new CommonResultMap();
		List<?> orgProfileList = null;
		try {
			queryUtil.getPagingTool().calculateStartIndex();
			orgProfileList = orgProfile.query(queryUtil);
			Integer totalCount = queryUtil.getPagingTool().getTotalNum();
			map.setResult(CommonResult.SUCCESS);
			map.setData(orgProfileList);
			map.setResultTotalCount(totalCount);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(orgProfileList).build();
	}
	
	

	@GET
	@Path("/{orgId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a orgprofile structure object by orgId.", position = 2)
	public Response getCorporate(
			@ApiParam(value = "param", required = true) @PathParam("orgId") Integer orgId) {
		CommonResultMap map = new CommonResultMap();
		try {
			OrgProfile org = (OrgProfile) orgProfile.getByOrgId(orgId);
			
			OrgProfileDTO dto = new OrgProfileDTO();
			if (org != null) {
				dto = dto.toOrgProfileDTO(org);
			}
			map.setData(dto);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
	
	@DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Delete orgprofile structure by orgId .", position = 4)
	public Response deleteCorporate(
			@ApiParam(value = "param", required = true) @QueryParam("orgId") String orgId) {
		CommonResultMap map = new CommonResultMap();
		try {
			orgProfile.delete(orgId);
			map.setResult(CommonResult.SUCCESS, "Delete success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update an OrgProfile.", position = 5)
	public Response updateOrgProfile(@ApiParam(value = "param", required = true) OrgProfileDTO orgProfileDTO) {
		CommonResultMap map = new CommonResultMap();
		try {
			OrgProfile org_profile = orgProfileDTO.toOrgProfilePOJO(orgProfileDTO);
			orgProfile.update(org_profile);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

}
