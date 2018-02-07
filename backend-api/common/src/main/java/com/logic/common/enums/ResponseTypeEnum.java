package com.logic.common.enums;

public enum ResponseTypeEnum {
  ShortText("_AK1"), LongText("_AK2"), Numberic("_AK3"), Logical("_AK7"), SingleSelectionDropdown("_AK8"), MultipleSelectionDropdown(
          "_AK9"), Toshiba("_AKF"), Other("");

  private String code;

  private ResponseTypeEnum(String code) {
    this.code = code;
  }

  public static ResponseTypeEnum toType(String code) {
    for (ResponseTypeEnum r : ResponseTypeEnum.values()) {
      if (r.getCode().equals(code)) {
        return r;
      }
    }
    return Other;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
