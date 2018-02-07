package com.logic.system.domain;

import java.util.Date;

import com.logic.common.domain.BasePojo;

public class TaskLog extends BasePojo{
    /**
	 * 
	 */
	private static final long serialVersionUID = 6905762874466759926L;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_TASK_LOG.TASK_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private Integer taskId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_TASK_LOG.USER_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_TASK_LOG.CHANGED_TIME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private Date changedTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_TASK_LOG.FIELD_NAME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private String fieldName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_TASK_LOG.ORIGINAL_VALUE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private String originalValue;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column SYSTEM_TASK_LOG.NEW_VALUE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    private String newValue;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_TASK_LOG.TASK_ID
     *
     * @return the value of SYSTEM_TASK_LOG.TASK_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public Integer getTaskId() {
        return taskId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_TASK_LOG.TASK_ID
     *
     * @param taskId the value for SYSTEM_TASK_LOG.TASK_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_TASK_LOG.USER_ID
     *
     * @return the value of SYSTEM_TASK_LOG.USER_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_TASK_LOG.USER_ID
     *
     * @param userId the value for SYSTEM_TASK_LOG.USER_ID
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_TASK_LOG.CHANGED_TIME
     *
     * @return the value of SYSTEM_TASK_LOG.CHANGED_TIME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public Date getChangedTime() {
        return changedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_TASK_LOG.CHANGED_TIME
     *
     * @param changedTime the value for SYSTEM_TASK_LOG.CHANGED_TIME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setChangedTime(Date changedTime) {
        this.changedTime = changedTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_TASK_LOG.FIELD_NAME
     *
     * @return the value of SYSTEM_TASK_LOG.FIELD_NAME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public String getFieldName() {
        return fieldName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_TASK_LOG.FIELD_NAME
     *
     * @param fieldName the value for SYSTEM_TASK_LOG.FIELD_NAME
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setFieldName(String fieldName) {
        this.fieldName = fieldName == null ? null : fieldName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_TASK_LOG.ORIGINAL_VALUE
     *
     * @return the value of SYSTEM_TASK_LOG.ORIGINAL_VALUE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public String getOriginalValue() {
        return originalValue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_TASK_LOG.ORIGINAL_VALUE
     *
     * @param originalValue the value for SYSTEM_TASK_LOG.ORIGINAL_VALUE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setOriginalValue(String originalValue) {
        this.originalValue = originalValue == null ? null : originalValue.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column SYSTEM_TASK_LOG.NEW_VALUE
     *
     * @return the value of SYSTEM_TASK_LOG.NEW_VALUE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public String getNewValue() {
        return newValue;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column SYSTEM_TASK_LOG.NEW_VALUE
     *
     * @param newValue the value for SYSTEM_TASK_LOG.NEW_VALUE
     *
     * @mbggenerated Fri Dec 18 13:43:17 CST 2015
     */
    public void setNewValue(String newValue) {
        this.newValue = newValue == null ? null : newValue.trim();
    }

}