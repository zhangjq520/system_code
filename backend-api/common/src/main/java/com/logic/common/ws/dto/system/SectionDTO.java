package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Section DTO")
public class SectionDTO {

  @ApiModelProperty(value = "Section ID, don't need when add a section", position = 1)
  private String id;

  @ApiModelProperty(value = "Section Name", required = true, position = 2)
  private String name;
 
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
 
//  public FormSection convertFromDtoToSection() throws BusinessException {
//    FormSection section = new FormSection();
//    section.setId(SysUtil.getValidDtoInteger(this.getId(), "SectionDTO id"));
//    section.setName(this.getName());
//    return section;
//  }
//
//  public static SectionDTO convertFromSectionToDto(FormSection section) {
//    SectionDTO dto = new SectionDTO();
//    dto.setId(section.getId() == null ? null : section.getId().toString());
//    dto.setName(section.getName());
//    return dto;
//  }
}
