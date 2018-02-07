package com.logic.common.util;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "order by condition")
public class QueryOrderBy {

  public static String ASC = "ASC";
  public static String DESC = "DESC";

  @ApiModelProperty(value = "column name", required = true, position = 1)
  private String columnName;

  @ApiModelProperty(value = "order by. e.g: asc/desc", required = true, position = 2)
  private String orderType;

  public String getColumnName() {
    return columnName;
  }

  public void setColumnName(String columnName) {
    this.columnName = columnName;
  }

  public String getOrderType() {
    return orderType;
  }

  public void setOrderType(String orderType) {
    this.orderType = orderType;
  }

}
