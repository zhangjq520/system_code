package com.logic.common.util;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "query criteria")
public class QueryCriteria {

  public static final String AND = "AND";
  public static final String OR = "OR";
  public static final String EQUAL = "=";
  public static final String MORE_THAN = ">";
  public static final String LESS_THAN = "<";
  public static final String MORE_THAN_AND_EQUAL = ">=";
  public static final String LESS_THAN_AND_EQUAL = "<=";
  public static final String NOT_EQUAL = "!=";
  public static final String LIKE = "like";
  public static final String IN = "in";

  @ApiModelProperty(value = "e.g: and/or", required = true, position = 1)
  private String connection; // AND / OR

  @ApiModelProperty(value = "column name", required = true, position = 2)
  private String key; // Column Name

  @ApiModelProperty(value = "e.g: >=/<=/like/in", required = true, position = 3)
  private String condition; // =, >, <, >=, <=, !=, like

  @ApiModelProperty(value = "search value", required = true, position = 4)
  private String value;

  @ApiModelProperty(value = "the value whether is a digital", required = true, position = 5)
  private Boolean isValueADigital = false;

  public String getConnection() {
    return connection;
  }

  public void setConnection(String connection) {
    this.connection = connection;
  }

  public String getKey() {
    return key;
  }

  public void setKey(String key) {
    this.key = key;
  }

  public String getCondition() {
    return condition;
  }

  public void setCondition(String condition) {
    this.condition = condition;
  }

  public Boolean getIsValueADigital() {
    return isValueADigital;
  }

  public void setIsValueADigital(Boolean isValueADigital) {
    this.isValueADigital = isValueADigital;
  }

  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }

}
