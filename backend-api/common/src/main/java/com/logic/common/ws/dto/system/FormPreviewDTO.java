package com.logic.common.ws.dto.system;

import java.util.List;

public class FormPreviewDTO {

  private String form_id;

  private String form_name;
  
  private String form_style;
  
  // inclue FormElements and pass sections;
  private List<ElementPreviewDTO> elements;

  private List<SectionPreviewDTO> sections;

  public String getForm_id() {
    return form_id;
  }

  public void setForm_id(String form_id) {
    this.form_id = form_id;
  }

  public String getForm_name() {
    return form_name;
  }

  public void setForm_name(String form_name) {
    this.form_name = form_name;
  }

  public List<SectionPreviewDTO> getSections() {
    return sections;
  }

  public void setSections(List<SectionPreviewDTO> sections) {
    this.sections = sections;
  }

  public List<ElementPreviewDTO> getElements() {
	return elements;
  }

  public void setElements(List<ElementPreviewDTO> elements) {
	this.elements = elements;
  }

  public String getForm_style() {
	return form_style;
  }

  public void setForm_style(String form_style) {
	this.form_style = form_style;
  }

}
