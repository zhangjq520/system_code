package com.logic.system.ws;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
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

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.LogicUserDetails;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CacheFactory;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.ICache;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.FileDTO;
import com.logic.common.ws.dto.system.OrganizationDTO;
import com.logic.common.ws.dto.system.RoleDTO;
import com.logic.common.ws.dto.system.UserCacheDTO;
import com.logic.common.ws.dto.system.UserDTO;
import com.logic.common.ws.dto.system.UserPassChangeDTO;
import com.logic.system.domain.SystemFile;
import com.logic.system.domain.User;
import com.logic.system.service.ICodeService;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.IFileService;
import com.logic.system.service.IRoleService;
import com.logic.system.service.IUserService;
import com.logic.system.service.impl.PersonalInfoService;
import com.logic.system.ws.dto.CodeConverter;
import com.logic.system.ws.dto.FileConverter;
import com.logic.system.ws.dto.RoleConverter;
import com.logic.system.ws.dto.UserConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

//import com.logic.system.microservices.system.SystemClient;

/**
 * Created by ronnieking on 5/25/15.
 */

@Component
@Path("/users")
@Api(value = "user", description = "User Rest WebServices", position = 1)
public class UserRest {
  Logger logger = LoggerFactory.getLogger(UserRest.class);
  @Autowired
  private IUserService userService;

  @Autowired
  private ICodeService codeService;

  @Autowired
  private IRoleService roleService;

  @Autowired
  private IFileService fileService;

  @Autowired
  private PersonalInfoService personalInfoService;
  
  @Autowired
  private ICorporateService corporateService;
  
  @Context
  private  HttpServletResponse response;

  @GET
  @Path("/oauth")
  public LogicUserDetails getUser() {
    return SecurityUtils.getCurrentLogin();
  }

  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new user based on the passed user object.", position = 1)
  public Response createUser(@ApiParam(value = "param", required = true) UserDTO userDTO) {
    CommonResultMap map = new CommonResultMap();
    try {
      Integer userID = userService.insert(userDTO);    
      map.setData(userID);
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
  @Path("/{userID}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get an user object by user ID.", position = 2)
  public Response getUser(@ApiParam(value = "param", required = true) @PathParam("userID") Integer userID) {
    CommonResultMap map = new CommonResultMap();
    try {
      User user = (User) userService.get(userID);
      UserDTO userDTO = null;

      if (user != null) {
    	List<OrganizationDTO> orgList = corporateService.queryOrgByUser(userID);
    	StringBuffer orgNames = new StringBuffer ();
    	StringBuffer orgCodes = new StringBuffer ();
    	if(orgList != null && orgList.size() > 0) {
    		for (OrganizationDTO orgDTO : orgList) {
    			orgNames.append(orgDTO.getFull_name()).append(",");
    			orgCodes.append(orgDTO.getCode()).append(",");
			}
    	}
    	userDTO = UserConverter.fromUserToDTO(user);
    	if(orgNames.length() > 0 && orgCodes.length() > 0) {
    		userDTO.setOrg_names(orgNames.toString().substring(0,orgNames.length()-1));
    		userDTO.setOrg_codes(orgCodes.toString().substring(0,orgCodes.length()-1));
    	}
      }

      map.setData(userDTO);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }
  
  @GET
  @Path("/getUserByLoginId/{loginID}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get an user object by user loginID.", position = 2)
  public Response getUserByLoginId(@ApiParam(value = "param", required = true) @PathParam("loginID") String loginID) {
    CommonResultMap map = new CommonResultMap();
    try {
      User user = (User) userService.getByLoginId(loginID);
      map.setData(user);
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
  @ApiOperation(value = "Update an user based on the passed-in user object.", position = 3)
  public Response updateUser(@ApiParam(value = "param", required = true) UserDTO userDTO) {
    CommonResultMap map = new CommonResultMap();
    try {
      userService.update(userDTO);
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
  
  @GET
  @Path("/activateUser/{userId}")
  @Produces(MediaType.TEXT_HTML)
  @ApiOperation(value = "Activate user by user login ID.", position = 3)
  public Response activateUser(@ApiParam(value = "param", required = true) @PathParam("userId") Integer userId) {
    CommonResultMap map = new CommonResultMap();
    try {
    	
      String responseMsg = userService.activateUser(userId);
      
      map.setData(responseMsg);
      map.setResult(CommonResult.SUCCESS, "Your account is activated successfully.");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @DELETE
  @Path("/{userIDs}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete user by user ID.", position = 4)
  public Response deleteUser(@ApiParam(value = "param", required = true) @PathParam("userIDs") String userIDs) {
    CommonResultMap map = new CommonResultMap();

    try {
      userService.delete(userIDs);
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
  @ApiOperation(value = "Retrieve an user list based on userName, need use field 'org_id' to search the user in the org", position = 5)
  public Response queryUsers(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    List<Object> userList = null;
    try {
      queryUtil.getPagingTool().calculateStartIndex();
      userList = userService.query(queryUtil);
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(userList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(userList).build();
  }

  @GET
  @Path("/initData")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Initialize Data", position = 6)
  public Response initData() {
    CommonResultMap map = new CommonResultMap();
    Map<String, Object> retMap = new HashMap<String, Object>();
    try {

      List<CodeDTO> codeDtoList = CodeConverter.fromCodeListToDTOList(codeService.getChildCodes(SystemEnum._A1.name()));
      List<CodeDTO> localeDtoList = CodeConverter.fromCodeListToDTOList(codeService.getChildCodes(SystemEnum._A2.name()));      
      List<RoleDTO> roleDtoList = roleService.getAllRole().stream().map(RoleConverter::fromRoleToDTO).collect(Collectors.toList());
           
      retMap.put("countries", codeDtoList);
      retMap.put("roleList", roleDtoList);
      retMap.put("localeList", localeDtoList);
      map.setData(retMap);
      map.setResult(CommonResult.SUCCESS);

      logger.info("============================  get initData  ==============================");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(retMap).build();
  }

  @GET
  @Path("/quickFind")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "quick search by firstName or lastName", position = 7)
  public Response quickFind(@ApiParam(value = "param", required = true) @QueryParam("name") String name) {
    CommonResultMap map = new CommonResultMap();
    List<UserDTO> list  = null;
    try {
      list = userService.quickFind(name);
      map.setData(list);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(list).build();
  }

  @GET
  @Path("/logout")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "User logout", position = 8)
  public Response logout(@Context HttpServletRequest request) {
    CommonResultMap map = new CommonResultMap();
    try {
      String token = request.getHeader("token");
      ICache cache = CacheFactory.getCacheImpl();
      cache.removeSession(token);
      map.setResult(CommonResult.SUCCESS, "Logout");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    //SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/listAllLoginUser")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "List all login user", position = 9)
  public Response listAllLoginUser(@Context HttpServletRequest request) {
    CommonResultMap map = new CommonResultMap();
    Map<String, String> userInfoMap = new HashMap<String, String>();
    try {
      ICache cache = CacheFactory.getCacheImpl();
      ConcurrentHashMap<String, Object> listUser = cache.getAllSessions();
      if (listUser != null) {
        for (Map.Entry<String, Object> entry : listUser.entrySet()) {
          String key = entry.getKey();
          UserCacheDTO dto = (UserCacheDTO) entry.getValue();
          String userInfo = dto.toString();
          userInfoMap.put(key, userInfo);
        }
      }
      map.setData(userInfoMap);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(userInfoMap).build();
  }

  @POST
  @Path("/avatar")
  @Consumes(MediaType.MULTIPART_FORM_DATA)
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Upload avatar create/update", position = 1)
  public Response insertAvatar(@FormDataParam("param") String json, @FormDataParam("file") InputStream file,
                         @FormDataParam("file") FormDataContentDisposition fileDisposition) {
    CommonResultMap map = new CommonResultMap();

    FileDTO fileResultDto = null;
    try {
      SystemFile systemFile = null;
      User user = (User) userService.get(SecurityUtils.getCurrentLogin().getUserId());
      // if we already have avatar first delete that one
      if (user.getPersonalInfo().getAvatar() != null){
        fileService.delete(String.valueOf(user.getPersonalInfo().getAvatar().getId()));
      }

      FileDTO fileDto = FileConverter.fromFileToDTO(json);
      systemFile = FileConverter.fromDTOToFile(new SystemFile(), fileDto);
      systemFile = fileService.insert(systemFile, file, fileDisposition, null);

      // relate the avatar with personal info
      user.getPersonalInfo().setAvatarId(systemFile.getId());
      personalInfoService.update(user.getPersonalInfo());

      if (systemFile == null) {
        map.setResult(CommonResult.ERROR, "insert error");
      } else {

        fileResultDto = FileConverter.fromFileToDTO(systemFile);
        map.setData(fileResultDto);
        map.setResult(CommonResult.SUCCESS, "insert success");
      }
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(fileResultDto).build();
  }

  @PUT
  @Path("/changePassword")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Change Password By User ID")
  public Response updatePassword(@ApiParam(value = "param", required = true) UserPassChangeDTO userPassChangeDTO) {
	  CommonResultMap map = new CommonResultMap();
	  Map<String, Object> retVal = new HashMap<String, Object>();
	  Boolean changeSuccess = userService.updatePassword(userPassChangeDTO);
	  if(changeSuccess) {		  
		  retVal.put("changeSuccess", changeSuccess);
		  retVal.put("changeMessage", "Change Password Success !");
	  } else {
		  retVal.put("changeSuccess", changeSuccess);
		  retVal.put("changeMessage", "Change Password Failure !");
	  }
	  map.setData(retVal);
	  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }
  
  @PUT
  @Path("/resetPassword")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Reset Password By User ID")
  public Response resetPassword(@ApiParam(value = "param", required = true) UserPassChangeDTO userPassChangeDTO) {
	  
	  CommonResultMap map = new CommonResultMap();
	  Map<String, Object> retVal = new HashMap<String, Object>();
	  Boolean changeSuccess = userService.resetPassword(userPassChangeDTO);
	  
	  if(changeSuccess) {
		  retVal.put("changeSuccess", changeSuccess);
		  retVal.put("changeMessage", "Change Password Success !");
	  } else {
		  retVal.put("changeSuccess", changeSuccess);
		  retVal.put("changeMessage", "Change Password Failure !");
	  }
	  map.setData(retVal);
	  
	  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }
  
  @POST
  @Path("/sendResetPwdRequestEmail")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Send reset pwd email")
  public Response sendResetPwdRequestEmail(@ApiParam(value = "param", required = true) UserPassChangeDTO userPassChangeDTO) {
	  
	  CommonResultMap map = new CommonResultMap();
	  
	  userService.sendResetPwdRequestEmail(userPassChangeDTO.getUser_id());
	  map.setResult(CommonResult.SUCCESS);
	  
	  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }  
  
  @POST
  @Path("/sendResetPwdEmail")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Send reset pwd email")
  public Response sendResetPwdEmail(@ApiParam(value = "param", required = true) UserPassChangeDTO userPassChangeDTO) {
	  
	  CommonResultMap map = new CommonResultMap();
	  
	  userService.sendResetPwdEmail(userPassChangeDTO.getUser_id(), userPassChangeDTO.getNew_password());	
	  map.setResult(CommonResult.SUCCESS);
	  
	  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }  
  
  @POST
  @Path("/sendNewAccountEmail")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Send create new account email")
  public Response sendNewAccountEmail(@ApiParam(value = "param", required = true) Integer userId) {
	  
	  CommonResultMap map = new CommonResultMap();
	  
      userService.sendNewCreationEmail(userId);
      
	  map.setResult(CommonResult.SUCCESS);
	  
	  return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }
  

  @GET
  @Path("/refreshOrgUserHierarchy")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "refresh system_org_user_hierarchy table")
  public Response refreshOrgUserHierarchy() {
    CommonResultMap map = new CommonResultMap();

    try {
    	userService.refreshAllOrgUserHierarchy();
    	map.setData("refresh system_org_user_hierarchy table success");
    	map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }

    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }
}
