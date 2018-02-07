package com.logic.common.enums;

public enum FormStyleEnum {
  SingleForm("_AJ1"), SingleFormWithSection("_AJ2"), Wizard("_AJ3"), WizardWithSection("_AJ4"), Other("");

  private String code;

  private FormStyleEnum(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }
  
  public static FormStyleEnum toFromStyle(String code){
	  for(FormStyleEnum style : FormStyleEnum.values()){
		  if(style.getCode().equals(code)){
			  return style;
		  }
	  }
	  return Other;
  }

}
