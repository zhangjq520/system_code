package com.logic.common.ws.dto.toshiba;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
@ApiModel(description = "Request Middle Check DTO")
public class PDRequestMiddleCheckDTO {

    // TODO write back status is missing
    private String company_employee_id;
    @ApiModelProperty(name = "id", value = "It's required when add, but not required when update", required = false, position = 1)
    private BigDecimal id;

    @ApiModelProperty(name = "machine_seqid", value = "Machine Sequence id", required = false, position = 2)
    private Integer machine_seqid;

    @ApiModelProperty(name = "project_manager", value = "Project Manager", example = "RONNIE", required = false, position = 3)
    private String project_manager;

    @ApiModelProperty(name = "install_director", value = "Installation director", required = false, position = 5)
    private String install_director;

    @ApiModelProperty(name = "half_install_director_phone", value = "Installation director phone number", required = false, position = 6)
    private String half_install_director_phone;

    @ApiModelProperty(name = "apply_type", value = "Application Type", required = false, position = 7)
    private String apply_type;

    @ApiModelProperty(name = "check_phases", value = "Check stage", required = false, position = 8)
    private String check_phases;

    @ApiModelProperty(name = "apply_date", value = "Seized the filing date", required = false, position = 9)
    private Date apply_date;

    @ApiModelProperty(name = "install_start_real_date", value = "Installation start date", required = false, position = 10)
    private Date install_start_real_date;

    @ApiModelProperty(name = "schedule_date", value = "Hope walkthrough inspection day", required = false, position = 11)
    private Date schedule_date;

    @ApiModelProperty(name = "install_logs", value = "Logs of Installation", required = false, position = 12)
    private String install_logs;

    @ApiModelProperty(name = "notes", value = "Important Notice", required = false, position = 13)
    private String notes;

    @ApiModelProperty(name = "r_mid_quality_person_id", value = "The inspector Id", required = false, position = 14)
    private String r_mid_quality_person_id;

    @ApiModelProperty(name = "r_mid_quality_person", value = "The inspector", required = false, position = 15)
    private String r_mid_quality_person;

    @ApiModelProperty(name = "r_mid_quality_score", value = "Seized scores", required = false, position = 16)
    private BigDecimal r_mid_quality_score;

    @ApiModelProperty(name = "r_mid_end_date", value = "Inspection completion date", required = false, position = 17)
    private Date r_mid_end_date;

    @ApiModelProperty(name = "r_mid_acceptance_date", value = "Settlement day in test", required = false, position = 18)
    private Date r_mid_acceptance_date;

    @ApiModelProperty(name = "r_mid_check_result", value = "Inspection results: 0 not pass; 1- through", required = false, position = 19)
    private BigDecimal r_mid_check_result;

    @ApiModelProperty(name = "r_mid_rectification_days", value = "Corrective seized a few days", required = false, position = 20)
    private BigDecimal r_mid_rectification_days;

    @ApiModelProperty(name = "r_mid_recheck_inspector_id", value = "Review inspector", required = false, position = 21)
    private String r_mid_recheck_inspector_id;

    @ApiModelProperty(name = "r_mid_recheck_inspector", value = "Review inspector", required = false, position = 22)
    private String r_mid_recheck_inspector;

    @ApiModelProperty(name = "r_mid_recheck_date", value = "Intermediate review the day", required = false, position = 23)
    private Date r_mid_recheck_date;

    @ApiModelProperty(name = "r_mid_recheck_score", value = "Intermediate review score", required = false, position = 24)
    private BigDecimal r_mid_recheck_score;

    @ApiModelProperty(name = "r_mid_recheck_result", value = "Review the inspection results: 0 not pass; 1- through", required = false, position = 25)
    private BigDecimal r_mid_recheck_result;

    @ApiModelProperty(name = "write_back_status", value = "Write back status: 0 not pass; 1- through", required = false, position = 26)
    private BigDecimal write_back_status;

    @ApiModelProperty(name = "apply_type_code", value = "Application Type Code", required = false, position = 27)
    private String apply_type_code;

    @ApiModelProperty(name = "r_mid_start_date", value = "Inspection Start date", required = false, position = 28)
    private Date r_mid_start_date;
    
    @ApiModelProperty(name = "self_check_result", required = false, position = 29)
    private String self_check_result;
    
    @ApiModelProperty(name = "qualityApplyStatus", required = false, position = 30)
    private String qualityApplyStatus;
    
    @ApiModelProperty(name = "qualityApplyWorkID", required = false, position = 31)
    private String qualityApplyWorkID;

    public String getQualityApplyStatus() {
		return qualityApplyStatus;
	}

	public void setQualityApplyStatus(String qualityApplyStatus) {
		this.qualityApplyStatus = qualityApplyStatus;
	}

	public String getQualityApplyWorkID() {
		return qualityApplyWorkID;
	}

	public void setQualityApplyWorkID(String qualityApplyWorkID) {
		this.qualityApplyWorkID = qualityApplyWorkID;
	}

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

    public String getHalf_install_director_phone() {
        return half_install_director_phone;
    }

    public void setHalf_install_director_phone(String half_install_director_phone) {
        this.half_install_director_phone = half_install_director_phone;
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

    public Date getApply_date() {
        return apply_date;
    }

    public void setApply_date(Date apply_date) {
        this.apply_date = apply_date;
    }

    public Date getInstall_start_real_date() {
        return install_start_real_date;
    }

    public void setInstall_start_real_date(Date install_start_real_date) {
        this.install_start_real_date = install_start_real_date;
    }

    public Date getSchedule_date() {
        return schedule_date;
    }

    public void setSchedule_date(Date schedule_date) {
        this.schedule_date = schedule_date;
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

    public String getR_mid_quality_person_id() {
        return r_mid_quality_person_id;
    }

    public void setR_mid_quality_person_id(String r_mid_quality_person_id) {
        this.r_mid_quality_person_id = r_mid_quality_person_id;
    }

    public String getR_mid_quality_person() {
        return r_mid_quality_person;
    }

    public void setR_mid_quality_person(String r_mid_quality_person) {
        this.r_mid_quality_person = r_mid_quality_person;
    }

    public BigDecimal getR_mid_quality_score() {
        return r_mid_quality_score;
    }

    public void setR_mid_quality_score(BigDecimal r_mid_quality_score) {
        this.r_mid_quality_score = r_mid_quality_score;
    }

    public Date getR_mid_end_date() {
        return r_mid_end_date;
    }

    public void setR_mid_end_date(Date r_mid_end_date) {
        this.r_mid_end_date = r_mid_end_date;
    }

    public Date getR_mid_acceptance_date() {
        return r_mid_acceptance_date;
    }

    public void setR_mid_acceptance_date(Date r_mid_acceptance_date) {
        this.r_mid_acceptance_date = r_mid_acceptance_date;
    }

    public BigDecimal getR_mid_check_result() {
        return r_mid_check_result;
    }

    public void setR_mid_check_result(BigDecimal r_mid_check_result) {
        this.r_mid_check_result = r_mid_check_result;
    }

    public BigDecimal getR_mid_rectification_days() {
        return r_mid_rectification_days;
    }

    public void setR_mid_rectification_days(BigDecimal r_mid_rectification_days) {
        this.r_mid_rectification_days = r_mid_rectification_days;
    }

    public String getR_mid_recheck_inspector_id() {
        return r_mid_recheck_inspector_id;
    }

    public void setR_mid_recheck_inspector_id(String r_mid_recheck_inspector_id) {
        this.r_mid_recheck_inspector_id = r_mid_recheck_inspector_id;
    }

    public String getR_mid_recheck_inspector() {
        return r_mid_recheck_inspector;
    }

    public void setR_mid_recheck_inspector(String r_mid_recheck_inspector) {
        this.r_mid_recheck_inspector = r_mid_recheck_inspector;
    }

    public Date getR_mid_recheck_date() {
        return r_mid_recheck_date;
    }

    public void setR_mid_recheck_date(Date r_mid_recheck_date) {
        this.r_mid_recheck_date = r_mid_recheck_date;
    }

    public BigDecimal getR_mid_recheck_score() {
        return r_mid_recheck_score;
    }

    public void setR_mid_recheck_score(BigDecimal r_mid_recheck_score) {
        this.r_mid_recheck_score = r_mid_recheck_score;
    }

    public BigDecimal getR_mid_recheck_result() {
        return r_mid_recheck_result;
    }

    public void setR_mid_recheck_result(BigDecimal r_mid_recheck_result) {
        this.r_mid_recheck_result = r_mid_recheck_result;
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

    public Date getR_mid_start_date() {
        return r_mid_start_date;
    }

    public void setR_mid_start_date(Date r_mid_start_date) {
        this.r_mid_start_date = r_mid_start_date;
    }

    public String getSelf_check_result() {
        return self_check_result;
    }

    public void setSelf_check_result(String self_check_result) {
        this.self_check_result = self_check_result;
    }

    public String getCompany_employee_id() {
        return company_employee_id;
    }

    public void setCompany_employee_id(String company_employee_id) {
        this.company_employee_id = company_employee_id;
    }
}
