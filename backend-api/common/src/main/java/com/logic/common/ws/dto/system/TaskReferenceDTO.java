package com.logic.common.ws.dto.system;

//import com.system.domain.TaskReference;
//import com.system.util.SysUtil;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Task Reference DTO")
public class TaskReferenceDTO {

  @ApiModelProperty(value = "Task ID", required = true, position = 1)
  private String id;

  @ApiModelProperty(value = "Reference Type", required = true, position = 2)
  private String reference_type;

  @ApiModelProperty(value = "Reference ID", required = true, position = 3)
  private String reference_id;

  @ApiModelProperty(value = "Responsible Person Title", position = 4)
  private String responsible_person_title;

  @ApiModelProperty(value = "Estimate Start Date", position = 5)
  private String estimated_start_date;

  @ApiModelProperty(value = "Estimated Due Date", position = 6)
  private String estimated_due_date;

  @ApiModelProperty(value = "Estimated Time", position = 7)
  private String estimated_time;

  @ApiModelProperty(value = "Estimated Time Unit", position = 8)
  private String estimated_time_unit;

  @ApiModelProperty(value = "Actual Start Date", position = 9)
  private String actual_start_date;

  @ApiModelProperty(value = "Actual Due Date", position = 10)
  private String actual_due_date;

  @ApiModelProperty(value = "Reminder Date for inspection task dispaly", position = 11)
  private String reminder_date;

  @ApiModelProperty(value = "Physical short name for inspection task dispaly", position = 12)
  private String physical_short_name;

  @ApiModelProperty(value = "Title description for inspection task dispaly", position = 13)
  private String title_desc_en;

  @ApiModelProperty(value = "Resolution", position = 14)
  private String resolution;

  @ApiModelProperty(value = "Comments", position = 15)
  private String comments;

  @ApiModelProperty(value = "Assignee", position = 16)
  private String assignee;

  @ApiModelProperty(value = "Task Status", required = true, position = 17)
  private String status;

  @ApiModelProperty(value = "Task Subject", position = 18)
  private String subject;

  @ApiModelProperty(value = "Regulation ID associated with activity ID", position = 19)
  private String regulation_id;

  @ApiModelProperty(value = "Used to Display Task Detail", position = 20)
  private Object task_detail;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getReference_type() {
    return reference_type;
  }

  public void setReference_type(String reference_type) {
    this.reference_type = reference_type;
  }

  public String getReference_id() {
    return reference_id;
  }

  public void setReference_id(String reference_id) {
    this.reference_id = reference_id;
  }

  public String getResponsible_person_title() {
    return responsible_person_title;
  }

  public void setResponsible_person_title(String responsible_person_title) {
    this.responsible_person_title = responsible_person_title;
  }

  public String getEstimated_start_date() {
    return estimated_start_date;
  }

  public void setEstimated_start_date(String estimated_start_date) {
    this.estimated_start_date = estimated_start_date;
  }

  public String getEstimated_due_date() {
    return estimated_due_date;
  }

  public void setEstimated_due_date(String estimated_due_date) {
    this.estimated_due_date = estimated_due_date;
  }

  public String getEstimated_time() {
    return estimated_time;
  }

  public void setEstimated_time(String estimated_time) {
    this.estimated_time = estimated_time;
  }

  public String getEstimated_time_unit() {
    return estimated_time_unit;
  }

  public void setEstimated_time_unit(String estimated_time_unit) {
    this.estimated_time_unit = estimated_time_unit;
  }

  public String getActual_start_date() {
    return actual_start_date;
  }

  public void setActual_start_date(String actual_start_date) {
    this.actual_start_date = actual_start_date;
  }

  public String getActual_due_date() {
    return actual_due_date;
  }

  public void setActual_due_date(String actual_due_date) {
    this.actual_due_date = actual_due_date;
  }

  public String getReminder_date() {
    return reminder_date;
  }

  public void setReminder_date(String reminder_date) {
    this.reminder_date = reminder_date;
  }

  public String getPhysical_short_name() {
    return physical_short_name;
  }

  public void setPhysical_short_name(String physical_short_name) {
    this.physical_short_name = physical_short_name;
  }

  public String getTitle_desc_en() {
    return title_desc_en;
  }

  public void setTitle_desc_en(String title_desc_en) {
    this.title_desc_en = title_desc_en;
  }

  public String getResolution() {
    return resolution;
  }

  public void setResolution(String resolution) {
    this.resolution = resolution;
  }

  public String getComments() {
    return comments;
  }

  public void setComments(String comments) {
    this.comments = comments;
  }

  public String getAssignee() {
    return assignee;
  }

  public void setAssignee(String assignee) {
    this.assignee = assignee;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getSubject() {
    return subject;
  }

  public void setSubject(String subject) {
    this.subject = subject;
  }

  public String getRegulation_id() {
    return regulation_id;
  }

  public void setRegulation_id(String regulation_id) {
    this.regulation_id = regulation_id;
  }

  public Object getTask_detail() {
    return task_detail;
  }

  public void setTask_detail(Object task_detail) {
    this.task_detail = task_detail;
  }

//  public static TaskReferenceDTO convertFromPojoToDto(TaskReference reference) {
//    TaskReferenceDTO dto = new TaskReferenceDTO();
//    dto.setId(null == reference.getId() ? null : reference.getId().toString());
//    dto.setReference_type(reference.getReferenceType());
//    dto.setReference_id(null == reference.getReferenceId() ? null : reference.getReferenceId().toString());
//    dto.setResponsible_person_title(reference.getResponsiblePersonTitle());
//    dto.setEstimated_start_date(SysUtil.convertDateToISO8601String(reference.getEstimateStartDate()));
//    dto.setEstimated_due_date(SysUtil.convertDateToISO8601String(reference.getEstimatedDueDate()));
//    dto.setEstimated_time(null == reference.getEstimatedTime() ? null : reference.getEstimatedTime().toString());
//    dto.setEstimated_time_unit(reference.getEstimatedTimeUnit());
//    dto.setActual_start_date(SysUtil.convertDateToISO8601String(reference.getActualStartDate()));
//    dto.setActual_due_date(SysUtil.convertDateToISO8601String(reference.getActualDueDate()));
//    dto.setResolution(reference.getResolution());
//    dto.setComments(reference.getComments());
//    dto.setAssignee(null == reference.getAssignee() ? null : reference.getAssignee().toString());
//    dto.setStatus(reference.getStatus());
//    dto.setSubject(reference.getSubject());
//    dto.setTask_detail(reference.getTaskDetail());
//    return dto;
//  }
}
