package com.logic.system.domain;

public class Configuration {

  private String keyName;

  private String value;

  private String description;

  public String getKeyName() {
    return keyName;
  }

  public void setKeyName(String keyName) {
    this.keyName = keyName == null ? null : keyName.trim();
  }

  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value == null ? null : value.trim();
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description == null ? null : description.trim();
  }
}
