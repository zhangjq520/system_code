package com.logic.system.ws;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysUtil;
import com.logic.system.domain.PersonalInfo;
import com.logic.system.service.IPersonalInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * Author: omer 
 * Date  : 29-10-2015
 */
@Path("/personalinfo")
@Api(value = "personalinfo", description = "Personal Info Rest service to " +
        "provide interface to other micro services", position = 30)
public class PersonalInfoRest {

    @Autowired
    private IPersonalInfoService personalInfoService;
    
    @Context
    private  HttpServletResponse response;

    @GET
    @Path("/{infoId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Response permission info for given id.", position = 1)
    public Response get(@ApiParam(value = "param", required = true) @PathParam("infoId") Integer infoId) {
        CommonResultMap map = new CommonResultMap();
        try{
            PersonalInfo personalInfo = (PersonalInfo) personalInfoService.get(infoId);
            map.setData(personalInfo);
            map.setResult(CommonResult.SUCCESS);
        }catch(Exception e){
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        SysUtil.additionalResonseHeader(map,response);
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Creates a new personal info.", position = 2)
    public Response insert(@ApiParam(value = "param", required = true) PersonalInfo personalInfo) {
        CommonResultMap map = new CommonResultMap();
        Integer psersonalInfoId = null;
        try {
            psersonalInfoId = personalInfoService.insert(personalInfo);
            map.setData(psersonalInfoId);
            map.setResult(CommonResult.SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        SysUtil.additionalResonseHeader(map,response);
        return Response.status(HttpCodeEnum.OK.getCode()).entity(psersonalInfoId).build();
    }

    @POST
    @Path("/{infoId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Updates given personal info.", position = 3)
    public Response update(@ApiParam(value = "param", required = true) PersonalInfo personalInfo, @PathParam("infoId") Integer infoId) {
        CommonResultMap map = new CommonResultMap();
        try {
            personalInfo.setId(infoId);
            personalInfoService.update(personalInfo);
            map.setResult(CommonResult.SUCCESS, "Update personal info success");
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        SysUtil.additionalResonseHeader(map,response);
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @DELETE
    @Path("/{infoId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Deletes given personal info.", position = 4)
    public Response delete(@ApiParam(value = "param", required = true) @PathParam("infoId") Integer roleId) {
        CommonResultMap map = new CommonResultMap();
        try {
            personalInfoService.delete(Integer.toString(roleId));
            map.setResult(CommonResult.SUCCESS, "Delete success");
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        SysUtil.additionalResonseHeader(map,response);
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
    
    @PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update an PersonalInfo.", position = 5)
	public Response updateOrgProfile(@ApiParam(value = "param", required = true) PersonalInfo personalInfo) {
		CommonResultMap map = new CommonResultMap();
		try {
			personalInfoService.update(personalInfo);
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
