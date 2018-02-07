package com.logic.system.ws;

import java.io.InputStream;
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

import org.apache.commons.lang.StringUtils;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.LogTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.FileDTO;
import com.logic.system.domain.SystemFile;
import com.logic.system.service.IFileService;
import com.logic.system.service.impl.LogService;
import com.logic.system.ws.dto.FileConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/file")
@Api(value = "file", description = "File Rest WebServices", position = 29)
public class FileRest {

  @Autowired
  private IFileService fileService;

  @Autowired
  private LogService logService;    
  
  @Context
  private HttpServletResponse response;

  @POST
  @Consumes(MediaType.MULTIPART_FORM_DATA)
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Upload a new file and save the file info base on the passed file object, if the too large, the api will return error code 413.", position = 1)
  public Response insert(@FormDataParam("param") String json, @FormDataParam("file") InputStream file,
			@FormDataParam("file") FormDataContentDisposition fileDisposition,
			@ApiParam(value = "param", required = false) @QueryParam("file_name") String file_name) {

		CommonResultMap map = new CommonResultMap();
		FileDTO fileResultDto = null;
		try {
			FileDTO fileDto = FileConverter.fromFileToDTO(json);
			SystemFile systemFile = FileConverter.fromDTOToFile(new SystemFile(), fileDto);
			if (StringUtils.isNotEmpty(file_name)) {
			}
			systemFile = fileService.insert(systemFile, file, fileDisposition, file_name);

			if (systemFile == null) {
				map.setResult(CommonResult.ERROR, "insert error");
			} else {
				fileResultDto = FileConverter.fromFileToDTO(systemFile);
				map.setData(fileResultDto);
				map.setResult(CommonResult.SUCCESS, "insert success");
			}
		} catch (BusinessException e) {
			logService.error(this.getClass(), null,  "", SecurityUtils.getCurrentLogin().getUserId(),
					e.toString(), LogTypeEnum.ADD.name());
			e.printStackTrace();
			map.setResult(e);
		} catch (Exception e) {
			logService.error(this.getClass(), null, "", SecurityUtils.getCurrentLogin().getUserId(),
					e.toString(), LogTypeEnum.ADD.name());
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		} finally {
			logService.info(this.getClass(), null, "", SecurityUtils.getCurrentLogin().getUserId(),
					"File upload webservice invoked.", LogTypeEnum.ADD.name());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(fileResultDto).build();
	}

  @PUT
  @Consumes(MediaType.MULTIPART_FORM_DATA)
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "upload new file to replace old file and Update file info based on the passed file object.", position = 2)
  public Response update(@FormDataParam("param") String json, @FormDataParam("file") InputStream file,
      @FormDataParam("file") FormDataContentDisposition fileDisposition) {
    CommonResultMap map = new CommonResultMap();
    FileDTO fileResultDto = null;
    try {
      FileDTO fileDto = FileConverter.fromFileToDTO(json);

      if (fileDisposition == null) {
        throw new BusinessException(ErrorMessageEnum.File_Update_Not_Upload_File);
      }

      if (null == fileDto.getId()) {
        throw new BusinessException(ErrorMessageEnum.File_Update_Empty_ID);
      }

      SystemFile systemFile = (SystemFile) fileService.get(Integer.valueOf(fileDto.getId()));
      systemFile = FileConverter.fromDTOToFile(systemFile, fileDto);
      systemFile = fileService.update(systemFile, file, fileDisposition);

      if (systemFile == null) {
        map.setResult(CommonResult.ERROR, "update error");
      } else {
        fileResultDto = FileConverter.fromFileToDTO(systemFile);
        map.setData(fileResultDto);
        map.setResult(CommonResult.SUCCESS, "update success");
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

  @DELETE
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete object file by the passed file id.", position = 3)
  public Response delete(@ApiParam(value = "param", required = true) @QueryParam("id") String ids) {
    CommonResultMap map = new CommonResultMap();
    try {
      fileService.delete(ids);
      map.setResult(CommonResult.SUCCESS, "delete success");
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
  @Path("/{fileId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get file object by file id.", position = 4)
  public Response getFile(@ApiParam(value = "param", required = true) @PathParam("fileId") Integer fileId) {
    CommonResultMap map = new CommonResultMap();
    SystemFile systemFile = null;
    try {
      systemFile= (SystemFile) fileService.get(fileId);
      if(systemFile != null) {
    	  map.setData(FileConverter.fromFileToDTO(systemFile));
    	  map.setResult(CommonResult.SUCCESS);
      } else {
    	  map.setMessage("File Not Exist !");
    	  map.setResult(CommonResult.BUSINESS_EXCEPTION);
      }
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @POST
  @Path("/list")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "query file list by any condition.", position = 5)
  public Response queryRootCodes(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    queryUtil.getPagingTool().calculateStartIndex();
    List<Object> fileList = fileService.query(queryUtil);
    try {
      queryUtil.getPagingTool().calculateStartIndex();
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(fileList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(fileList).build();
  }
  
	@POST
	@Path("/insertSystemFile")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a file base on the passed file object", position = 6)
	public Response CreateSystemFile(@ApiParam(value = "file object", required = true) FileDTO fileDTO) {
		CommonResultMap map = new CommonResultMap();
		Map<String, Integer> fileIdMap = new HashMap<String, Integer>();
		try {
			SystemFile systemFile = new SystemFile();
			systemFile.setPath(fileDTO.getFullPath());
			systemFile.setName(fileDTO.getName());
			systemFile.setFileType(fileDTO.getFile_type());
			systemFile.setDescription(fileDTO.getDescription());
			Integer fileId = fileService.insert(systemFile);
			fileIdMap.put("fileId", fileId);
			map.setData(fileIdMap);
			map.setResult(CommonResult.SUCCESS, "insert success");
		} catch (BusinessException e) {
			e.printStackTrace();
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}
	
	@PUT
	@Path("/updateSystemFile")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update a file base on the passed file object", position = 6)
	public Response UpdateSystemFile(@ApiParam(value = "file object", required = true) FileDTO fileDTO) {
		CommonResultMap map = new CommonResultMap();
		try {
			SystemFile systemFile = new SystemFile();
			systemFile = FileConverter.fromDTOToFile(systemFile, fileDTO);
		    fileService.update(systemFile);
			map.setResult(CommonResult.SUCCESS, "update success");
		} catch (BusinessException e) {
			e.printStackTrace();
			map.setResult(e);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

}
