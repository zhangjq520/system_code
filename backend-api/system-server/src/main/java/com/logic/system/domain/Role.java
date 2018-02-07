package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class Role extends BasePojo {

  private static final long serialVersionUID = 6445286669386751140L;

  private String code;

  private String name;

  private Integer levels;

  private Boolean systemic;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code == null ? null : code.trim();
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name == null ? null : name.trim();
  }

  public Integer getLevel() {
    return levels;
  }

  public void setLevel(Integer level) {
    this.levels = level;
  }

  public Boolean getSystemic() {
    return systemic;
  }

  public void setSystemic(Boolean systemic) {
    this.systemic = systemic;
  }

}
