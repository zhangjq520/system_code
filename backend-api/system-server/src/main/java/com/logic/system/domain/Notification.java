package com.logic.system.domain;

import com.logic.common.domain.BasePojo;
import com.logic.common.util.SysUtil;
import java.lang.reflect.Field;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Author: omer 
 * Date  : 19-01-2016
 */
public class Notification extends BasePojo {
	
    private Integer userId;

    private String title;

    private String content;
    
    private String objectType;

    private Integer objectId;

    private Boolean isRead;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getObjectType() {
		return objectType;
	}

	public void setObjectType(String objectType) {
		this.objectType = objectType;
	}

	public Integer getObjectId() {
		return objectId;
	}

	public void setObjectId(Integer objectId) {
		this.objectId = objectId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Boolean getIsRead() {
		return isRead;
	}

	public void setIsRead(Boolean isRead) {
		this.isRead = isRead;
	}

	//检查指定的参数是否为null
    //只要一个为null 返回false
    public boolean isvalid(String... fieldNames){
        if(fieldNames.length == 0){
            return true;
        }
        Class c = this.getClass();
        for(String fieldName : fieldNames){
            try {
                Field f = c.getDeclaredField(fieldName);
                f.setAccessible(true);
                Object obj = f.get(this);
                if(obj == null){
                    return false;
                }
                if(obj instanceof  String){
                    String s = (String)obj;
                    if("".equals(s)){
                        return false;
                    }
                }
            } catch (Exception e) {
                //do nothing
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }

    public Map<String, String> buildNotification(String... fieldNames){
        Class c = this.getClass();
        Map<String, String> buildedNotification = new HashMap<String, String>();
        for(String filedName : fieldNames){
            try {
                Field f = c.getDeclaredField(filedName);
                Object value = f.get(this);
                if(value != null && value instanceof Integer){
                    buildedNotification.put(filedName, String.valueOf(value));
                }else if(value != null && value instanceof Date){
                    value = new Date();
                    buildedNotification.put(filedName,  SysUtil.convertDateToString((Date)value , "yyyy-MM-dd HH:mm:ss"));
                }else if(value != null && value instanceof String){
                    buildedNotification.put(filedName, (String)value);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return buildedNotification;
    }

//    public static void main(String[] args){
//        Notification notification = new Notification();
//        notification.setTitle("123");
//        notification.setContent("11");
//        notification.setSentDtm(new Date());
//
//        System.out.println(notification.buildNotification("title","content","sentDtm"));
//    }

}
