package com.logic.common.ws.dto.system;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Section question sequence DTO")
public class SectionQuestionSequenceDTO {

  @ApiModelProperty(value = "Section id", required = true, position = 1)
  private Integer section_id;

  @ApiModelProperty(value = "Question sequence", required = true, position = 2)
  private List<Integer> questions;

  public Integer getSection_id() {
    return section_id;
  }

  public void setSection_id(Integer section_id) {
    this.section_id = section_id;
  }

  public List<Integer> getQuestions() {
    return questions;
  }

  public void setQuestions(List<Integer> questions) {
    this.questions = questions;
  }
}
