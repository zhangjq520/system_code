package com.logic.common.ws.dto.system;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Model function dto")
public class ModuleFunctionDTO {

  @ApiModelProperty(value = "Module function ID, don't need when add a module function", position = 1)
  private Integer id;

  @ApiModelProperty(value = "Module ID, don't need when add a module function", position = 2)
  private Integer module_id;

  @ApiModelProperty(value = "Module function new enabled", position = 3)
  private Boolean function_new_enabled;

  @ApiModelProperty(value = "Module function new english label", position = 4)
  private String function_new_label_en;

  @ApiModelProperty(value = "Module function new chinese label", position = 5)
  private String function_new_label_zh;

  @ApiModelProperty(value = "Module function update enabled", position = 6)
  private Boolean function_update_enabled;

  @ApiModelProperty(value = "Module function update english label", position = 7)
  private String function_update_label_en;

  @ApiModelProperty(value = "Module function update chinese label", position = 8)
  private String function_update_label_zh;

  @ApiModelProperty(value = "Module function delete enabled", position = 9)
  private Boolean function_delete_enabled;

  @ApiModelProperty(value = "Module function delete english label", position = 10)
  private String function_delete_label_en;

  @ApiModelProperty(value = "Module function delete chinese label", position = 11)
  private String function_delete_label_zh;

  @ApiModelProperty(value = "Module function query enabled", position = 12)
  private Boolean function_query_enabled;

  @ApiModelProperty(value = "Module function query english label", position = 13)
  private String function_query_label_en;

  @ApiModelProperty(value = "Module function query chinese label", position = 14)
  private String function_query_label_zh;

  @ApiModelProperty(position = 15)
  private Boolean function_other1_enabled;

  @ApiModelProperty(position = 16)
  private String function_other1_label_en;

  @ApiModelProperty(position = 17)
  private String function_other1_label_zh;

  @ApiModelProperty(position = 18)
  private Boolean function_other2_enabled;

  @ApiModelProperty(position = 19)
  private String function_other2_label_en;

  @ApiModelProperty(position = 20)
  private String function_other2_label_zh;

  @ApiModelProperty(position = 21)
  private Boolean function_other3_enabled;

  @ApiModelProperty(position = 22)
  private String function_other3_label_en;

  @ApiModelProperty(position = 23)
  private String function_other3_label_zh;

  @ApiModelProperty(position = 24)
  private Boolean function_other4_enabled;

  @ApiModelProperty(position = 25)
  private String function_other4_label_en;

  @ApiModelProperty(position = 26)
  private String function_other4_label_zh;

  @ApiModelProperty(position = 27)
  private Boolean function_other5_enabled;

  @ApiModelProperty(position = 28)
  private String function_other5_label_en;

  @ApiModelProperty(position = 29)
  private String function_other5_label_zh;

  @ApiModelProperty(position = 30)
  private Boolean function_other6_enabled;

  @ApiModelProperty(position = 31)
  private String function_other6_label_en;

  @ApiModelProperty(position = 32)
  private String function_other6_label_zh;

  @ApiModelProperty(position = 33)
  private Boolean function_other7_enabled;

  @ApiModelProperty(position = 34)
  private String function_other7_label_en;

  @ApiModelProperty(position = 35)
  private String function_other7_label_zh;

  @ApiModelProperty(position = 36)
  private Boolean function_other8_enabled;

  @ApiModelProperty(position = 37)
  private String function_other8_label_en;

  @ApiModelProperty(position = 38)
  private String function_other8_label_zh;

  @ApiModelProperty(position = 39)
  private Boolean function_other9_enabled;

  @ApiModelProperty(position = 40)
  private String function_other9_label_en;

  @ApiModelProperty(position = 41)
  private String function_other9_label_zh;

  @ApiModelProperty(position = 42)
  private Boolean function_other10_enabled;

  @ApiModelProperty(position = 43)
  private String function_other10_label_en;

  @ApiModelProperty(position = 44)
  private String function_other10_label_zh;

  @ApiModelProperty(position = 45)
  private Boolean function_other11_enabled;

  @ApiModelProperty(position = 46)
  private String function_other11_label_en;

  @ApiModelProperty(position = 47)
  private String function_other11_label_zh;

  @ApiModelProperty(position = 48)
  private Boolean function_other12_enabled;

  @ApiModelProperty(position = 49)
  private String function_other12_label_en;

  @ApiModelProperty(position = 50)
  private String function_other12_label_zh;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Integer getModule_id() {
    return module_id;
  }

  public void setModule_id(Integer module_id) {
    this.module_id = module_id;
  }

  public Boolean getFunction_new_enabled() {
    return function_new_enabled;
  }

  public void setFunction_new_enabled(Boolean function_new_enabled) {
    this.function_new_enabled = function_new_enabled;
  }

  public String getFunction_new_label_en() {
    return function_new_label_en;
  }

  public void setFunction_new_label_en(String function_new_label_en) {
    this.function_new_label_en = function_new_label_en;
  }

  public String getFunction_new_label_zh() {
    return function_new_label_zh;
  }

  public void setFunction_new_label_zh(String function_new_label_zh) {
    this.function_new_label_zh = function_new_label_zh;
  }

  public Boolean getFunction_update_enabled() {
    return function_update_enabled;
  }

  public void setFunction_update_enabled(Boolean function_update_enabled) {
    this.function_update_enabled = function_update_enabled;
  }

  public String getFunction_update_label_en() {
    return function_update_label_en;
  }

  public void setFunction_update_label_en(String function_update_label_en) {
    this.function_update_label_en = function_update_label_en;
  }

  public String getFunction_update_label_zh() {
    return function_update_label_zh;
  }

  public void setFunction_update_label_zh(String function_update_label_zh) {
    this.function_update_label_zh = function_update_label_zh;
  }

  public Boolean getFunction_delete_enabled() {
    return function_delete_enabled;
  }

  public void setFunction_delete_enabled(Boolean function_delete_enabled) {
    this.function_delete_enabled = function_delete_enabled;
  }

  public String getFunction_delete_label_en() {
    return function_delete_label_en;
  }

  public void setFunction_delete_label_en(String function_delete_label_en) {
    this.function_delete_label_en = function_delete_label_en;
  }

  public String getFunction_delete_label_zh() {
    return function_delete_label_zh;
  }

  public void setFunction_delete_label_zh(String function_delete_label_zh) {
    this.function_delete_label_zh = function_delete_label_zh;
  }

  public Boolean getFunction_query_enabled() {
    return function_query_enabled;
  }

  public void setFunction_query_enabled(Boolean function_query_enabled) {
    this.function_query_enabled = function_query_enabled;
  }

  public String getFunction_query_label_en() {
    return function_query_label_en;
  }

  public void setFunction_query_label_en(String function_query_label_en) {
    this.function_query_label_en = function_query_label_en;
  }

  public String getFunction_query_label_zh() {
    return function_query_label_zh;
  }

  public void setFunction_query_label_zh(String function_query_label_zh) {
    this.function_query_label_zh = function_query_label_zh;
  }

  public Boolean getFunction_other1_enabled() {
    return function_other1_enabled;
  }

  public void setFunction_other1_enabled(Boolean function_other1_enabled) {
    this.function_other1_enabled = function_other1_enabled;
  }

  public String getFunction_other1_label_en() {
    return function_other1_label_en;
  }

  public void setFunction_other1_label_en(String function_other1_label_en) {
    this.function_other1_label_en = function_other1_label_en;
  }

  public String getFunction_other1_label_zh() {
    return function_other1_label_zh;
  }

  public void setFunction_other1_label_zh(String function_other1_label_zh) {
    this.function_other1_label_zh = function_other1_label_zh;
  }

  public Boolean getFunction_other2_enabled() {
    return function_other2_enabled;
  }

  public void setFunction_other2_enabled(Boolean function_other2_enabled) {
    this.function_other2_enabled = function_other2_enabled;
  }

  public String getFunction_other2_label_en() {
    return function_other2_label_en;
  }

  public void setFunction_other2_label_en(String function_other2_label_en) {
    this.function_other2_label_en = function_other2_label_en;
  }

  public String getFunction_other2_label_zh() {
    return function_other2_label_zh;
  }

  public void setFunction_other2_label_zh(String function_other2_label_zh) {
    this.function_other2_label_zh = function_other2_label_zh;
  }

  public Boolean getFunction_other3_enabled() {
    return function_other3_enabled;
  }

  public void setFunction_other3_enabled(Boolean function_other3_enabled) {
    this.function_other3_enabled = function_other3_enabled;
  }

  public String getFunction_other3_label_en() {
    return function_other3_label_en;
  }

  public void setFunction_other3_label_en(String function_other3_label_en) {
    this.function_other3_label_en = function_other3_label_en;
  }

  public String getFunction_other3_label_zh() {
    return function_other3_label_zh;
  }

  public void setFunction_other3_label_zh(String function_other3_label_zh) {
    this.function_other3_label_zh = function_other3_label_zh;
  }

  public Boolean getFunction_other4_enabled() {
    return function_other4_enabled;
  }

  public void setFunction_other4_enabled(Boolean function_other4_enabled) {
    this.function_other4_enabled = function_other4_enabled;
  }

  public String getFunction_other4_label_en() {
    return function_other4_label_en;
  }

  public void setFunction_other4_label_en(String function_other4_label_en) {
    this.function_other4_label_en = function_other4_label_en;
  }

  public String getFunction_other4_label_zh() {
    return function_other4_label_zh;
  }

  public void setFunction_other4_label_zh(String function_other4_label_zh) {
    this.function_other4_label_zh = function_other4_label_zh;
  }

  public Boolean getFunction_other5_enabled() {
    return function_other5_enabled;
  }

  public void setFunction_other5_enabled(Boolean function_other5_enabled) {
    this.function_other5_enabled = function_other5_enabled;
  }

  public String getFunction_other5_label_en() {
    return function_other5_label_en;
  }

  public void setFunction_other5_label_en(String function_other5_label_en) {
    this.function_other5_label_en = function_other5_label_en;
  }

  public String getFunction_other5_label_zh() {
    return function_other5_label_zh;
  }

  public void setFunction_other5_label_zh(String function_other5_label_zh) {
    this.function_other5_label_zh = function_other5_label_zh;
  }

  public Boolean getFunction_other6_enabled() {
    return function_other6_enabled;
  }

  public void setFunction_other6_enabled(Boolean function_other6_enabled) {
    this.function_other6_enabled = function_other6_enabled;
  }

  public String getFunction_other6_label_en() {
    return function_other6_label_en;
  }

  public void setFunction_other6_label_en(String function_other6_label_en) {
    this.function_other6_label_en = function_other6_label_en;
  }

  public String getFunction_other6_label_zh() {
    return function_other6_label_zh;
  }

  public void setFunction_other6_label_zh(String function_other6_label_zh) {
    this.function_other6_label_zh = function_other6_label_zh;
  }

  public Boolean getFunction_other7_enabled() {
    return function_other7_enabled;
  }

  public void setFunction_other7_enabled(Boolean function_other7_enabled) {
    this.function_other7_enabled = function_other7_enabled;
  }

  public String getFunction_other7_label_en() {
    return function_other7_label_en;
  }

  public void setFunction_other7_label_en(String function_other7_label_en) {
    this.function_other7_label_en = function_other7_label_en;
  }

  public String getFunction_other7_label_zh() {
    return function_other7_label_zh;
  }

  public void setFunction_other7_label_zh(String function_other7_label_zh) {
    this.function_other7_label_zh = function_other7_label_zh;
  }

  public Boolean getFunction_other8_enabled() {
    return function_other8_enabled;
  }

  public void setFunction_other8_enabled(Boolean function_other8_enabled) {
    this.function_other8_enabled = function_other8_enabled;
  }

  public String getFunction_other8_label_en() {
    return function_other8_label_en;
  }

  public void setFunction_other8_label_en(String function_other8_label_en) {
    this.function_other8_label_en = function_other8_label_en;
  }

  public String getFunction_other8_label_zh() {
    return function_other8_label_zh;
  }

  public void setFunction_other8_label_zh(String function_other8_label_zh) {
    this.function_other8_label_zh = function_other8_label_zh;
  }

  public Boolean getFunction_other9_enabled() {
    return function_other9_enabled;
  }

  public void setFunction_other9_enabled(Boolean function_other9_enabled) {
    this.function_other9_enabled = function_other9_enabled;
  }

  public String getFunction_other9_label_en() {
    return function_other9_label_en;
  }

  public void setFunction_other9_label_en(String function_other9_label_en) {
    this.function_other9_label_en = function_other9_label_en;
  }

  public String getFunction_other9_label_zh() {
    return function_other9_label_zh;
  }

  public void setFunction_other9_label_zh(String function_other9_label_zh) {
    this.function_other9_label_zh = function_other9_label_zh;
  }

  public Boolean getFunction_other10_enabled() {
    return function_other10_enabled;
  }

  public void setFunction_other10_enabled(Boolean function_other10_enabled) {
    this.function_other10_enabled = function_other10_enabled;
  }

  public String getFunction_other10_label_en() {
    return function_other10_label_en;
  }

  public void setFunction_other10_label_en(String function_other10_label_en) {
    this.function_other10_label_en = function_other10_label_en;
  }

  public String getFunction_other10_label_zh() {
    return function_other10_label_zh;
  }

  public void setFunction_other10_label_zh(String function_other10_label_zh) {
    this.function_other10_label_zh = function_other10_label_zh;
  }

  public Boolean getFunction_other11_enabled() {
    return function_other11_enabled;
  }

  public void setFunction_other11_enabled(Boolean function_other11_enabled) {
    this.function_other11_enabled = function_other11_enabled;
  }

  public String getFunction_other11_label_en() {
    return function_other11_label_en;
  }

  public void setFunction_other11_label_en(String function_other11_label_en) {
    this.function_other11_label_en = function_other11_label_en;
  }

  public String getFunction_other11_label_zh() {
    return function_other11_label_zh;
  }

  public void setFunction_other11_label_zh(String function_other11_label_zh) {
    this.function_other11_label_zh = function_other11_label_zh;
  }

  public Boolean getFunction_other12_enabled() {
    return function_other12_enabled;
  }

  public void setFunction_other12_enabled(Boolean function_other12_enabled) {
    this.function_other12_enabled = function_other12_enabled;
  }

  public String getFunction_other12_label_en() {
    return function_other12_label_en;
  }

  public void setFunction_other12_label_en(String function_other12_label_en) {
    this.function_other12_label_en = function_other12_label_en;
  }

  public String getFunction_other12_label_zh() {
    return function_other12_label_zh;
  }

  public void setFunction_other12_label_zh(String function_other12_label_zh) {
    this.function_other12_label_zh = function_other12_label_zh;
  }

//  public ModuleFunction convertFromDtoToModuleFunction() {
//    ModuleFunction moduleFunction = new ModuleFunction();
//    moduleFunction.setId(getId());
//    moduleFunction.setModuleId(getModule_id());
//    moduleFunction.setFunctionNewEnabled(getFunction_new_enabled());
//    moduleFunction.setFunctionNewLabelEn(getFunction_new_label_en());
//    moduleFunction.setFunctionNewLabelZh(getFunction_new_label_zh());
//    moduleFunction.setFunctionUpdateEnabled(getFunction_update_enabled());
//    moduleFunction.setFunctionUpdateLabelEn(getFunction_update_label_en());
//    moduleFunction.setFunctionUpdateLabelZh(getFunction_update_label_zh());
//    moduleFunction.setFunctionDeleteEnabled(getFunction_delete_enabled());
//    moduleFunction.setFunctionDeleteLabelEn(getFunction_delete_label_en());
//    moduleFunction.setFunctionDeleteLabelZh(getFunction_delete_label_zh());
//    moduleFunction.setFunctionQueryEnabled(getFunction_query_enabled());
//    moduleFunction.setFunctionQueryLabelEn(getFunction_query_label_en());
//    moduleFunction.setFunctionQueryLabelZh(getFunction_query_label_zh());
//    moduleFunction.setFunctionOther1Enabled(getFunction_other1_enabled());
//    moduleFunction.setFunctionOther1LabelEn(getFunction_other1_label_en());
//    moduleFunction.setFunctionOther1LabelZh(getFunction_other1_label_zh());
//    moduleFunction.setFunctionOther2Enabled(getFunction_other2_enabled());
//    moduleFunction.setFunctionOther2LabelEn(getFunction_other2_label_en());
//    moduleFunction.setFunctionOther2LabelZh(getFunction_other2_label_zh());
//    moduleFunction.setFunctionOther3Enabled(getFunction_other3_enabled());
//    moduleFunction.setFunctionOther3LabelEn(getFunction_other3_label_en());
//    moduleFunction.setFunctionOther3LabelZh(getFunction_other3_label_zh());
//    moduleFunction.setFunctionOther4Enabled(getFunction_other4_enabled());
//    moduleFunction.setFunctionOther4LabelEn(getFunction_other4_label_en());
//    moduleFunction.setFunctionOther4LabelZh(getFunction_other4_label_zh());
//    moduleFunction.setFunctionOther5Enabled(getFunction_other5_enabled());
//    moduleFunction.setFunctionOther5LabelEn(getFunction_other5_label_en());
//    moduleFunction.setFunctionOther5LabelZh(getFunction_other5_label_zh());
//    moduleFunction.setFunctionOther6Enabled(getFunction_other6_enabled());
//    moduleFunction.setFunctionOther6LabelEn(getFunction_other6_label_en());
//    moduleFunction.setFunctionOther6LabelZh(getFunction_other6_label_zh());
//    moduleFunction.setFunctionOther7Enabled(getFunction_other7_enabled());
//    moduleFunction.setFunctionOther7LabelEn(getFunction_other7_label_en());
//    moduleFunction.setFunctionOther7LabelZh(getFunction_other7_label_zh());
//    moduleFunction.setFunctionOther8Enabled(getFunction_other8_enabled());
//    moduleFunction.setFunctionOther8LabelEn(getFunction_other8_label_en());
//    moduleFunction.setFunctionOther8LabelZh(getFunction_other8_label_zh());
//    moduleFunction.setFunctionOther9Enabled(getFunction_other9_enabled());
//    moduleFunction.setFunctionOther9LabelEn(getFunction_other9_label_en());
//    moduleFunction.setFunctionOther9LabelZh(getFunction_other9_label_zh());
//    moduleFunction.setFunctionOther10Enabled(getFunction_other10_enabled());
//    moduleFunction.setFunctionOther10LabelEn(getFunction_other10_label_en());
//    moduleFunction.setFunctionOther10LabelZh(getFunction_other10_label_zh());
//    moduleFunction.setFunctionOther11Enabled(getFunction_other11_enabled());
//    moduleFunction.setFunctionOther11LabelEn(getFunction_other11_label_en());
//    moduleFunction.setFunctionOther11LabelZh(getFunction_other11_label_zh());
//    moduleFunction.setFunctionOther12Enabled(getFunction_other12_enabled());
//    moduleFunction.setFunctionOther12LabelEn(getFunction_other12_label_en());
//    moduleFunction.setFunctionOther12LabelZh(getFunction_other12_label_zh());
//    return moduleFunction;
//  }
//
//  public static ModuleFunctionDTO convertFromModuleFunctionToDto(ModuleFunction moduleFunction) {
//    ModuleFunctionDTO moduleFunctionDto = new ModuleFunctionDTO();
//    moduleFunctionDto.setId(moduleFunction.getId());
//    moduleFunctionDto.setModule_id(moduleFunction.getModuleId());
//    moduleFunctionDto.setFunction_new_enabled(moduleFunction.getFunctionNewEnabled());
//    moduleFunctionDto.setFunction_new_label_en(moduleFunction.getFunctionNewLabelEn());
//    moduleFunctionDto.setFunction_new_label_zh(moduleFunction.getFunctionNewLabelZh());
//    moduleFunctionDto.setFunction_update_enabled(moduleFunction.getFunctionUpdateEnabled());
//    moduleFunctionDto.setFunction_update_label_en(moduleFunction.getFunctionUpdateLabelEn());
//    moduleFunctionDto.setFunction_update_label_zh(moduleFunction.getFunctionUpdateLabelZh());
//    moduleFunctionDto.setFunction_delete_enabled(moduleFunction.getFunctionDeleteEnabled());
//    moduleFunctionDto.setFunction_delete_label_en(moduleFunction.getFunctionDeleteLabelEn());
//    moduleFunctionDto.setFunction_delete_label_zh(moduleFunction.getFunctionDeleteLabelZh());
//    moduleFunctionDto.setFunction_query_enabled(moduleFunction.getFunctionQueryEnabled());
//    moduleFunctionDto.setFunction_query_label_en(moduleFunction.getFunctionQueryLabelEn());
//    moduleFunctionDto.setFunction_query_label_zh(moduleFunction.getFunctionQueryLabelZh());
//    moduleFunctionDto.setFunction_other1_enabled(moduleFunction.getFunctionOther1Enabled());
//    moduleFunctionDto.setFunction_other1_label_en(moduleFunction.getFunctionOther1LabelEn());
//    moduleFunctionDto.setFunction_other1_label_zh(moduleFunction.getFunctionOther1LabelZh());
//    moduleFunctionDto.setFunction_other2_enabled(moduleFunction.getFunctionOther2Enabled());
//    moduleFunctionDto.setFunction_other2_label_en(moduleFunction.getFunctionOther2LabelEn());
//    moduleFunctionDto.setFunction_other2_label_zh(moduleFunction.getFunctionOther2LabelZh());
//    moduleFunctionDto.setFunction_other3_enabled(moduleFunction.getFunctionOther3Enabled());
//    moduleFunctionDto.setFunction_other3_label_en(moduleFunction.getFunctionOther3LabelEn());
//    moduleFunctionDto.setFunction_other3_label_zh(moduleFunction.getFunctionOther3LabelZh());
//    moduleFunctionDto.setFunction_other4_enabled(moduleFunction.getFunctionOther4Enabled());
//    moduleFunctionDto.setFunction_other4_label_en(moduleFunction.getFunctionOther4LabelEn());
//    moduleFunctionDto.setFunction_other4_label_zh(moduleFunction.getFunctionOther4LabelZh());
//    moduleFunctionDto.setFunction_other5_enabled(moduleFunction.getFunctionOther5Enabled());
//    moduleFunctionDto.setFunction_other5_label_en(moduleFunction.getFunctionOther5LabelEn());
//    moduleFunctionDto.setFunction_other5_label_zh(moduleFunction.getFunctionOther5LabelZh());
//    moduleFunctionDto.setFunction_other6_enabled(moduleFunction.getFunctionOther6Enabled());
//    moduleFunctionDto.setFunction_other6_label_en(moduleFunction.getFunctionOther6LabelEn());
//    moduleFunctionDto.setFunction_other6_label_zh(moduleFunction.getFunctionOther6LabelZh());
//    moduleFunctionDto.setFunction_other7_enabled(moduleFunction.getFunctionOther7Enabled());
//    moduleFunctionDto.setFunction_other7_label_en(moduleFunction.getFunctionOther7LabelEn());
//    moduleFunctionDto.setFunction_other7_label_zh(moduleFunction.getFunctionOther7LabelZh());
//    moduleFunctionDto.setFunction_other8_enabled(moduleFunction.getFunctionOther8Enabled());
//    moduleFunctionDto.setFunction_other8_label_en(moduleFunction.getFunctionOther8LabelEn());
//    moduleFunctionDto.setFunction_other8_label_zh(moduleFunction.getFunctionOther8LabelZh());
//    moduleFunctionDto.setFunction_other9_enabled(moduleFunction.getFunctionOther9Enabled());
//    moduleFunctionDto.setFunction_other9_label_en(moduleFunction.getFunctionOther9LabelEn());
//    moduleFunctionDto.setFunction_other9_label_zh(moduleFunction.getFunctionOther9LabelZh());
//    moduleFunctionDto.setFunction_other10_enabled(moduleFunction.getFunctionOther10Enabled());
//    moduleFunctionDto.setFunction_other10_label_en(moduleFunction.getFunctionOther10LabelEn());
//    moduleFunctionDto.setFunction_other10_label_zh(moduleFunction.getFunctionOther10LabelZh());
//    moduleFunctionDto.setFunction_other11_enabled(moduleFunction.getFunctionOther11Enabled());
//    moduleFunctionDto.setFunction_other11_label_en(moduleFunction.getFunctionOther11LabelEn());
//    moduleFunctionDto.setFunction_other11_label_zh(moduleFunction.getFunctionOther11LabelZh());
//    moduleFunctionDto.setFunction_other12_enabled(moduleFunction.getFunctionOther12Enabled());
//    moduleFunctionDto.setFunction_other12_label_en(moduleFunction.getFunctionOther12LabelEn());
//    moduleFunctionDto.setFunction_other12_label_zh(moduleFunction.getFunctionOther12LabelZh());
//    return moduleFunctionDto;
//  }
}
