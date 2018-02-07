package com.logic.common.ws.dto.system;

import java.util.List;

public class SectionPreviewDTO {

  private Integer id;

  private String name;

  private Integer sequence;

  private List<ElementPreviewDTO> form_questions;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Integer getSequence() {
    return sequence;
  }

  public void setSequence(Integer sequence) {
    this.sequence = sequence;
  }

  public List<ElementPreviewDTO> getForm_questions() {
    return form_questions;
  }

  public void setForm_questions(List<ElementPreviewDTO> form_questions) {
    this.form_questions = form_questions;
  }

}
