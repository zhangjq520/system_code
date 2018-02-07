package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class MyProfile extends BasePojo {

  private static final long serialVersionUID = -183210993491837970L;

  private String workPhone;

  private String email;

  public String getWorkPhone() {
    return workPhone;
  }

  public void setWorkPhone(String workPhone) {
    this.workPhone = workPhone == null ? null : workPhone.trim();
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email == null ? null : email.trim();
  }

}
