package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Task Result DTO")
public class TaskResultDTO {

  @ApiModelProperty(value = "Task resolution", required = true, position = 1)
  private String resolution;

  @ApiModelProperty(value = "Task comments", position = 2)
  private String comments;

  public String getResolution() {
    return resolution;
  }

  public void setResolution(String resolution) {
    this.resolution = resolution;
  }

  public String getComments() {
    return comments;
  }

  public void setComments(String comments) {
    this.comments = comments;
  }

//  public TaskReference convertFromDtoToPojo() {
//    TaskReference reference = new TaskReference();
//    reference.setResolution(this.getResolution());
//    reference.setComments(this.getComments());
//    return reference;
//  }
}
