package com.logic.system.ws;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.OnlineHelpDTO;
import com.logic.system.domain.OnlineHelp;
import com.logic.system.service.IOnlineHelpService;
import com.logic.system.ws.dto.OnlineHelpConverter;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

/**
 * Created by albert on 16-3-7.
 */
@Path("/onlinehelp")
@Api(value = "onlinehelp", description = "Online Help Rest WebServices")
public class OnlineHelpRest {
    @Autowired
    private IOnlineHelpService onlineHelpService;

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one online help", position = 1)
    public Response getOneOnlineHelp(@ApiParam(value = "Online help Id", required = true) @PathParam("id") Integer id) {
        CommonResultMap map = new CommonResultMap();
        try {

            OnlineHelp onlineHelp = (OnlineHelp) onlineHelpService.get(id);
            if (onlineHelp != null) {
                OnlineHelpDTO onlineHelpDTO = OnlineHelpConverter.converterPojoToDto(onlineHelp);
                map.setData(onlineHelpDTO);
                map.setResult(CommonResult.SUCCESS);
            } else {
                map.setResult(CommonResult.ERROR, "Online Help Not Found!");
            }

        } catch (BusinessException e) {
            map.setResult(CommonResult.ERROR, "Unknow Error");
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @POST
    @Path("/list")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the list of the online help matching query criteria", position = 3)
    public Response getOnlineHelpList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();

            List<OnlineHelpDTO> onlineHelpDTOs = onlineHelpService.queryOnlineHelps(queryUtil);

            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(onlineHelpDTOs);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
}
