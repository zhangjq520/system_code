package com.logic.common.enums;

public enum OrganizationTypeEnum {
	GroupCompanies("_A81"), Company("_A8A"), Region("_A8B"), Division("_A8F"), Agent("_A8C"), Departments("_A8D"), Department("_A8E"), Other("");
	
  private String code;
  
  
  public static OrganizationTypeEnum toType(String code) {
	    for (OrganizationTypeEnum r : OrganizationTypeEnum.values()) {
	      if (r.getCode().equals(code)) {
	        return r;
	      }
	    }
	    return Other;
  }
  
  private OrganizationTypeEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

}
