package com.logic.common.util;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "paging tool")
public class PagingTool {

  @ApiModelProperty(required = true, position = 1)
  private Integer currentPage; // Current page number.
  @ApiModelProperty(required = true, position = 2)
  private Integer pageSize; // One page records numbers
  @ApiModelProperty(hidden = true)
  private Integer start; // Start index
  @ApiModelProperty(hidden = true)
  private Integer totalNum; // Total record numbers

  public void calculateStartIndex() {
    if (this.currentPage == null) {
      this.start = 0;
      this.currentPage = 1;
    } else if (this.currentPage < 1) {
      this.start = 0;
      this.currentPage = 1;
    } else {
      this.start = (this.currentPage - 1) * this.pageSize;
    }
  }

  public Integer getCurrentPage() {
    return currentPage;
  }

  public void setCurrentPage(Integer currentPage) {
    this.currentPage = currentPage;
  }

  public Integer getPageSize() {
    return pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }

  public Integer getStart() {
    return start;
  }

  public void setStart(Integer start) {
    this.start = start;
  }

  public Integer getTotalNum() {
    return totalNum;
  }

  public void setTotalNum(Integer totalNum) {
    this.totalNum = totalNum;
  }

}
