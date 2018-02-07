package com.logic.system.ws;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.beans.factory.annotation.Qualifier;

import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.IconStyle;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.ForJSTreeDTO;
import com.logic.common.ws.dto.system.FormDTO;
import com.logic.common.ws.dto.system.UserSearchDTO;
import com.logic.system.domain.Form;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IFormService;
import com.logic.system.service.IUserService;
import com.logic.system.ws.dto.CodeConverter;
import com.logic.system.ws.dto.FormConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/forms")
@Api(value = "form", description = "Smart Form Rest WebServices", position = 27)
public class FormRest {

  @Autowired
  @Qualifier("formService")
  IFormService formService;

  @Autowired
  ICodeService codeService;

  @Autowired
  IUserService userService;

  @Context
  private HttpServletResponse response;

  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a form based on the passed form object.", position = 1)
  public Response insert(@ApiParam(value = "param", required = true) FormDTO dto) {
    CommonResultMap map = new CommonResultMap();
    Integer id = null;
    try {
      Form form = FormConverter.fromDTOToForm(dto);
      id = formService.insert(form);
      map.setData(id);
      map.setResult(CommonResult.SUCCESS, "Create success");

    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());

    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(id).build();
  }

  @GET
  @Path("/{formId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get a form object by form ID.", position = 2)
  public Response get(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId) {
    CommonResultMap map = new CommonResultMap();
    FormDTO formDto = null;
    try {
      Form form = (Form) formService.get(formId);
      if (form != null) {
        formDto = FormConverter.fromFormToDTO(form);
      }
      map.setData(formDto);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(formDto).build();
  }

  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a form based on the passed-in form object.", position = 3)
  public Response update(@ApiParam(value = "param", required = true) FormDTO dto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Form form = FormConverter.fromDTOToForm(dto);
      formService.update(form);
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
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete form by form ID.", position = 4)
  public Response delete(@ApiParam(value = "param", required = true) @QueryParam("id") String id) {
    CommonResultMap map = new CommonResultMap();
    try {
      formService.delete(id);
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
  @ApiOperation(value = "Retrieve a form list, need use field 'org_id' to search the form in the org", position = 5)
  public Response query(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    List<Object> formList = null;
    try {
      queryUtil.getPagingTool().calculateStartIndex();
      formList = formService.query(queryUtil);
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(formList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(formList).build();
  }

  @GET
  @Path("/initData")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Initialize form Data, include status and user info", position = 6)
  public Response initData() {
    CommonResultMap map = new CommonResultMap();
    Map<String, Object> retMap = null;
    try {
      List<Code> codeList = codeService.getChildCodes(SystemEnum._A9.name());
      List<CodeDTO> statusList = null;
      if (codeList != null && codeList.size() > 0) {
        statusList = new ArrayList<CodeDTO>();
        for (Code code : codeList) {
          CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(code);
          statusList.add(codeDto);
        }
      }

      List<UserSearchDTO> userList = userService.getAllSearchUser();

      retMap= new HashMap<String, Object>();
      retMap.put("statusList", statusList);
      retMap.put("userList", userList);
      map.setData(retMap);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(retMap).build();
  }
  
  
  @GET
  @Path("/{formId}/childrenForJSTree")
  @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
  @ApiOperation(value = "Get child section list by form id.", position = 3,  response = String.class)
  public Response getChildModulesForJSTree(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId) {
    CommonResultMap map = new CommonResultMap();
    List<ForJSTreeDTO> forJSTreeDTOList = formService.getSectionsForJSTreeByFormId(formId);
    for(ForJSTreeDTO dto : forJSTreeDTOList){
    	if(dto.getChildren()){
    		dto.setIcon(IconStyle.HAS_CHILDREN_WITH_PREFIX.getStyle());
        }else{
        		dto.setIcon(IconStyle.HAS_NO_CHILDREN_WITH_PREFIX.getStyle());
        }
    }
    try {
      map.setData(forJSTreeDTOList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(forJSTreeDTOList).build();
  }
  
  @GET
  @Path("/{formId}/forJSTree")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Retrieve from  ", position = 7)
  public Response getFormForJSTree(@ApiParam(value = "param", required = true) @PathParam("formId") Integer formId) {
    CommonResultMap map = new CommonResultMap();
    ForJSTreeDTO forJSTreeDTO = formService.getFormForJSTreeByFormId(formId);
    forJSTreeDTO.setIcon(IconStyle.ROOT_WITH_PREFIX.getStyle());
    try {
      map.setResult(CommonResult.SUCCESS);
      map.setData(forJSTreeDTO);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(forJSTreeDTO).build();
  }

}
