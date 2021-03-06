package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

public class TaskForm extends BasePojo {
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column SYSTEM_TASK_FORM.TASK_ID
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	private Integer taskId;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column SYSTEM_TASK_FORM.FORM_ID
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	private Integer formId;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column SYSTEM_TASK_FORM.FORM_DESC
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	private String formDesc;

	private String formType;

	private String other_1;

	private String other_2;

	private String other_3;

	private String other_4;

	private String other_5;

	private String other_6;

	private String other_7;

	private String other_8;

	private String other_9;

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column SYSTEM_TASK_FORM.TASK_ID
	 *
	 * @return the value of SYSTEM_TASK_FORM.TASK_ID
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	public Integer getTaskId() {
		return taskId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column SYSTEM_TASK_FORM.TASK_ID
	 *
	 * @param taskId
	 *            the value for SYSTEM_TASK_FORM.TASK_ID
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column SYSTEM_TASK_FORM.FORM_ID
	 *
	 * @return the value of SYSTEM_TASK_FORM.FORM_ID
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	public Integer getFormId() {
		return formId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column SYSTEM_TASK_FORM.FORM_ID
	 *
	 * @param formId
	 *            the value for SYSTEM_TASK_FORM.FORM_ID
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	public void setFormId(Integer formId) {
		this.formId = formId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column SYSTEM_TASK_FORM.FORM_DESC
	 *
	 * @return the value of SYSTEM_TASK_FORM.FORM_DESC
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	public String getFormDesc() {
		return formDesc;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column SYSTEM_TASK_FORM.FORM_DESC
	 *
	 * @param formDesc
	 *            the value for SYSTEM_TASK_FORM.FORM_DESC
	 *
	 * @mbggenerated Tue Jan 05 15:58:45 CST 2016
	 */
	public void setFormDesc(String formDesc) {
		this.formDesc = formDesc == null ? null : formDesc.trim();
	}

	public String getFormType() {
		return formType;
	}

	public void setFormType(String formType) {
		this.formType = formType;
	}

	public String getOther_1() {
		return other_1;
	}

	public void setOther_1(String other_1) {
		this.other_1 = other_1;
	}

	public String getOther_2() {
		return other_2;
	}

	public void setOther_2(String other_2) {
		this.other_2 = other_2;
	}

	public String getOther_3() {
		return other_3;
	}

	public void setOther_3(String other_3) {
		this.other_3 = other_3;
	}

	public String getOther_4() {
		return other_4;
	}

	public void setOther_4(String other_4) {
		this.other_4 = other_4;
	}

	public String getOther_5() {
		return other_5;
	}

	public void setOther_5(String other_5) {
		this.other_5 = other_5;
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