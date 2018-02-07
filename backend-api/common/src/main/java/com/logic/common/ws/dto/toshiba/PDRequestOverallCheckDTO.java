package com.logic.common.ws.dto.toshiba;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
@ApiModel(description = "Request Overall Check DTO")
public class PDRequestOverallCheckDTO {

    // TODO write_back_status is missing
    @ApiModelProperty(name = "id", value = "It's required when add, but not required when update", required = false, position = 1)
    private BigDecimal id;

    @ApiModelProperty(name = "machine_seqid", value = "Machine Sequence Id", required = false, position = 2)
    private Integer machine_seqid;

    @ApiModelProperty(name = "project_manager", value = "Project Manager", example = "RONNIE", required = false, position = 3)
    private String project_manager;

    @ApiModelProperty(name = "install_director", value = "Installation director", required = false, position = 5)
    private String install_director;

    @ApiModelProperty(name = "install_director_phone", value = "Installation phone number", required = false, position = 6)
    private String install_director_phone;

    @ApiModelProperty(name = "apply_type", value = "Application Type", required = false, position = 7)
    private String apply_type;

    @ApiModelProperty(name = "overall_apply_date", value = "Overall fill in date", required = false, position = 8)
    private Date overall_apply_date;

    @ApiModelProperty(name = "overall_check_date", value = "Agency inspection walkthroughs date", required = false, position = 9)
    private Date overall_check_date;

    @ApiModelProperty(name = "diag_end_date", value = "Diagnosis end date", required = false, position = 10)
    private Date diag_end_date;

    @ApiModelProperty(name = "install_logs", value = "Logs of installation", required = false, position = 11)
    private String install_logs;

    @ApiModelProperty(name = "notes", value = "Notes of installation", required = false, position = 12)
    private String notes;

    @ApiModelProperty(name = "diag_report", value = "Diagnosis report", required = false, position = 13)
    private String diag_report;

    @ApiModelProperty(name = "r_check_date", value = "Review date", required = false, position = 14)
    private Date r_check_date;

    private Double r_check_score;

    private Integer r_followed_the_plan_date;

    @ApiModelProperty(name = "r_check_start_date_real", value = "Review start date", required = false, position = 15)
    private Date r_check_start_date_real;

    @ApiModelProperty(name = "r_check_end_date_real", value = "Review end date", required = false, position = 16)
    private Date r_check_end_date_real;

    @ApiModelProperty(name = "r_check_start_date_schedule", value = "Review schedule start date", required = false, position = 17)
    private Date r_check_start_date_schedule;

    @ApiModelProperty(name = "r_check_end_date_schedule", value = "Review schedule end date", required = false, position = 18)
    private Date r_check_end_date_schedule;

    @ApiModelProperty(name = "r_quality_person_id", value = "Quality check person id", required = false, position = 19)
    private String r_quality_person_id;

    @ApiModelProperty(name = "r_quality_person", value = "Quality check person", required = false, position = 20)
    private String r_quality_person;

    @ApiModelProperty(name = "r_check_result", value = "Review status result: 0 - not through; 1- through", required = false, position = 21)
    private BigDecimal r_check_result;

    @ApiModelProperty(name = "r_acceptance_date", value = "Acceptance date", required = false, position = 22)
    private Date r_acceptance_date;

    @ApiModelProperty(name = "r_recheck_inspector_id", value = "Recheck inspector Id", required = false, position = 23)
    private String r_recheck_inspector_id;

    private String r_recheck_inspector;

    @ApiModelProperty(name = "r_recheck_date", value = "Recheck date", required = false, position = 24)
    private Date r_recheck_date;

    @ApiModelProperty(name = "r_recheck_result", value = "Recheck result: 0 - not through; 1- through", required = false, position = 25)
    private BigDecimal r_recheck_result;

    @ApiModelProperty(name = "r_snd_rectification_days", value = "Secondary rectification days", required = false, position = 26)
    private BigDecimal r_snd_rectification_days;

    @ApiModelProperty(name = "r_trd_check_inspector_id", value = "Third Check inspector Id", required = false, position = 28)
    private String r_trd_check_inspector_id;

    @ApiModelProperty(name = "r_trd_check_inspector", value = "Third check inspector", required = false, position = 29)
    private String r_trd_check_inspector;

    @ApiModelProperty(name = "r_trd_check_date", value = "Third check date", required = false, position = 30)
    private Date r_trd_check_date;

    @ApiModelProperty(name = "r_trd_check_result", value = "Third check result: 0 - not through; 1- through", required = false, position = 31)
    private BigDecimal r_trd_check_result;

    @ApiModelProperty(name = "write_back_status", value = "Write back status: 0 not pass; 1- through", required = false, position = 32)
    private BigDecimal write_back_status;

    @ApiModelProperty(name = "apply_type_code", value = "Application Type Code", required = false, position = 33)
    private String apply_type_code;

    private BigDecimal r_rectification_days;
    private Integer r_is_before_authority;
    private Integer r_has_built_records;
    private String  company_employee_id;

    private Date rectification_end_date;
    private Date snd_rectification_end_date;
    private String rectification_files;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Integer getMachine_seqid() {
        return machine_seqid;
    }

    public void setMachine_seqid(Integer machine_seqid) {
        this.machine_seqid = machine_seqid;
    }

    public String getProject_manager() {
        return project_manager;
    }

    public void setProject_manager(String project_manager) {
        this.project_manager = project_manager;
    }

    public String getInstall_director() {
        return install_director;
    }

    public void setInstall_director(String install_director) {
        this.install_director = install_director;
    }

    public String getInstall_director_phone() {
        return install_director_phone;
    }

    public void setInstall_director_phone(String install_director_phone) {
        this.install_director_phone = install_director_phone;
    }

    public String getApply_type() {
        return apply_type;
    }

    public void setApply_type(String apply_type) {
        this.apply_type = apply_type;
    }

    public Date getOverall_apply_date() {
        return overall_apply_date;
    }

    public void setOverall_apply_date(Date overall_apply_date) {
        this.overall_apply_date = overall_apply_date;
    }

    public Date getOverall_check_date() {
        return overall_check_date;
    }

    public void setOverall_check_date(Date overall_check_date) {
        this.overall_check_date = overall_check_date;
    }

    public Date getDiag_end_date() {
        return diag_end_date;
    }

    public void setDiag_end_date(Date diag_end_date) {
        this.diag_end_date = diag_end_date;
    }

    public String getInstall_logs() {
        return install_logs;
    }

    public void setInstall_logs(String install_logs) {
        this.install_logs = install_logs;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getDiag_report() {
        return diag_report;
    }

    public void setDiag_report(String diag_report) {
        this.diag_report = diag_report;
    }

    public Date getR_check_date() {
        return r_check_date;
    }

    public void setR_check_date(Date r_check_date) {
        this.r_check_date = r_check_date;
    }

    public Date getR_check_start_date_real() {
        return r_check_start_date_real;
    }

    public void setR_check_start_date_real(Date r_check_start_date_real) {
        this.r_check_start_date_real = r_check_start_date_real;
    }

    public Date getR_check_end_date_real() {
        return r_check_end_date_real;
    }

    public void setR_check_end_date_real(Date r_check_end_date_real) {
        this.r_check_end_date_real = r_check_end_date_real;
    }

    public Date getR_check_start_date_schedule() {
        return r_check_start_date_schedule;
    }

    public void setR_check_start_date_schedule(Date r_check_start_date_schedule) {
        this.r_check_start_date_schedule = r_check_start_date_schedule;
    }

    public Date getR_check_end_date_schedule() {
        return r_check_end_date_schedule;
    }

    public void setR_check_end_date_schedule(Date r_check_end_date_schedule) {
        this.r_check_end_date_schedule = r_check_end_date_schedule;
    }

    public String getR_quality_person_id() {
        return r_quality_person_id;
    }

    public void setR_quality_person_id(String r_quality_person_id) {
        this.r_quality_person_id = r_quality_person_id;
    }

    public String getR_quality_person() {
        return r_quality_person;
    }

    public void setR_quality_person(String r_quality_person) {
        this.r_quality_person = r_quality_person;
    }

    public BigDecimal getR_check_result() {
        return r_check_result;
    }

    public void setR_check_result(BigDecimal r_check_result) {
        this.r_check_result = r_check_result;
    }

    public Date getR_acceptance_date() {
        return r_acceptance_date;
    }

    public void setR_acceptance_date(Date r_acceptance_date) {
        this.r_acceptance_date = r_acceptance_date;
    }

    public String getR_recheck_inspector_id() {
        return r_recheck_inspector_id;
    }

    public void setR_recheck_inspector_id(String r_recheck_inspector_id) {
        this.r_recheck_inspector_id = r_recheck_inspector_id;
    }

    public Date getR_recheck_date() {
        return r_recheck_date;
    }

    public void setR_recheck_date(Date r_recheck_date) {
        this.r_recheck_date = r_recheck_date;
    }

    public BigDecimal getR_recheck_result() {
        return r_recheck_result;
    }

    public void setR_recheck_result(BigDecimal r_recheck_result) {
        this.r_recheck_result = r_recheck_result;
    }

    public BigDecimal getR_snd_rectification_days() {
        return r_snd_rectification_days;
    }

    public void setR_snd_rectification_days(BigDecimal r_snd_rectification_days) {
        this.r_snd_rectification_days = r_snd_rectification_days;
    }

    public String getR_trd_check_inspector_id() {
        return r_trd_check_inspector_id;
    }

    public void setR_trd_check_inspector_id(String r_trd_check_inspector_id) {
        this.r_trd_check_inspector_id = r_trd_check_inspector_id;
    }

    public String getR_trd_check_inspector() {
        return r_trd_check_inspector;
    }

    public void setR_trd_check_inspector(String r_trd_check_inspector) {
        this.r_trd_check_inspector = r_trd_check_inspector;
    }

    public Date getR_trd_check_date() {
        return r_trd_check_date;
    }

    public void setR_trd_check_date(Date r_trd_check_date) {
        this.r_trd_check_date = r_trd_check_date;
    }

    public BigDecimal getR_trd_check_result() {
        return r_trd_check_result;
    }

    public void setR_trd_check_result(BigDecimal r_trd_check_result) {
        this.r_trd_check_result = r_trd_check_result;
    }

    public BigDecimal getWrite_back_status() {
        return write_back_status;
    }

    public void setWrite_back_status(BigDecimal write_back_status) {
        this.write_back_status = write_back_status;
    }

    public String getApply_type_code() {
        return apply_type_code;
    }

    public void setApply_type_code(String apply_type_code) {
        this.apply_type_code = apply_type_code;
    }

    public Integer getR_is_before_authority() {
        return r_is_before_authority;
    }

    public void setR_is_before_authority(Integer r_is_before_authority) {
        this.r_is_before_authority = r_is_before_authority;
    }

    public Integer getR_has_built_records() {
        return r_has_built_records;
    }

    public void setR_has_built_records(Integer r_has_built_records) {
        this.r_has_built_records = r_has_built_records;
    }

    public String getCompany_employee_id() {
        return company_employee_id;
    }

    public void setCompany_employee_id(String company_employee_id) {
        this.company_employee_id = company_employee_id;
    }

    public Date getRectification_end_date() {
        return rectification_end_date;
    }

    public void setRectification_end_date(Date rectification_end_date) {
        this.rectification_end_date = rectification_end_date;
    }

    public Date getSnd_rectification_end_date() {
        return snd_rectification_end_date;
    }

    public void setSnd_rectification_end_date(Date snd_rectification_end_date) {
        this.snd_rectification_end_date = snd_rectification_end_date;
    }

    public String getRectification_files() {
        return rectification_files;
    }

    public void setRectification_files(String rectification_files) {
        this.rectification_files = rectification_files;
    }

    public String getR_recheck_inspector() {
        return r_recheck_inspector;
    }

    public void setR_recheck_inspector(String r_recheck_inspector) {
        this.r_recheck_inspector = r_recheck_inspector;
    }

    public BigDecimal getR_rectification_days() {
        return r_rectification_days;
    }

    public void setR_rectification_days(BigDecimal r_rectification_days) {
        this.r_rectification_days = r_rectification_days;
    }

    public Double getR_check_score() {
        return r_check_score;
    }

    public void setR_check_score(Double r_check_score) {
        this.r_check_score = r_check_score;
    }

    public Integer getR_followed_the_plan_date() {
        return r_followed_the_plan_date;
    }

    public void setR_followed_the_plan_date(Integer r_followed_the_plan_date) {
        this.r_followed_the_plan_date = r_followed_the_plan_date;
    }
}
