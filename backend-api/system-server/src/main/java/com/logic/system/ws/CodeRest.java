package com.logic.system.ws;

import java.util.ArrayList;
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

import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.IconStyle;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.CodeForJSTreeDTO;
import com.logic.system.service.ICodeService;
import com.logic.system.ws.dto.CodeConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/codes")
@Api(value = "code", description = "Code Rest WebServices", position = 2)
public class CodeRest {

  @Autowired
  private ICodeService codeService;
  
  @Context
  private  HttpServletResponse response;

  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new code based on the passed code object.", position = 1)
  public Response createCode(@ApiParam(value = "param", required = true) CodeDTO codeDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Code code = CodeConverter.fromCodeDTOToCode(new Code(), codeDto);
      // code.updateCommonInfo(userId);
      codeService.insert(code);
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
  @Path("/{code}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get a code object by code.", position = 2)
  public Response getCode(@ApiParam(value = "param", required = true) @PathParam("code") String code) {
    CommonResultMap map = new CommonResultMap();
    CodeDTO codeDto = null;
    try {
      Code systemCode = codeService.getCode(code);
      
      if (systemCode != null) {
        codeDto = CodeConverter.fromCodeToCodeDTO(systemCode);
      }
      map.setData(codeDto);
      map.setResult(CommonResult.SUCCESS);
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/{code}/children")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get child code list by parent code.", position = 3)
  public Response getChildCode(@ApiParam(value = "param", required = true) @PathParam("code") String code) {
    CommonResultMap map = new CommonResultMap();
    List<CodeDTO> codeDtoList = null;
    try {
      List<Code> childCodeList = codeService.getChildCodes(code);
      if (childCodeList != null && childCodeList.size() > 0) {
        codeDtoList = new ArrayList<CodeDTO>();
        for (Code systemCode : childCodeList) {
          CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(systemCode);
          List<Code> list = codeService.getChildCodes(systemCode.getCode());
          if (list != null && list.size() > 0) {
            codeDto.setHas_children(new Boolean(true).toString());
          } else {
            codeDto.setHas_children(new Boolean(false).toString());
          }
          codeDtoList.add(codeDto);
        }
      }

      map.setData(codeDtoList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(codeDtoList).build();
  }
  
  @GET
  @Path("/childrenOf/{codes}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get child code list by multiple parent codes. (e.g. _A1,_A2,_A3)", position = 4)
  public Response getChildCodeByMutiParentCodes(@ApiParam(value = "param", required = true) @PathParam("codes") String codes) {
    CommonResultMap map = new CommonResultMap();
    List<CodeDTO> codeDtoList = new ArrayList<CodeDTO>();
    try {
      List<Code> codeList = codeService.getCodeAndChildren(codes);
      if (codeList != null && codeList.size() > 0) {
        for (Code code : codeList) {
          CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(code);
          List<Code> childCodes = code.getChildCodes();
          if (childCodes != null && childCodes.size() > 0) {
            codeDto.setHas_children(new Boolean(true).toString());
            List<CodeDTO> childCodeDtos = CodeConverter.fromCodeListToDTOList(childCodes);
            if (childCodeDtos != null) {
              codeDto.setChildCodes(childCodeDtos);
            }
          } else {
            codeDto.setHas_children(new Boolean(false).toString());
          }
          codeDtoList.add(codeDto);
        }
      }

      map.setData(codeDtoList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(codeDtoList).build();
  }
  
  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update code based on the passed code object.", position = 5)
  public Response updateCode(@ApiParam(value = "param", required = true) CodeDTO codeDto) {
    CommonResultMap map = new CommonResultMap();
    try {

      Code code = CodeConverter.fromCodeDTOToCode(new Code(), codeDto);
      code.setId(code.getCode().length()); // For update common information.
      codeService.update(code);
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
  @ApiOperation(value = "Delete object code by the passed code.", position = 6)
  public Response deleteCode(@ApiParam(value = "param", required = true) @QueryParam("code") String code) {
    CommonResultMap map = new CommonResultMap();
    try {
      codeService.delete(code);
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
  @ApiOperation(value = "Retrieve root code list, need use field 'org_id' to search the code in the org", position = 7)
  public Response queryRootCodes(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    queryUtil.getPagingTool().calculateStartIndex();
    List<Object> codeList = codeService.query(queryUtil);
    try {
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(codeList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(codeList).build();
  }
  
  @GET
  @Path("/{code}/childrenForJSTree")
  @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
  @ApiOperation(value = "Get child code list by parent code.", position = 3,  response = String.class)
  public List<CodeForJSTreeDTO> getChildCodeForJSTree(@ApiParam(value = "param", required = true) @PathParam("code") String code) {
    CommonResultMap map = new CommonResultMap();
    List<CodeForJSTreeDTO> codeForJSTreeDTOList = codeService.getChildCodesForJSTree(code);
    for(CodeForJSTreeDTO dto : codeForJSTreeDTOList){
    	if(dto.getId().startsWith("_")){
    		if(dto.getChildren()){
    			dto.setIcon(IconStyle.HAS_CHILDREN_WITH_PREFIX.getStyle());
        	}else{
        		dto.setIcon(IconStyle.HAS_NO_CHILDREN_WITH_PREFIX.getStyle());
        	}
    	}else{
    		if(dto.getChildren()){
        		dto.setIcon(IconStyle.HAS_CHILDREN_WITH_OUT_PREFIX.getStyle());
        	}else{
        		dto.setIcon(IconStyle.HAS_NO_CHILDREN_WITHOUT_PREFIX.getStyle());
        	}
    	}
    	
    }
    try {
      map.setData(codeForJSTreeDTOList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return codeForJSTreeDTOList;
  }
  
  @GET
  @Path("/{code}/codeForJSTree")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Retrieve root code list, need use field 'org_id' to search the code in the org", position = 7)
  public Response queryRootCodesForJSTree(@ApiParam(value = "param", required = true) @PathParam("code") String code) {

    CommonResultMap map = new CommonResultMap();
    CodeForJSTreeDTO codeForJSTreeDTO = codeService.getCodeForJSTree(code);
    if(codeForJSTreeDTO.getId().startsWith("_")){
    	codeForJSTreeDTO.setIcon(IconStyle.ROOT_WITH_PREFIX.getStyle());
    }else{
    	codeForJSTreeDTO.setIcon(IconStyle.ROOT_WITHOUT_PREFIX.getStyle());
    }
    try {
      map.setResult(CommonResult.SUCCESS);
      map.setData(codeForJSTreeDTO);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(codeForJSTreeDTO).build();
  }
  
}
