package com.logic.common.domain;

import java.util.List;

public class Code extends BasePojo {

  private static final long serialVersionUID = -9102866102682521682L;

  private String code;

  private String codeDescEn;

  private String codeDescZh;

  private String codeDescTr;

  private Integer priority;

  private Boolean disabled;

  private String parentCode;

  private String other1;
  private String other2;
  private String other3;
  private String other4;
  private String other5;
  private String other6;
  private String other7;
  private String other8;
  private String other9;

  private List<Code> childCodes;

  private List<OrgCode> orgCodes;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code == null ? null : code.trim();
  }

  public String getCodeDescEn() {
    return codeDescEn;
  }

  public void setCodeDescEn(String codeDescEn) {
    this.codeDescEn = codeDescEn == null ? null : codeDescEn.trim();
  }

  public String getCodeDescZh() {
    return codeDescZh;
  }

  public void setCodeDescZh(String codeDescZh) {
    this.codeDescZh = codeDescZh == null ? null : codeDescZh.trim();
  }

  public String getCodeDescTr() {
    return codeDescTr;
  }

  public void setCodeDescTr(String codeDescTr) {
    this.codeDescTr = codeDescTr == null ? null : codeDescTr.trim();
  }

  public Integer getPriority() {
    return priority;
  }

  public void setPriority(Integer priority) {
    this.priority = priority;
  }

  public Boolean getDisabled() {
    return disabled;
  }

  public void setDisabled(Boolean disabled) {
    this.disabled = disabled;
  }

  public String getParentCode() {
    return parentCode;
  }

  public void setParentCode(String parentCode) {
    this.parentCode = parentCode == null ? null : parentCode.trim();
  }

  public List<Code> getChildCodes() {
    return childCodes;
  }

  public void setChildCodes(List<Code> childCodes) {
    this.childCodes = childCodes;
  }

  public List<OrgCode> getOrgCodes() {
    return orgCodes;
  }

  public void setOrgCodes(List<OrgCode> orgCodes) {
    this.orgCodes = orgCodes;
  }

  public String getOther1() {
    return other1;
  }

  public void setOther1(String other1) {
    this.other1 = other1;
  }

  public String getOther2() {
    return other2;
  }

  public void setOther2(String other2) {
    this.other2 = other2;
  }

  public String getOther3() {
    return other3;
  }

  public void setOther3(String other3) {
    this.other3 = other3;
  }

  public String getOther4() {
    return other4;
  }

  public void setOther4(String other4) {
    this.other4 = other4;
  }

  public String getOther5() {
    return other5;
  }

  public void setOther5(String other5) {
    this.other5 = other5;
  }

  public String getOther6() {
    return other6;
  }

  public void setOther6(String other6) {
    this.other6 = other6;
  }

  public String getOther7() {
    return other7;
  }

  public void setOther7(String other7) {
    this.other7 = other7;
  }

  public String getOther8() {
    return other8;
  }

  public void setOther8(String other8) {
    this.other8 = other8;
  }

  public String getOther9() {
    return other9;
  }

  public void setOther9(String other9) {
    this.other9 = other9;
  }
}
