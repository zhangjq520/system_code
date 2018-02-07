package com.logic.system.ws;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.SystemEnum;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.LogDTO;
import com.logic.system.domain.Log;
import com.logic.system.service.ICodeService;
import com.logic.system.service.ILogService;
import com.logic.system.ws.dto.CodeConverter;
import com.logic.system.ws.dto.LogConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/logs")
@Api(value = "log", description = "Log Rest WebServices", position = 7)
public class LogRest {

	@Autowired
	private ILogService logService;

	@Autowired
	private ICodeService codeService;

	@Context
	private HttpServletResponse response;

	@GET
	@Path("/{logId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a log object by log ID.", position = 1)
	public Response getLog(@ApiParam(value = "param", required = true) @PathParam("logId") Integer logId) {
		CommonResultMap map = new CommonResultMap();
		LogDTO logDto = null;
		try {
			Log log = (Log) logService.get(logId);
			if (log != null) {
				logDto = LogConverter.fromLogToDto(log);
			}
			map.setData(logDto);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(logDto).build();
	}

	@GET
	@Path("/list/{orgId}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get corporate transfer logs by corporate ID.", position = 2)
	public Response getCorpLogs(@ApiParam(value = "param", required = true) @PathParam("orgId") Integer orgId) {
		CommonResultMap map = new CommonResultMap();
		List<LogDTO> logDtoList = null;
		try {
			logDtoList= logService.getByOrgId(orgId);
			map.setData(logDtoList);
			map.setResult(CommonResult.SUCCESS);
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
	@ApiOperation(value = "Retrieve a log list.", position = 3)
	public Response queryLogs(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
		CommonResultMap map = new CommonResultMap();
		List<Object> logList = null;
		try {
			queryUtil.getPagingTool().calculateStartIndex();
			logList = logService.query(queryUtil);
			Integer totalCount = queryUtil.getPagingTool().getTotalNum();
			map.setResult(CommonResult.SUCCESS);
			map.setData(logList);
			map.setResultTotalCount(totalCount);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
	}

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a log based on the passed object.")
	public Response createLog(@ApiParam(value = "param", required = true) LogDTO dto) {
		CommonResultMap map = new CommonResultMap();
		logService.createLog(dto);
		map.setResult(CommonResult.SUCCESS, "Create success");
		return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();

	}
	
	@GET
	@Path("/initData")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Initialize Data", position = 5)
	public Response initData() {
		CommonResultMap map = new CommonResultMap();
		Map<String, Object> retMap = null;
		try {
			List<Code> logLevelList = codeService.getChildCodes(SystemEnum._A6.name());
			List<CodeDTO> logLevelDtoList = null;
			if (logLevelList != null && logLevelList.size() > 0) {
				logLevelDtoList = new ArrayList<CodeDTO>();
				for (Code code : logLevelList) {
					CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(code);
					logLevelDtoList.add(codeDto);
				}
			}

			List<Code> logTypeList = codeService.getChildCodes(SystemEnum._A7.name());
			List<CodeDTO> logTypeDtoList = null;
			if (logTypeList != null && logTypeList.size() > 0) {
				logTypeDtoList = new ArrayList<CodeDTO>();
				for (Code code : logTypeList) {
					CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(code);
					logTypeDtoList.add(codeDto);
				}
			}

			retMap = new HashMap<String, Object>();
			retMap.put("logLevelList", logLevelDtoList);
			retMap.put("logTypeList", logTypeDtoList);
			map.setData(retMap);
			map.setResult(CommonResult.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			map.setResult(CommonResult.ERROR, e.getMessage());
		}
		SysUtil.additionalResonseHeader(map, response);
		return Response.status(HttpCodeEnum.OK.getCode()).entity(retMap).build();
	}
}
