package com.logic.common.ws.dto.system;


import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Form question sequence DTO")
public class FormQuestionSequenceDTO {

  @ApiModelProperty(value = "Form id", hidden = true, position = 1)
  private String form_id;

  @ApiModelProperty(value = "Section question sequence", required = true, position = 2)
  private List<SectionQuestionSequenceDTO> sections;

  @ApiModelProperty(value = "Question sequence", required = true, position = 3)
  private List<Integer> questions;
  
  public String getForm_id() {
    return form_id;
  }

  public void setForm_id(String form_id) {
    this.form_id = form_id;
  }

  public List<SectionQuestionSequenceDTO> getSections() {
    return sections;
  }

  public void setSections(List<SectionQuestionSequenceDTO> sections) {
    this.sections = sections;
  }

  public List<Integer> getQuestions() {
	return questions;
  }

  public void setQuestions(List<Integer> questions) {
	this.questions = questions;
  }
}
