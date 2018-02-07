package com.logic.common.ws.dto.toshiba;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "the param of expot pdf")
public class PDFPara {

	@ApiModelProperty(value = "task id", required=true, position = 1)
	private Integer taskId;

	@ApiModelProperty(value = "which file to export: 1-lifter、2-controlPanel、3-inspection、4-corrective、5-completion", required=true, position = 2)
	private Integer reportType;
	
	@ApiModelProperty(value = "form id for exporting check pdf", position = 3)
	private Integer formId;

	public Integer getFormId() {
		return formId;
	}

	public void setFormId(Integer formId) {
		this.formId = formId;
	}

	public Integer getReportType() {
		return reportType;
	}

	public void setReportType(Integer reportType) {
		this.reportType = reportType;
	}

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

}
