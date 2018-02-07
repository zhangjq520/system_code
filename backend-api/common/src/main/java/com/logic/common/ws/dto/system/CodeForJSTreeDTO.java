package com.logic.common.ws.dto.system;

import javax.xml.bind.annotation.XmlRootElement;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@XmlRootElement
@ApiModel(description = "Code DTO")
public class CodeForJSTreeDTO {
	
	@ApiModelProperty(value = "id for jsTree")
	private String id;
	
	@ApiModelProperty(value = "text for jsTree")
	private String text;
	
	@ApiModelProperty(value = "children for jsTree")
	private Boolean children;
	
	@ApiModelProperty(value = "icon for jsTree")
	private String icon;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Boolean getChildren() {
		return children;
	}

	public void setChildren(String children) {
		int count = Integer.valueOf(children);
		if(count>0){
			this.children = true;
		}else{
			this.children = false;
		}
		
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
	
}
