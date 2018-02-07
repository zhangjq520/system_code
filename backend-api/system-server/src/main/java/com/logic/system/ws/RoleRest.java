package com.logic.system.ws;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.RoleDTO;
import com.logic.system.domain.Role;
import com.logic.system.service.IRoleService;
import com.logic.system.ws.dto.RoleConverter;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.List;

@Path("/roles")
@Api(value = "role", description = "Role Rest WebServices", position = 3)
public class RoleRest {

  @Autowired
  private IRoleService roleService;
  
  @Context
  private  HttpServletResponse response;

  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new role based on the passed role object.", position = 1)
  public Response createRole(@ApiParam(value = "param", required = true) RoleDTO roleDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Role role = RoleConverter.fromDTOToRole(roleDto);
      Integer roleId = roleService.insert(role);
      map.setData(roleId);
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
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get all roles.", position = 2)
  public Response getAllRole() {
    CommonResultMap map = new CommonResultMap();
    try {

      List<Role> roleList = roleService.getAllRole();
      List<RoleDTO> roleDtoList = null;
      if (roleList != null && roleList.size() > 0) {
        roleDtoList = new ArrayList<RoleDTO>();
        for (Role role : roleList) {
          RoleDTO roleDto = RoleConverter.fromRoleToDTO(role);
          roleDtoList.add(roleDto);
        }
      }

      map.setData(roleDtoList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }


  @GET
  @Path("/{roleId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get a role object by role ID.", position = 2)
  public Response getRole(@ApiParam(value = "param", required = true) @PathParam("roleId") Integer roleId) {
    CommonResultMap map = new CommonResultMap();
    RoleDTO roleDto = null;
    try {
      Role role = (Role) roleService.get(roleId);
      if (role != null) {
        roleDto = RoleConverter.fromRoleToDTO(role);
      }
      map.setData(roleDto);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(roleDto).build();
  }

  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a role based on the passed-in role object.", position = 3)
  public Response updateRole(@ApiParam(value = "param", required = true) RoleDTO roleDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Role role = RoleConverter.fromDTOToRole(roleDto);
      roleService.update(role);
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
  @Path("/{roleId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete role by role ID.", position = 4)
  public Response deleteRole(@ApiParam(value = "param", required = true) @PathParam("roleId") Integer roleId) {
    CommonResultMap map = new CommonResultMap();
    try {
      roleService.delete(Integer.toString(roleId));
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
  @ApiOperation(value = "Retrieve a role list.", position = 5)
  public Response queryRoles(@ApiParam(value = "param", required = false) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    List<Object> roleList = null;
    try {
      if (queryUtil.getPagingTool() != null) {
    	  queryUtil.getPagingTool().calculateStartIndex();
      }    
      roleList = roleService.query(queryUtil);
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(roleList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(roleList).build();
  }

}
