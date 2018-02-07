package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Created by ronnieking on 5/28/15.
 */
@ApiModel(description = "Role DTO")
public class RoleDTO {

  @ApiModelProperty(value = "Role ID, don't need when add a role", position = 1)
  private String id;
  @ApiModelProperty(value = "Role Code, unique", allowableValues = "maxlength:100", position = 2)
  private String code;
  @ApiModelProperty(value = "Role Name", allowableValues = "maxlength:100", position = 3)
  private String name;
  @ApiModelProperty(value = "Role Level", allowableValues = "0, 1, 2, 3, 4, 5, 6, 7, 8, 9", position = 4)
  private String level;
  @ApiModelProperty(value = "Whether system role", position = 5)
  private String systemic;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
  }

  public String getSystemic() {
    return systemic;
  }

  public void setSystemic(String systemic) {
    this.systemic = systemic;
  }
}
