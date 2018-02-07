package com.logic.system.ws;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.ICache;
import com.logic.common.util.SysCache;
import com.logic.common.util.SysUtil;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Path("/cache")
@Api(value = "cache", description = "cache Rest WebServices", position = 3)
public class CacheRest {
	
  @Context
  private HttpServletResponse response;
  @GET
  @Path("/list")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Initialize cache list data", position = 1)
  public Response initData() {
    CommonResultMap map = new CommonResultMap();
    Map<String, Object> resultMap = new HashMap<String, Object>();
    try {
      ICache cache = SysCache.getInstance();

      ConcurrentHashMap<String, Object> sessionCache = cache.getAllSessions();
      ConcurrentHashMap<String, List<Code>> codesCache = cache.getAllCachedChildCodess();
      ConcurrentHashMap<String, Object> generalCache = cache.getAllCachedItems();


      resultMap.put("sessionCache", sessionCache);
      resultMap.put("codesCache", codesCache);
      resultMap.put("generalCache", generalCache);
      map.setData(resultMap);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(resultMap).build();
  }

  @DELETE
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete cache data by cache type and cache key.", position = 2)
  public Response delete(@ApiParam(value = "param", required = true) @QueryParam("type") String type,
      @ApiParam(value = "param", required = true) @QueryParam("id") String ids) {
    CommonResultMap map = new CommonResultMap();
    try {
      ICache cache = SysCache.getInstance();
      String[] idArr = ids.split(",");
      for (int i = 0; i < idArr.length; i++) {
        if ("sessionCache".equals(type)) {
          cache.removeSession(idArr[i]);
        } else if ("codesCache".equals(type)) {
          cache.removeChildCodes(idArr[i]);
        }
      }
      map.setResult(CommonResult.SUCCESS, "Delete success");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

}
