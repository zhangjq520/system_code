package com.logic.common.ws.dto.qcs.inspection;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Form response detail DTO")
public class FormResponseDetailDTO {

  @ApiModelProperty(value = "form response detail id , don't need when add", required = false, position = 1)
  private String id;

  @ApiModelProperty(value = "form response detail form element id", position = 2)
  private String form_element_id;

  @ApiModelProperty(value = "form response detail response", position = 3)
  private String response;

  @ApiModelProperty(value = "form response detail severity", position = 4)
  private String severity;

  @ApiModelProperty(value = "form response detail scene pictures", position = 5)
  private String scene_pictures;

  @ApiModelProperty(value = "form response detail immediate action", position = 6)
  private String immediate_action;

  @ApiModelProperty(value = "deviation id", position = 7)
  private Integer deviation_id;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getForm_element_id() {
    return form_element_id;
  }

  public void setForm_element_id(String form_element_id) {
    this.form_element_id = form_element_id;
  }

  public String getResponse() {
    return response;
  }

  public void setResponse(String response) {
    this.response = response;
  }

  public String getSeverity() {
    return severity;
  }

  public void setSeverity(String severity) {
    this.severity = severity;
  }

  public String getScene_pictures() {
    return scene_pictures;
  }

  public void setScene_pictures(String scene_pictures) {
    this.scene_pictures = scene_pictures;
  }

  public String getImmediate_action() {
    return immediate_action;
  }

  public void setImmediate_action(String immediate_action) {
    this.immediate_action = immediate_action;
  }

  public Integer getDeviation_id() {
    return deviation_id;
  }

  public void setDeviation_id(Integer deviation_id) {
    this.deviation_id = deviation_id;
  }

  @Override
  public String toString() {
    return "FormResponseDetailDTO [id=" + id + ", form_element_id=" + form_element_id + ", response=" + response
        + ", severity=" + severity + ", scene_pictures=" + scene_pictures + ", immediate_action=" + immediate_action
        + "]";
  }


}
