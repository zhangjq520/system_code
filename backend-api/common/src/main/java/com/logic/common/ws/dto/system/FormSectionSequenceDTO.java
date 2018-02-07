package com.logic.common.ws.dto.system;


import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Form section sequence DTO")
public class FormSectionSequenceDTO {

  @ApiModelProperty(value = "Form id", hidden = true, position = 1)
  private String form_id;

  @ApiModelProperty(value = "Section sequence", required = true, position = 2)
  private List<Integer> sections;

  public String getForm_id() {
    return form_id;
  }

  public void setForm_id(String form_id) {
    this.form_id = form_id;
  }

  public List<Integer> getSections() {
    return sections;
  }

  public void setSections(List<Integer> sections) {
    this.sections = sections;
  }

}
