package com.logic.system.service.impl;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.NotificationDTO;
import com.logic.system.domain.Address;
import com.logic.system.domain.Notification;
import com.logic.system.domain.User;
import com.logic.system.persistence.read.NotificationReadMapper;
import com.logic.system.persistence.read.UserReadMapper;
import com.logic.system.persistence.write.NotificationWriteMapper;
import com.logic.system.service.INotificationService;
import com.logic.system.service.utils.JPushHelper;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.*;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
@Service
public class NotificationService implements INotificationService{
    Logger log = LoggerFactory.getLogger(NotificationService.class);
    @Autowired
    private NotificationReadMapper notificationReadMapper;

    @Autowired
    private NotificationWriteMapper notificationWriteMapper;

    @Autowired
    private UserReadMapper userReadMapper;

    @Autowired
    private JPushHelper jPushHelper;

    @Override
    public int insert(Object obj) throws BusinessException {

        Notification notification = (Notification)obj;
        notification.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

//        Timestamp now = new Timestamp(new Date().getTime());
//        notification.setSentDtm(now);

        Boolean isValid = this.validateForInsert(notification);
        if (isValid) {
            return notificationWriteMapper.insertSelective(notification);
        }
        return 0;
    }

    @Override
    public Object get(Integer id) throws BusinessException {
        return notificationReadMapper.selectByPrimaryKey(id);
    }

    @Override
    public void update(Object obj) throws BusinessException {
        Notification notification = (Notification)obj;
        notification.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

        Boolean isValid = this.validateForUpdate(notification);
        if(isValid){
            notificationWriteMapper.updateByPrimaryKeySelective(notification);
        }
    }

    @Override
    public void delete(String ids) throws BusinessException {
        String[] idArr = ids.split(",");
        for (String id : idArr) {
            Notification notification = (Notification)get(Integer.valueOf(id));
            if (notification == null) {
                throw new BusinessException(ErrorMessageEnum.Notification_Empty_Object, Integer.valueOf(id));
            } else {
                notification.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
                notificationWriteMapper.deleteByPrimaryKey(notification);
            }
        }
    }

    @Override
    public List<Object> query(QueryUtil queryUtil) {
        return null;
    }

    @Override
    public Boolean validate(Object obj) throws BusinessException {
        Notification notification = (Notification) obj;
        if (notification == null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Empty_Object);
        }

/*        if (notification.getSendTo() != null && notification.getSendTo().length() > 254) {
            throw new BusinessException(ErrorMessageEnum.Notification_Invalid_Field, "sendTo");
        }*/

        if (notification.getTitle() != null && notification.getTitle().length() > 255) {
            throw new BusinessException(ErrorMessageEnum.Notification_Invalid_Field, "title");
        }

        if (notification.getContent() != null && notification.getContent().length() > 255) {
            throw new BusinessException(ErrorMessageEnum.Notification_Invalid_Field, "content");
        }

        return true;
    }

    @Override
    public Boolean validateForInsert(Object obj) throws BusinessException {
        Notification notification = (Notification) obj;
        if (notification == null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Empty_Object);
        }

        if (notification.getId() != null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Id_Not_Empty);
        }

/*        if (notification.getSendTo() == null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Invalid_Field, "sendTo");
        }
*/
        if (notification.getContent() == null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Invalid_Field, "content");
        }
/*
        if (notification.getStatus() == null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Invalid_Field, "status");
        }
*/
        return validate(obj);
    }

    @Override
    public Boolean validateForUpdate(Object obj) throws BusinessException {
        Notification notification = (Notification) obj;
        if (notification.getId() == null) {
            throw new BusinessException(ErrorMessageEnum.Notification_Id_Empty);
        }
        return validate(obj);
    }

    @Override
    public Boolean validateForDelete(Object obj) throws BusinessException {
        return null;
    }

    @Override
    public List<NotificationDTO> queryNotifications(QueryUtil query) {
        return notificationReadMapper.selectNotifications(query);
    }

    public void publishNotification(Integer announcementId)throws BusinessException {
        Notification notification = notificationReadMapper.selectByPrimaryKey(announcementId);
        if(notification == null){
            throw new BusinessException(ErrorMessageEnum.Notification_Empty_Object);
        }

 /*       notification.setSentDtm(new Date());

        boolean isOk = false;
        if(!StringUtils.isBlank(notification.getSendTo())){
//            isOk = jPushHelper.sendPush(notification);
        }else{
            String scope = notification.getNotiScope();
            log.info(" scope  = " + scope);
            String[] roleIds = scope.split(",");
            Set<String> allUser = new HashSet<String>();

            for(String id : roleIds){
                List<User> users = userReadMapper.selectAllUserByRoleId(Integer.valueOf(id));
                if(users != null && !users.isEmpty()){
                    for(User user : users){
                        allUser.add(String.valueOf(user.getId()));
                    }
                }
            }

//            isOk = jPushHelper.sendPush(notification, new ArrayList<String>(allUser));
        }

        if(isOk){
            notification.setSentDtm(new Date());
            notification.setSentResult("_BJ2");
            notification.setStatus("_BI2");
        }else{
            notification.setSentDtm(new Date());
            notification.setSentResult("_BJ3");
            notification.setStatus("_BI2");
        }*/
        notificationWriteMapper.updateByPrimaryKeySelective(notification);
    }
}
