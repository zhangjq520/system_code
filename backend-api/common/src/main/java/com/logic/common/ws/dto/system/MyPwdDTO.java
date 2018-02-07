package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModelProperty;

public class MyPwdDTO {

  @ApiModelProperty(value = "Old password", position = 1)
  private String oldPwd;
  
  @ApiModelProperty(value = "New password", position = 2)
  private String newPwd;
  
  public String getOldPwd() {
    return oldPwd;
  }
  
  public void setOldPwd(String oldPwd) {
    this.oldPwd = oldPwd;
  }
  
  public String getNewPwd() {
    return newPwd;
  }
  
  public void setNewPwd(String newPwd) {
    this.newPwd = newPwd;
  }
}
