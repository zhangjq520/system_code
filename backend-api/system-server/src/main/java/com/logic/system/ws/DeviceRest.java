package com.logic.system.ws;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DeviceDTO;
import com.logic.common.ws.dto.system.DevicePositionDTO;
import com.logic.system.domain.Device;
import com.logic.system.domain.DevicePosition;
import com.logic.system.domain.User;
import com.logic.system.service.IUserService;
import com.logic.system.service.impl.DevicePositionService;
import com.logic.system.service.impl.DeviceService;
import com.logic.system.ws.dto.DeviceConverter;
import com.logic.system.ws.dto.DevicePositionConverter;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
@Path("/device")
@Api(value = "device", description = "Device Rest WebServices")
public class DeviceRest {

    @Autowired
    private DeviceService deviceService;

    @Autowired
    private DevicePositionService devicePositionService;

    /**
     * GET  /:deviceId -> Get the "id" device.
     */
    @GET
    @Path("/{deviceId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one device", position = 1)
    public Response getOneDevice(@ApiParam(value = "device Id", required = true) @PathParam("deviceId") Integer deviceId) {
        CommonResultMap map = new CommonResultMap();
        try {

            DeviceDTO deviceDTO = deviceService.getAsDTO(deviceId);
            if (deviceDTO != null) {
                map.setData(deviceDTO);
                map.setResult(CommonResult.SUCCESS);
            }else{
                map.setResult(CommonResult.ERROR, "Device Not Found!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * POST  / -> Create a new device.
     */
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Create a new device from given device object", position = 2)
    public Response createDevice(@ApiParam(value = "Device Object", required = true) DeviceDTO deviceDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            Device device = DeviceConverter.fromDeviceDTOToDevice(deviceDTO);
            device.setUserId(SecurityUtils.getCurrentLogin().getUserId());

            deviceService.insert(device);
            map.setResult(CommonResult.SUCCESS, "Create success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:deviceId -> Updates an existing device.
     */
    @PUT
    @Path("/{deviceId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a device", position = 4)
    public Response updateDevice(@ApiParam(value = "Device id", required = true) @PathParam("deviceId") Integer deviceId,
                                       @ApiParam(value = "Device Object", required = true) DeviceDTO deviceDTO) {

        CommonResultMap map = new CommonResultMap();
        try {
            Device device = DeviceConverter.fromDeviceDTOToDevice(deviceDTO);
            device.setId(deviceId);
            deviceService.update(device);

            map.setResult(CommonResult.SUCCESS, "Update success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:deviceId/unbind -> unbinds a device from the user.
     */
    @PUT
    @Path("/{deviceId}/unbind")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Unbind  a device", position = 4)
    public Response unbindDevice(@ApiParam(value = "Device id", required = true) @PathParam("deviceId") Integer deviceId) {

        CommonResultMap map = new CommonResultMap();
        try {
            deviceService.unbindDevice(deviceId);
            map.setResult(CommonResult.SUCCESS, "Update success");
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:serialId/bind -> bind a device to the user.
     */
    @PUT
    @Path("/{serialId}/bind")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Unbind  a device", position = 4)
    public Response bindDevice(@ApiParam(value = "Serial id", required = true) @PathParam("serialId") String serialId) {

        CommonResultMap map = new CommonResultMap();
        try {
            deviceService.bindDevice(serialId);
            map.setResult(CommonResult.SUCCESS, "Success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * DELETE  /:deviceIds -> Delete given devices separated by comma.
     */
    @DELETE
    @Path("/{deviceIds}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Delete list of devices separated by comma.", position = 5)
    public Response deleteDevice(@ApiParam(value = "Device Ids", required = true) @PathParam("deviceIds") String deviceIds) {
        CommonResultMap map = new CommonResultMap();
        try {
            deviceService.delete(deviceIds);

            map.setResult(CommonResult.SUCCESS, "Delete success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * POST  /list -> List of the devices matching query criteria
     */
    @POST
    @Path("/list")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the list of the devices matching query criteria", position = 3)
    public Response getDeviceList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<DeviceDTO> deviceDTOs = deviceService.queryDevices(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(deviceDTOs);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT   /:deviceId/location -> upload the batch of locations for given device
     */
    @PUT
    @Path("/{deviceId}/location")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a a device location", position = 5)
    public Response uploadDeviceLocation(@ApiParam(value = "Device id", required = true) @PathParam("deviceId") Integer deviceId,
                                 @ApiParam(value = "Device Position Object List", required = true) List<DevicePositionDTO> devicePositionDTOs) {
        CommonResultMap map = new CommonResultMap();
        try {
            List<DevicePosition> devicePositionList = DevicePositionConverter
                    .fromDevicePositionDTOListToDevicePositionList(devicePositionDTOs, deviceId);
            devicePositionService.insertBatch(devicePositionList);

            map.setResult(CommonResult.SUCCESS, "upload success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * POST  /location/list -> get the list of locations
     */
    @POST
    @Path("/location/list")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the list of the devices matching query criteria", position = 3)
    public Response getLocationList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<DevicePositionDTO> devicePositionDTOs = devicePositionService.queryDevicePositions(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(devicePositionDTOs);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    
    /**
     * POST  /location/list -> get the list of locations
     */
    @POST
    @Path("/location/current_location_list")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the current location list of the devices matching query criteria", position = 3)
    public Response getCurrentLocationList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<DevicePositionDTO> devicePositionDTOs = devicePositionService.queryDevicePositionsByTraceTime(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(devicePositionDTOs);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
}
