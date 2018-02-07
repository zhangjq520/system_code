package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Question dropdown DTO")
public class DropdownOptionsDTO {

  @ApiModelProperty(value = "Dropdown name", position = 1)
  private String name;

  @ApiModelProperty(value = "acceptable answer", position = 2)
  private String acceptable;

  @ApiModelProperty(value = "Sequence", position = 3)
  private String sequence;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getAcceptable() {
    return acceptable;
  }

  public void setAcceptable(String acceptable) {
    this.acceptable = acceptable;
  }

  public String getSequence() {
    return sequence;
  }

  public void setSequence(String sequence) {
    this.sequence = sequence;
  }

}
