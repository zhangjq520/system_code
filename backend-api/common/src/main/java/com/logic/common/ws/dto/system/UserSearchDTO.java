package com.logic.common.ws.dto.system;

public class UserSearchDTO {

  private Integer id;

  private String login_id;

  private String user_name;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getLogin_id() {
    return login_id;
  }

  public void setLogin_id(String login_id) {
    this.login_id = login_id;
  }

  public String getUser_name() {
    return user_name;
  }

  public void setUser_name(String user_name) {
    this.user_name = user_name;
  }

}
