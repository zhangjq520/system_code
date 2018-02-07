package com.logic.common.enums;

public enum IconStyle {
	ROOT_WITH_PREFIX("fa fa-briefcase icon-lg icon-state-warning"),
	ROOT_WITHOUT_PREFIX("fa fa-briefcase icon-lg icon-state-success"),
	HAS_CHILDREN_WITH_PREFIX("fa fa-folder icon-lg icon-state-warning"),
	HAS_CHILDREN_WITH_OUT_PREFIX("fa fa-folder icon-lg icon-state-success"),
	HAS_NO_CHILDREN_WITH_PREFIX("fa fa-file icon-lg icon-state-warning"),
	HAS_NO_CHILDREN_WITHOUT_PREFIX("fa fa-file icon-lg icon-state-success"),
	
	ORG_GROUPCOMPANIES("fa fa-university icon-lg icon-state-warning"),
	ORG_COMPANY("fa fa-cubes icon-lg icon-state-warning"),
	ORG_REGION("fa fa-building-o icon-lg icon-state-warning"),
	ORG_DIVISION("fa fa-university icon-lg icon-state-warning"),
	ORG_AGENT("fa fa-hospital-o icon-lg icon-state-warning"),
	ORG_DEPARTMENTS("fa fa-cubes icon-lg icon-state-warning"),
	ORG_DEPARTMENT("fa fa-cube icon-lg icon-state-warning");
	
	
	String style;
	IconStyle(String style){this.style=style;}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
}
