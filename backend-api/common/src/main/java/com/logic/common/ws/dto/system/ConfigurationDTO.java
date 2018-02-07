package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Configuration DTO")
public class ConfigurationDTO {

  @ApiModelProperty(value = "Configuration key", allowableValues = "unique", required = true, position = 1)
  private String key_name;

  @ApiModelProperty(value = "Configuration value", position = 2)
  private String value;

  @ApiModelProperty(value = "Configuration description", position = 3)
  private String description;

  public String getKey_name() {
    return key_name;
  }

  public void setKey_name(String key_name) {
    this.key_name = key_name;
  }

  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

//  public static ConfigurationDTO convertFromConfigToDto(Configuration config) {
//    ConfigurationDTO configDto = new ConfigurationDTO();
//    configDto.setKey_name(config.getKeyName());
//    configDto.setValue(config.getValue());
//    configDto.setDescription(config.getDescription());
//    return configDto;
//
//  }
//
//  public Configuration convertFromDtoToConfig() {
//    Configuration config = new Configuration();
//    config.setKeyName(this.getKey_name());
//    config.setValue(this.getValue());
//    config.setDescription(this.getDescription());
//    return config;
//  }
}
