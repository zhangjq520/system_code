package com.logic.common.ws.dto.system;

public class TaskFormInfoDTO {
	
	private Integer taskID;
	
	private Integer formID;
	
	private String task_form_type;
	
	private String task_type;
	
	private String status;
	
	private String resolution;
	
	private String task_ref_id;
	
	private String machine_seqID;
	
	private String apply_type;

	private String check_phases;

	public Integer getTaskID() {
		return taskID;
	}

	public void setTaskID(Integer taskID) {
		this.taskID = taskID;
	}

	public Integer getFormID() {
		return formID;
	}

	public void setFormID(Integer formID) {
		this.formID = formID;
	}

	public String getTask_form_type() {
		return task_form_type;
	}

	public void setTask_form_type(String task_form_type) {
		this.task_form_type = task_form_type;
	}

	public String getTask_type() {
		return task_type;
	}

	public void setTask_type(String task_type) {
		this.task_type = task_type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getResolution() {
		return resolution;
	}

	public void setResolution(String resolution) {
		this.resolution = resolution;
	}

	public String getTask_ref_id() {
		return task_ref_id;
	}

	public void setTask_ref_id(String task_ref_id) {
		this.task_ref_id = task_ref_id;
	}

	public String getMachine_seqID() {
		return machine_seqID;
	}

	public void setMachine_seqID(String machine_seqID) {
		this.machine_seqID = machine_seqID;
	}


	public String getApply_type() {
		return apply_type;
	}

	public void setApply_type(String apply_type) {
		this.apply_type = apply_type;
	}

	public String getCheck_phases() {
		return check_phases;
	}

	public void setCheck_phases(String check_phases) {
		this.check_phases = check_phases;
	}
	
}
