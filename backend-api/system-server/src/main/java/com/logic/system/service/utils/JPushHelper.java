package com.logic.system.service.utils;

import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

/**
 * Created by albert on 16-1-26.
 */
@Component
@Configuration
public class JPushHelper implements EnvironmentAware {
//    private static final Logger logger = LoggerFactory.getLogger(JPushHelper.class);
//
//    public static final String MASTERSECRET = "masterSecret";
//    private static final String APPKEY = "appKey";
//    private static JPushClient jPushClient;
//
//    private static final String ENV_JPUSH = "logic.jpush.";
//    public static RelaxedPropertyResolver propertyResolver;
//
//    private static String mastersecret;
//    private static String appkey;
//    
//    public JPushHelper() {}
//
//    @PostConstruct
//    public void init(){
//        mastersecret = propertyResolver.getProperty(MASTERSECRET, String.class);
//        appkey = propertyResolver.getProperty(APPKEY, String.class); 
//        jPushClient = new JPushClient(mastersecret, appkey);
//    }
//
//    //to do , add a extra map
//    public boolean sendPush(List<Integer> userList, com.logic.system.domain.Notification notification, LogService logService) throws BusinessException {
//    	
//    	boolean retValue = false;
//
//        logService.info(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), "MASTERSECRET: " + mastersecret + "; APPKEY: " + appkey, "JPush");
//
//        if (userList == null || userList.size() == 0) {
//            throw new BusinessException(ErrorMessageEnum.JPUSH_USERLIST_IS_EMPTY);
//        }
//
//        if (!validateNotification(notification)) {
//            throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_IS_INVALID);
//        }
//
//        try {
//        	retValue = _sendPush(buildPushPayload(userList, notification),logService);
//        	
//        } catch (Exception e) {        	
//        	logService.error(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), e.getMessage(), "JPush");
//
//            throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_SEND_FAILED);
//        }
//
//        return retValue;
//    }
//
//    private PushPayload buildPushPayload(List<Integer> userList, com.logic.system.domain.Notification notification) {
//        for (Integer userId : userList) {
//            logger.info("Sending JPush to user = " + userId);
//        }
//        Message message = Message.newBuilder().setTitle(notification.getTitle())
//                .setMsgContent(notification.getContent())
//                .addExtra("title", notification.getTitle())
//                .addExtra("task_id", notification.getContent())
//                .addExtra("sentDtm", SysUtil.convertDateToString(notification.getSentDtm(), "yyyy-MM-dd HH:mm:ss"))
//                .build();
//
//        Map<String, String> extra = new HashMap<String, String>();
//        extra.put("task_id", notification.getContent());
//        extra.put("sentDtm", SysUtil.convertDateToString(notification.getSentDtm(), "yyyy-MM-dd HH:mm:ss"));
//
//        cn.jpush.api.push.model.notification.Notification notification1l =
//                cn.jpush.api.push.model.notification.Notification.android(notification.getTitle(), notification.getTitle(), extra);
//
//        PushPayload payload = PushPayload.newBuilder()
//                .setPlatform(Platform.android())
//                .setAudience(Audience.alias(aliasUserList(userList)))
//                .setNotification(notification1l)
//                .setMessage(message)
//                .build();
//
//        return payload;
//    }
//
//
//
//    public boolean sendPush(Notification notification) throws BusinessException {
//        //validate Notification
//        _validateNotification(notification);
//        //buildPushpayload
//        PushPayload payload = buildPushPayload(notification);
//        //send the push
//        return _sendPush(payload, null);
//    }
//
//    public boolean sendPush(Notification notification, List<String> userList) throws BusinessException {
//        if(userList == null || userList.isEmpty()){
//            throw new BusinessException(ErrorMessageEnum.JPUSH_USERLIST_IS_EMPTY);
//        }
//        //validate Notification
//        __validateNotification(notification);
//        //buildPushpayload
//        PushPayload payload = buildPushPayload(notification, userList);
//        //send the push
//        return _sendPush(payload, null);
//
//    }
//
//    public boolean _sendPush(PushPayload payload,LogService logService) throws BusinessException{
//    	boolean retValue = false;
//    	
//    	
//    	
//        PushResult pushResult = null;
//
//        try {
//            pushResult = jPushClient.sendPush(payload);
//            
//            if (pushResult != null) {
//            	logService.info(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), "The PushResult is: " + pushResult.isResultOK(), "JPush");
//            	logService.info(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), "The PushResult contents are: " + pushResult.toString(), "JPush");
//            	
//				if (pushResult.isResultOK()) {
//					retValue = true;
//				}
//			}
//            
//            if (pushResult != null && pushResult.isResultOK()) {
//            	logService.info(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), "The payload: " + payload.toString() + " has been sent successfully!", "JPush");
//            	retValue = true;
//            }
//            
//        } catch (APIConnectionException e) {
//            if(logService != null){
//            	StringBuffer err = new StringBuffer();
//                err.append("[Connect to jpush server time out]: ").append(e.getMessage());
//                logService.error(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), err.toString(), "JPush", e);
//            }
//
//        } catch (APIRequestException e) {
//            if(logService != null) {
//            	StringBuffer err = new StringBuffer();
//            	err.append("ErrorCode: ").append(e.getErrorCode()).append("; ErrorMsg: ").append(e.getErrorMessage());
//                logService.error(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), err.toString(), "JPush", e);
//            }
//            if (e.getErrorCode() == 1011) {
//                throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_USER_NOT_REGISTER);
//            }
//            if (e.getErrorCode() == 1005) {
//                throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_CONTENT_TOO_LONG);
//            }
//
//            throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_SEND_FAILED);
//            
//        } catch (Exception e) {
//        	logService.error(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), e.getMessage(), "JPush");
//        	
//        } finally {
//        	logService.info(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), "Completed the JPush sent for: " + payload.toString(), "JPush");
//        	logService.info(this.getClass(), "", SecurityUtils.getCurrentLogin().getUserId(), "The PushResult are: " + (pushResult != null ? pushResult.toString() : " "), "JPush");
//		}
//
//        
//
//        return retValue;
//    }
//
//    private PushPayload buildPushPayload(Notification notification) {
//        cn.jpush.api.push.model.notification.Notification notification1l =
//                cn.jpush.api.push.model.notification.Notification.android(notification.getTitle(), notification.getTitle(),
//                        notification.buildNotification("title", "content", "notiType", "sentDtm"));
//
//        PushPayload payload = PushPayload.newBuilder()
//                .setPlatform(Platform.android())
//                .setAudience(Audience.alias(Arrays.asList(notification.getSendTo().split(","))))
//                .setNotification(notification1l)
//                .build();
//
//        return payload;
//    }
//
//    private PushPayload buildPushPayload(Notification notification,List<String> userList) {
//        cn.jpush.api.push.model.notification.Notification notification1l =
//                cn.jpush.api.push.model.notification.Notification.android(notification.getTitle(), notification.getTitle(),
//                        notification.buildNotification("title", "content", "notiType", "sentDtm"));
//
//        PushPayload payload = PushPayload.newBuilder()
//                .setPlatform(Platform.android())
//                .setAudience(Audience.alias(userList))
//                .setNotification(notification1l)
//                .build();
//
//        return payload;
//    }
//
//    private void __validateNotification(Notification notification) throws BusinessException {
//
//        if (notification == null || !notification.isvalid("title", "content", "notiType", "sentDtm")) {
//            throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_IS_INVALID);
//        }
//
//    }
//
//    private void _validateNotification(Notification notification) throws BusinessException {
//
//        if (notification == null || !notification.isvalid("sendTo", "title", "content", "notiType", "sentDtm")) {
//            throw new BusinessException(ErrorMessageEnum.JPUSH_NOTIFICATION_IS_INVALID);
//        }
//
//    }
//
//    private boolean validateNotification(Notification notification) {
//        //check title , content , sentDtm
//        String title = notification.getTitle();
//        String content = notification.getContent();
//        Date sendDtm = notification.getSentDtm();
//
//        if (title == null || "".equals(title)) {
//            return false;
//        }
//
//        if (content == null || "".equals(content)) {
//            return false;
//        }
//
//        if (sendDtm == null) {
//            return false;
//        }
//
//        return true;
//    }
//
//    private List<String> aliasUserList(List<Integer> userList) {
//        List<String> aliasUserList = new ArrayList<String>();
//        for (Integer user : userList) {
//            aliasUserList.add(String.valueOf(user));
//        }
//        return aliasUserList;
//    }

    @Override
    public void setEnvironment(Environment environment) {
//        logger.info("----------------------------- JPushHelper Config ---------------------------- ");
//        propertyResolver = new RelaxedPropertyResolver(environment, ENV_JPUSH);
    }
}