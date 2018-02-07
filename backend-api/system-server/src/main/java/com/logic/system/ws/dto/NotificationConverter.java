package com.logic.system.ws.dto;

import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.NotificationDTO;
import com.logic.system.domain.Notification;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public class NotificationConverter {

    public static NotificationDTO fromNotificationToNotificationDTO(Notification notification){
        NotificationDTO notificationDTO = new NotificationDTO();

        notificationDTO.setId(notification.getId());
        notificationDTO.setUserId(notification.getUserId());
        notificationDTO.setIsRead(notification.getIsRead());
        notificationDTO.setObjectType(notification.getObjectType());
        notificationDTO.setObjectId(notification.getObjectId());
        notificationDTO.setContent(notification.getContent());
        notificationDTO.setTitle(notification.getTitle());
        notificationDTO.setCreated_by_id(notification.getCreatedBy());
        notificationDTO.setUpdate_date(notification.getLastModifiedDtm());
        notificationDTO.setCreated_dtm(notification.getCreatedDtm() == null ? null : SysUtil.convertDateToString(notification.getCreatedDtm(), "yyyy-MM-dd HH:mm:ss"));

        return notificationDTO;
    }

    public static Notification fromNotificationDTOToNotification(NotificationDTO notificationDTO){
        Notification notification = new Notification();

        notification.setId(notificationDTO.getId());
        notification.setUserId(notificationDTO.getUserId());
        notification.setIsRead(notificationDTO.getIsRead());
        notification.setObjectType(notificationDTO.getObjectType());
        notification.setObjectId(notificationDTO.getObjectId());
        notification.setContent(notificationDTO.getContent());
        notification.setTitle(notificationDTO.getTitle());

        return notification;
    }
}
