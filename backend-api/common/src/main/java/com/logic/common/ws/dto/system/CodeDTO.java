package com.logic.common.ws.dto.system;


import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Code DTO")
public class CodeDTO {

  @ApiModelProperty(value = "It's required when add, but not required when update", allowableValues = "Start with a digital and unique and maxlength:10", required = false, position = 1)
  private String code;

  @ApiModelProperty(value = "English description", position = 2)
  private String code_desc_en;

  @ApiModelProperty(value = "Chinese description", position = 3)
  private String code_desc_zh;

  @ApiModelProperty(value = "Traditional Chinese description", position = 4)
  private String code_desc_tr;

  @ApiModelProperty(value = "display order", position = 5)
  private String priority;

  @ApiModelProperty(value = "whether disabled", position = 6)
  private String disabled;

  @ApiModelProperty(value = "parent code, no need when create root code and update code", position = 7)
  private String parent_code;

  private String other_9;
  
  @ApiModelProperty(value = "Whether Code has children", hidden = true, position = 8)
  private String has_children;

  @ApiModelProperty(value = "Child codes", hidden = true, position = 9)
  private List<CodeDTO> childCodes;

  @ApiModelProperty(value = "Org ids, seperated with comma of multiple values", position = 8)
  private String org_ids;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getCode_desc_en() {
    return code_desc_en;
  }

  public void setCode_desc_en(String code_desc_en) {
    this.code_desc_en = code_desc_en;
  }

  public String getCode_desc_zh() {
    return code_desc_zh;
  }

  public void setCode_desc_zh(String code_desc_zh) {
    this.code_desc_zh = code_desc_zh;
  }

  public String getCode_desc_tr() {
    return code_desc_tr;
  }

  public void setCode_desc_tr(String code_desc_tr) {
    this.code_desc_tr = code_desc_tr;
  }

  public String getPriority() {
    return priority;
  }

  public void setPriority(String priority) {
    this.priority = priority;
  }

  public String getDisabled() {
    return disabled;
  }

  public void setDisabled(String disabled) {
    this.disabled = disabled;
  }

  public String getHas_children() {
    return has_children;
  }

  public void setHas_children(String has_children) {
    this.has_children = has_children;
  }

  public String getParent_code() {
    return parent_code;
  }

  public void setParent_code(String parent_code) {
    this.parent_code = parent_code;
  }

	public String getOther_9() {
		return other_9;
	}

	public void setOther_9(String other_9) {
		this.other_9 = other_9;
	}

	public String getOrg_ids() {
		return org_ids;
	}

  public void setOrg_ids(String org_ids) {
    this.org_ids = org_ids;
  }

  public List<CodeDTO> getChildCodes() {
    return childCodes;
  }

  public void setChildCodes(List<CodeDTO> childCodes) {
    this.childCodes = childCodes;
  }

//  public Code convertFromDtoToCode(Code originalCode) throws BusinessException {
//    originalCode.setCode(this.getCode());
//    originalCode.setCodeDescEn(this.getCode_desc_en());
//    originalCode.setCodeDescZh(this.getCode_desc_zh());
//    originalCode.setCodeDescTr(this.getCode_desc_tr());
//    originalCode.setPriority(SysUtil.getValidDtoInteger(this.getPriority(), "CodeDTO priority"));
//    originalCode.setDisabled(SysUtil.getValidDtoBoolean(this.getDisabled(), "CodeDTO disabled"));
//    originalCode.setParentCode(this.getParent_code());
//    return originalCode;
//  }
//
//  public static CodeDTO convertFromCodeToDto(Code code) {
//    CodeDTO codeDto = new CodeDTO();
//    codeDto.setCode(code.getCode());
//    codeDto.setCode_desc_en(code.getCodeDescEn());
//    codeDto.setCode_desc_zh(code.getCodeDescZh());
//    codeDto.setCode_desc_tr(code.getCodeDescTr());
//    codeDto.setPriority(code.getPriority() == null ? null : code.getPriority().toString());
//    codeDto.setDisabled(code.getDisabled() == null ? null : code.getDisabled().toString());
//    codeDto.setParent_code(code.getParentCode());
//    return codeDto;
//  }
}
