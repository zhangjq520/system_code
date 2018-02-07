package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.NotificationDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public interface INotificationService extends ICRUDService {

    List<NotificationDTO> queryNotifications(QueryUtil query);

}
