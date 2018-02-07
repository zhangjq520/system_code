package com.logic.common.ws.dto.system;

import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer Date : 06-01-2016
 */
public class TaskFormDTO {

	@ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = false, position = 1)
	private String id;

	@ApiModelProperty(value = "Task ID", position = 2, hidden = true)
	private Integer task_id;

	@ApiModelProperty(value = "Form ID", position = 3, hidden = false)
	private Integer form_id;

	@ApiModelProperty(value = "Form description", position = 4, hidden = false)
	private String form_desc;

	private String form_type_code;

	private String lifter_diagnos;

	private String control_panel_diagnoser;

	private String inspection;

	private String corrective_action;

	private String diagnose_completion;

	private String other_6;

	private String other_7;

	private String other_8;

	private String other_9;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getTask_id() {
		return task_id;
	}

	public void setTask_id(Integer task_id) {
		this.task_id = task_id;
	}

	public Integer getForm_id() {
		return form_id;
	}

	public void setForm_id(Integer form_id) {
		this.form_id = form_id;
	}

	public String getForm_desc() {
		return form_desc;
	}

	public void setForm_desc(String form_desc) {
		this.form_desc = form_desc;
	}

	public String getForm_type_code() {
		return form_type_code;
	}

	public void setForm_type_code(String form_type_code) {
		this.form_type_code = form_type_code;
	}

	public String getLifter_diagnos() {
		return lifter_diagnos;
	}

	public void setLifter_diagnos(String other_1) {
		this.lifter_diagnos = other_1;
	}

	public String getControl_panel_diagnoser() {
		return control_panel_diagnoser;
	}

	public void setControl_panel_diagnoser(String other_2) {
		this.control_panel_diagnoser = other_2;
	}

	public String getInspection() {
		return inspection;
	}

	public void setInspection(String other_3) {
		this.inspection = other_3;
	}

	public String getCorrective_action() {
		return corrective_action;
	}

	public void setCorrective_action(String other_4) {
		this.corrective_action = other_4;
	}

	public String getDiagnose_completion() {
		return diagnose_completion;
	}

	public void setDiagnose_completion(String other_5) {
		this.diagnose_completion = other_5;
	}

	public String getOther_6() {
		return other_6;
	}

	public void setOther_6(String other_6) {
		this.other_6 = other_6;
	}

	public String getOther_7() {
		return other_7;
	}

	public void setOther_7(String other_7) {
		this.other_7 = other_7;
	}

	public String getOther_8() {
		return other_8;
	}

	public void setOther_8(String other_8) {
		this.other_8 = other_8;
	}

	public String getOther_9() {
		return other_9;
	}

	public void setOther_9(String other_9) {
		this.other_9 = other_9;
	}
}
