package com.logic.system.ws;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.ConfigurationDTO;
import com.logic.system.domain.Configuration;
import com.logic.system.service.IConfigurationService;
import com.logic.system.ws.dto.ConfigurationConverter;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/configurations")
@Api(value = "configuration", description = "Configuration Rest WebServices", position = 6)
public class ConfigurationRest {

  @Autowired
  private IConfigurationService configService;
  
  @Context
  private HttpServletResponse response;

  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new configuration based on the passed configuration object.", position = 1)
  public Response createConfiguration(@ApiParam(value = "param", required = true) ConfigurationDTO configDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Configuration config = ConfigurationConverter.fromDTOToConfiguration(configDto);
      configService.insert(config);
      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/{keyName}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get a configuration object by configuration key.", position = 2)
  public Response getConfiguration(@ApiParam(value = "param", required = true) @PathParam("keyName") String keyName) {
    CommonResultMap map = new CommonResultMap();
    ConfigurationDTO configDto = null;
    try {
      Configuration config = configService.get(keyName);
      if (config != null) {
        configDto = ConfigurationConverter.fromConfigToDTO(config);
      }
      map.setData(configDto);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(configDto).build();
  }

  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a configuration based on the passed-in configuration object.", position = 3)
  public Response updateConfiguration(@ApiParam(value = "param", required = true) ConfigurationDTO configDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Configuration config = ConfigurationConverter.fromDTOToConfiguration(configDto);
      configService.update(config);
      map.setResult(CommonResult.SUCCESS, "Update success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @DELETE
  @Path("/{keyName}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete configuration by key.", position = 4)
  public Response deleteConfiguration(@ApiParam(value = "param", required = true) @PathParam("keyName") String keyName) {
    CommonResultMap map = new CommonResultMap();
    try {
      configService.delete(keyName);
      map.setResult(CommonResult.SUCCESS, "Delete success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @POST
  @Path("/list")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Retrieve a configuration list.", position = 5)
  public Response queryConfigurations(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    queryUtil.getPagingTool().calculateStartIndex();
    List<Object> configList = configService.query(queryUtil);
    try {
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(configList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(configList).build();
  }
}
