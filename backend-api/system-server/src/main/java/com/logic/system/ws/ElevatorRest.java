package com.logic.system.ws;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.toshiba.PDMachineInfoDTO;
import com.logic.system.domain.PDMachineInfo;
import com.logic.system.service.impl.PDMachineInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

/**
 * Author: omer 
 * Date  : 11-12-2015
 */
@Component
@Path("/elevator")
@Api(value = "elevator", description = "Elevator Rest WebServices", position = 2)
public class ElevatorRest {

    @Autowired
    private PDMachineInfoService pdMachineInfoService;

    @GET
    @Path("/{elevatorId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one elevator by id.", position = 1)
    public Response getOneElevator(@ApiParam(value = "param", required = true) @PathParam("elevatorId") Integer elevatorId) {
        CommonResultMap map = new CommonResultMap();
        try {
            PDMachineInfo machineInfo = (PDMachineInfo)pdMachineInfoService.get(elevatorId);
            if (machineInfo != null) {
                map.setData(machineInfo);
                map.setResult(CommonResult.SUCCESS);
            }else{
                map.setResult(CommonResult.ERROR, "Not Found");
            }
        } catch (BusinessException e) {
            e.printStackTrace();
            map.setResult(e);
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
    @ApiOperation(value = "Gets the list of the elevators matching query criteria", position = 2)
    public Response getElevatorList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<PDMachineInfoDTO> machines = pdMachineInfoService.querytMachines(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(machines);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
}
