package com.logic.system.ws;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Context;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysUtil;
import com.logic.system.domain.SecurityCenter;
import com.logic.system.service.ISecurityCenterService;

/**
 * Author: Roy Zhou Date : 06/03/2016
 */

@Component
@Path("/securitycenter")
@Api(value = "securitycenter", description = "SecurityCenter Rest WebServices", position = 31)
public class SecurityCenterRest {

	// private Logger logger =
	// LoggerFactory.getLogger(SecurityCenterRest.class);

	@Autowired
	private ISecurityCenterService securityCenterService;

	@Context
	private HttpServletResponse response;

	@GET
	@Path("/{userId}")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "To get user's SecurityCenter information by primary key", position = 3)
	public Response get(@ApiParam(value = "param", required = true) @PathParam("userId") Integer userId) {
		CommonResultMap map = new CommonResultMap();

		try {
			SecurityCenter securityCenter = null;
			Object obj = securityCenterService.get(userId);

			if (obj != null) {
				securityCenter = (SecurityCenter) obj;
			}

			map.setData(securityCenter);
			map.setResult(CommonResult.SUCCESS);

		} catch (BusinessException e) {
			e.printStackTrace();
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}

		SysUtil.additionalResonseHeader(map, response);

		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "To update existing SecurityCenter record by primary key id", position = 2)
	public Response update(@ApiParam(value = "param", required = true) SecurityCenter securityCenter) {

		CommonResultMap map = new CommonResultMap();

		try {
			securityCenterService.update(securityCenter);
			map.setResult(CommonResult.SUCCESS, "Update success");
		} catch (BusinessException e) {
			e.printStackTrace();
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}

		SysUtil.additionalResonseHeader(map, response);

		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
}
