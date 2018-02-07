package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class Log extends BasePojo {

  private static final long serialVersionUID = -5540768567422226736L;

  private Integer org_id;
  private String ip;

  private String levels;

  private String classInfo;

  private String type;

  private String message;
  
  private Integer other_1;
  
  private Integer other_2;
  
  private Integer other_3;

  
  public Integer getOrg_id() {
	return org_id;
}

public void setOrg_id(Integer org_id) {
	this.org_id = org_id;
}

public String getIp() {
    return ip;
  }

  public void setIp(String ip) {
    this.ip = ip == null ? null : ip.trim();
  }

  public String getClassInfo() {
    return classInfo;
  }

  public void setClassInfo(String classInfo) {
    this.classInfo = classInfo == null ? null : classInfo.trim();
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type == null ? null : type.trim();
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message == null ? null : message.trim();
  }

public String getLevels() {
	return levels;
}

public void setLevels(String levels) {
	this.levels = levels;
}

public Integer getOther_1() {
	return other_1;
}

public void setOther_1(Integer other1_id) {
	this.other_1 = other1_id;
}

public Integer getOther_2() {
	return other_2;
}

public void setOther_2(Integer other2_id) {
	this.other_2 = other2_id;
}

public Integer getOther_3() {
	return other_3;
}

public void setOther_3(Integer other3_id) {
	this.other_3 = other3_id;
}


}
