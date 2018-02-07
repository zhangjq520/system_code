package com.logic.common.ws.dto.configuration;

public class UserEmployeeDTO {

  private Integer employee_id;

  private String employee_code;

  private String login_id;

  private String employee_name;

  private String phone;

  private String email;

  public Integer getEmployee_id() {
    return employee_id;

  }

  public void setEmployee_id(Integer employee_id) {
    this.employee_id = employee_id;
  }

  public String getEmployee_code() {
    return employee_code;
  }

  public void setEmployee_code(String employee_code) {
    this.employee_code = employee_code;
  }

  public String getLogin_id() {
    return login_id;
  }

  public void setLogin_id(String login_id) {
    this.login_id = login_id;
  }

  public String getEmployee_name() {
    return employee_name;
  }

  public void setEmployee_name(String employee_name) {
    this.employee_name = employee_name;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

}
