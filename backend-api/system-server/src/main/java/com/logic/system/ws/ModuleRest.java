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
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.IconStyle;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.ModuleDTO;
import com.logic.common.ws.dto.system.ModuleForJSTreeDTO;
import com.logic.common.ws.dto.system.ModuleFunctionDTO;
import com.logic.system.domain.Module;
import com.logic.system.domain.ModuleFunction;
import com.logic.system.service.IModuleFunctionService;
import com.logic.system.service.IModuleService;
import com.logic.system.ws.dto.ModuleConverter;
import com.logic.system.ws.dto.ModuleFunctionConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/modules")
@Api(value = "module", description = "Module Rest WebServices", position = 4)
public class ModuleRest {

  @Autowired
  IModuleService moduleService;

  @Autowired
  IModuleFunctionService moduleFunctionService;
  
  @Context
  private  HttpServletResponse response;

  @POST
  @Path("/folder")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new folder module based on the passed module object.", position = 1)
  public Response createFolder(@ApiParam(value = "param", required = true) ModuleDTO moduleDto) {
    CommonResultMap map = new CommonResultMap();
    Integer moduleId = null;
    try {
      Module module = ModuleConverter.fromDTOToModule(moduleDto);
      moduleId = moduleService.insertFolder(module);
      map.setData(moduleId);
      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleId).build();
  }

  @POST
  @Path("/function")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new function module based on the passed module object.", position = 2)
  public Response createFunction(@ApiParam(value = "param", required = true) ModuleDTO moduleDto) {
    CommonResultMap map = new CommonResultMap();
    Integer moduleId = null;
    try {
      Module module = ModuleConverter.fromDTOToModule(moduleDto);
       moduleId = moduleService.insertFunction(module);
      map.setData(moduleId);
      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleId).build();
  }

  @POST
  @Path("/subFunction")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new sub function module based on the passed module object.", position = 3)
  public Response createSubFunction(@ApiParam(value = "param", required = true) ModuleDTO moduleDto) {
    CommonResultMap map = new CommonResultMap();
    Integer moduleId = null;
    try {
      Module module = ModuleConverter.fromDTOToModule(moduleDto);
      moduleId= moduleService.insertSubFunction(module);
      map.setData(moduleId);
      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleId).build();
  }

  @GET
  @Path("/{moduleId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get a module object by module ID.", position = 4)
  public Response getModule(@ApiParam(value = "param", required = true) @PathParam("moduleId") Integer moduleId) {
    CommonResultMap map = new CommonResultMap();
    ModuleDTO moduleDto = null;
    try {
      Module module = (Module) moduleService.get(moduleId);
      if (module != null) {
    	  moduleDto = ModuleConverter.fromModuleToDTO(module);
    	ModuleFunction moduleFunction = moduleFunctionService.getModuleFunctionByModuleId(moduleId);
    	if(moduleFunction != null) {   		
    		ModuleFunctionDTO moduleFunctionDto = ModuleFunctionConverter.fromModuleFunctionToDTO(moduleFunction);
    		moduleDto.setModuleFunctionDto(moduleFunctionDto);
    	}
      }
      map.setData(moduleDto);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleDto).build();
  }

  @GET
  @Path("/{moduleId}/children")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get child module list by parent module id.", position = 5)
  public Response getChildren(@ApiParam(value = "param", required = true) @PathParam("moduleId") Integer moduleId) {
    CommonResultMap map = new CommonResultMap();
    List<ModuleDTO> moduleDtoList = null;
    try {
      List<Module> moduleList = moduleService.getChildren(moduleId);
      if (moduleList != null && moduleList.size() > 0) {
        moduleDtoList = new ArrayList<ModuleDTO>();
        ModuleDTO moduleDto = null;
        for (Module module : moduleList) {
        	moduleDto = ModuleConverter.fromModuleToDTO(module);
        	if(moduleService.getChildren(module.getId()) !=null && moduleService.getChildren(module.getId()).size() > 0) {
        		moduleDto.setHas_children(true);
        	} else {
        		moduleDto.setHas_children(false); 		
        	}      
          moduleDtoList.add(moduleDto);
        }
      }
      map.setData(moduleDtoList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleDtoList).build();
  }

  @PUT
  @Path("/folder")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a folder module based on the passed-in module object.", position = 6)
  public Response updateFolder(@ApiParam(value = "param", required = true) ModuleDTO moduleDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Module module = ModuleConverter.fromDTOToModule(moduleDto);
      moduleService.updateFolder(module);
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

  @PUT
  @Path("/function")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a function module based on the passed-in module object.", position = 7)
  public Response updateFunction(@ApiParam(value = "param", required = true) ModuleDTO moduleDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Module module = ModuleConverter.fromDTOToModule(moduleDto);
      moduleService.updateFunction(module);
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

  @PUT
  @Path("/subFunction")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a sub function module based on the passed-in module object.", position = 8)
  public Response updateSubFunction(@ApiParam(value = "param", required = true) ModuleDTO moduleDto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Module module = ModuleConverter.fromDTOToModule(moduleDto);
      moduleService.updateSubFunction(module);
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
  @Path("/{moduleId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete module by module ID.", position = 9)
  public Response deleteModule(@ApiParam(value = "param", required = true) @PathParam("moduleId") Integer moduleId) {
    CommonResultMap map = new CommonResultMap();
    try {
      moduleService.delete(Integer.toString(moduleId));
      map.setResult(CommonResult.SUCCESS, "Delete success");
    } catch (BusinessException e) {
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/list")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Retrieve root module list.", position = 10)
  public Response getModuleList() {
    CommonResultMap map = new CommonResultMap();
    List<ModuleDTO> moduleDtoList = null;
    try {
      List<Module> moduleList = moduleService.getModuleList();
      if (moduleList != null && moduleList.size() > 0) {
        moduleDtoList = new ArrayList<ModuleDTO>();
        for (Module module : moduleList) {
          ModuleDTO moduleDto = ModuleConverter.fromModuleToDTO(module);
          moduleDtoList.add(moduleDto);
        }
      }
      map.setResult(CommonResult.SUCCESS);
      map.setData(moduleDtoList);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleDtoList).build();
  }
  
  
  @GET
  @Path("/{moduleId}/childrenForJSTree")
  @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
  @ApiOperation(value = "Get child module list by parent id.", position = 3,  response = String.class)
  public List<ModuleForJSTreeDTO> getChildModulesForJSTree(@ApiParam(value = "param", required = true) @PathParam("moduleId") Integer moduleId) {
    CommonResultMap map = new CommonResultMap();
	    List<ModuleForJSTreeDTO> moduleForJSTreeDTOList = moduleService.getChildModulesForJSTree(moduleId);
    for(ModuleForJSTreeDTO dto : moduleForJSTreeDTOList){
    	if(dto.getChildren()){
    		dto.setIcon(IconStyle.HAS_CHILDREN_WITH_PREFIX.getStyle());
        }else{
        		dto.setIcon(IconStyle.HAS_NO_CHILDREN_WITH_PREFIX.getStyle());
        }
    }
    try {
      map.setData(moduleForJSTreeDTOList);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return moduleForJSTreeDTOList;
  }
  
  @GET
  @Path("/{moduleId}/moduleForJSTree")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Retrieve root module ", position = 7)
  public Response getRootModuleForJSTree(@ApiParam(value = "param", required = true) @PathParam("moduleId") Integer moduleId) {
    CommonResultMap map = new CommonResultMap();
    ModuleForJSTreeDTO moduleForJSTreeDTO = moduleService.getModuleForJSTree(moduleId);
    moduleForJSTreeDTO.setIcon(IconStyle.ROOT_WITH_PREFIX.getStyle());
    try {
      map.setResult(CommonResult.SUCCESS);
      map.setData(moduleForJSTreeDTO);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(moduleForJSTreeDTO).build();
  }
}
