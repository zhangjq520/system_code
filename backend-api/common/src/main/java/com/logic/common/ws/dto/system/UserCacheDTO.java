package com.logic.common.ws.dto.system;

public class UserCacheDTO {

  private Integer userId;
  private String defaultLocale;
  private long expirationTime;
  private String userName;
  private String orgId;

  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }

  public String getDefaultLocale() {
    return defaultLocale;
  }

  public void setDefaultLocale(String defaultLocale) {
    this.defaultLocale = defaultLocale;
  }

  public long getExpirationTime() {
    return expirationTime;
  }

  public void setExpirationTime(long expirationTime) {
    this.expirationTime = expirationTime;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public String getOrgId() {
    return orgId;
  }

  public void setOrgId(String orgId) {
    this.orgId = orgId;
  }

  @Override
  public String toString() {
    return "UserInfo [userId=" + userId + ", defaultLocale=" + defaultLocale + ", expirationTime=" + expirationTime
        + "]";
  }
}
