package com.logic.system.ws;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.NotificationDTO;
import com.logic.system.domain.Notification;
import com.logic.system.service.impl.NotificationService;
import com.logic.system.ws.dto.NotificationConverter;
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
@Path("/announcement")
@Api(value = "announcement", description = "Announcement Rest WebServices")
public class NotificationRest {

    @Autowired
    private NotificationService notificationService;

    /**
     * GET  /:announcementId -> Get the "id" notification.
     */
    @GET
    @Path("/{announcementId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one announcement", position = 1)
    public Response getOneAnnouncement(@ApiParam(value = "Announcement Id", required = true) @PathParam("announcementId") Integer announcementId) {
        CommonResultMap map = new CommonResultMap();
        try {

            Notification notification = (Notification) notificationService.get(announcementId);
            if (notification != null) {
                NotificationDTO notificationDTO = NotificationConverter.fromNotificationToNotificationDTO(notification);
                map.setData(notificationDTO);
                map.setResult(CommonResult.SUCCESS);
            } else {
                map.setResult(CommonResult.ERROR, "Announcement Not Found!");
            }

        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * POST  / -> Create a new notification.
     */
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Create a new announcement from given announcement object", position = 2)
    public Response createAnnouncement(@ApiParam(value = "Announcement Object", required = true) NotificationDTO notificationDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            Notification notification = NotificationConverter.fromNotificationDTOToNotification(notificationDTO);
            notificationService.insert(notification);
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
     * PUT  /:announcementId -> Updates an existing notification.
     */
    @PUT
    @Path("/{announcementId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a an announcement", position = 4)
    public Response updateAnnouncement(@ApiParam(value = "Announcement id", required = true) @PathParam("announcementId") Integer announcementId,
                                       @ApiParam(value = "Announcement Object", required = true) NotificationDTO notificationDTO) {

        CommonResultMap map = new CommonResultMap();
        try {
            Notification notification = NotificationConverter.fromNotificationDTOToNotification(notificationDTO);
            notification.setId(announcementId);
            notificationService.update(notification);

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
     * DELETE  /:announcementIds -> Delete given notifications separated by comma.
     */
    @DELETE
    @Path("/{announcementIds}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Delete list of announcements separated by comma.", position = 5)
    public Response deleteAnnouncement(@ApiParam(value = "Announcement Ids", required = true) @PathParam("announcementIds") String announcementIds) {
        CommonResultMap map = new CommonResultMap();
        try {
            notificationService.delete(announcementIds);

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
     * POST  /list -> List of the notificaitons matching query criteria
     */
    @POST
    @Path("/list")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the list of the announcements matching query criteria", position = 3)
    public Response getAnnouncementList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<NotificationDTO> notificationDTOs = notificationService.queryNotifications(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(notificationDTOs);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @PUT
    @Path("/{announcementId}/publish")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a an announcement", position = 4)
    public Response publishAnnouncement(@ApiParam(value = "Announcement id", required = true) @PathParam("announcementId") Integer announcementId) {

        CommonResultMap map = new CommonResultMap();
        try {
            notificationService.publishNotification(announcementId);
            map.setResult(CommonResult.SUCCESS, "publish success");
        } catch (BusinessException e) {
           map.setResult(CommonResult.BUSINESS_EXCEPTION, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

}
