package com.logic.system.persistence.read;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.NotificationDTO;
import com.logic.system.domain.Notification;

import java.util.List;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public interface NotificationReadMapper {
    Notification selectByPrimaryKey(Integer id);

    List<NotificationDTO> selectNotifications(QueryUtil query);
}
