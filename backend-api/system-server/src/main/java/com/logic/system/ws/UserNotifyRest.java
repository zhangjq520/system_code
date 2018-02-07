package com.logic.system.ws;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.system.domain.UserNotifyConfig;
import com.logic.system.service.IUserNotifyConfigService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Component
@Path("/userNotifyConfig")
@Api(value = "user_notify_config")
public class UserNotifyRest {
	
	  Logger logger = LoggerFactory.getLogger(UserRest.class);
	
	  @Autowired
	  private IUserNotifyConfigService userNotifyConfigService;
	  
	  @GET
	  @Path("/list/{userId}")
	  @Produces(MediaType.APPLICATION_JSON)
	  @ApiOperation(value="Get user notification config list by user Id")
	  public Response getUserNotifyConfigList(@ApiParam(value ="User Id", required = true) @PathParam("userId") Integer userId ){
		  CommonResultMap map = new CommonResultMap();
		  UserNotifyConfig[] configs = null;
		  try{
			  configs = userNotifyConfigService.getUserNotifyConfigs(userId);
			  map.setData(configs);
			  map.setResult(CommonResult.SUCCESS);
			
		  } catch(BusinessException e) {
			  e.printStackTrace();
			  map.setResult(CommonResult.ERROR);
			  map.setData(e.getMessage());
			  logger.error(e.getMessage());
		  }
		  
		  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	  }
	  
	  @GET
	  @Path("/detail/{configId}")
	  @Produces(MediaType.APPLICATION_JSON)
	  @ApiOperation(value="Get user notify config detail by key")
	  public Response getUserNotifyConfigDetail(@ApiParam(value="Notify Config Id", required = true) @PathParam("configId") Integer configId) {
		  CommonResultMap map = new CommonResultMap();
		  try{
			  Object obj = userNotifyConfigService.get(configId);
			  map.setData(obj);
			  map.setResult(CommonResult.SUCCESS);
		  } catch(BusinessException e) {
			  e.printStackTrace();
			  map.setResult(CommonResult.ERROR);
			  map.setData(e.getMessage());
			  logger.error(e.getMessage());
		  }	  
		  
		  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	  }
	  
	  @POST
	  @Path("/addConfig")
	  @Produces(MediaType.APPLICATION_JSON)
	  @Consumes(MediaType.APPLICATION_JSON)
	  @ApiOperation(value="create new notify config")
	  public Response createConfig(@ApiParam(value="user notify config", required = true) UserNotifyConfig config){
		  
		  CommonResultMap map = new CommonResultMap();
		  
		  try{
			Integer configId = userNotifyConfigService.insert(config);
			if(configId !=null && configId > 0){
				map.setResult(CommonResult.SUCCESS, "Add success");
				map.setData(configId);
			} else {
				map.setResult(CommonResult.ERROR, "Add failed");
			}
		  } catch(BusinessException e) {
			  e.printStackTrace();
			  map.setResult(CommonResult.ERROR, "Add failed");
			  map.setData(e.getMessage());
			  logger.error(e.getMessage());
		  }		  
		  
		  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	  }
	  
	  @PUT
	  @Path("/updateConfig")
	  @Produces(MediaType.APPLICATION_JSON)
	  @Consumes(MediaType.APPLICATION_JSON)
	  @ApiOperation(value="update notify config")
	  public Response updateConfig(@ApiParam(value="user notify config", required = true) UserNotifyConfig config){
		  
		  CommonResultMap map = new CommonResultMap();
		  
		  try{
			userNotifyConfigService.update(config);
			map.setResult(CommonResult.SUCCESS, "Update success");
		  } catch(BusinessException e) {
			  e.printStackTrace();
			  map.setResult(CommonResult.ERROR, "Update failed");
			  map.setData(e.getMessage());
			  logger.error(e.getMessage());
		  }		  
		  
		  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	  }
	  
	  @DELETE
	  @Path("/deleteConfig/{configId}")
	  @Produces(MediaType.APPLICATION_JSON)
	  @Consumes(MediaType.APPLICATION_JSON)
	  @ApiOperation(value="delete notify config")
	  public Response deleteConfig(@ApiParam(value="user notify config Id", required = true) @PathParam("configId") String configId){
		  
		  CommonResultMap map = new CommonResultMap();
		  
		  try{
			userNotifyConfigService.delete(configId);
			map.setResult(CommonResult.SUCCESS, "Delete success");
		  } catch(BusinessException e) {
			  e.printStackTrace();
			  map.setResult(CommonResult.ERROR, "Delete failed");
			  map.setData(e.getMessage());
			  logger.error(e.getMessage());
		  }		  
		  
		  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	  }
}
