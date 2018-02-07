package com.logic.common.ws.dto.system;

import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
@ApiModel(description = "Task DTO")
public class TaskDTO {

    @ApiModelProperty(access = "access", allowableValues = "", dataType = "", hidden = true, position = 1)
    private Integer id;

    @ApiModelProperty(value = "Task subject", position = 2)
    private String subject;

    @ApiModelProperty(value = "Task Type", position = 3)
    private String task_type;

    @ApiModelProperty(value = "Task Reference ID", position = 4)
    private Integer task_ref_id;

    @ApiModelProperty(value = "Task Status", position = 5)
    private String status;

    @ApiModelProperty(value = "Task Resolution", position = 6)
    private String resolution;

    @ApiModelProperty(value = "Project No", position = 6, hidden = true)
    private String project_no;

    @ApiModelProperty(value = "Project Name", position = 6, hidden = true)
    private String project_name;

    @ApiModelProperty(value = "Machine No", position = 6, hidden = true)
    private String machine_no;

    @ApiModelProperty(value = "Machine Name", position = 6, hidden = true)
    private String machine_name;

    @ApiModelProperty(value = "Brief spec", position = 6, hidden = true)
    private String machine_brief_spec;

    @ApiModelProperty(value = "Site address", position = 6, hidden = true)
    private String site_address;

    @ApiModelProperty(value = "Installation Sub-company Name", position = 6, hidden = true)
    private String install_subcompany_name;

    @ApiModelProperty(value = "Project Manager", position = 7, hidden = true)
    private String project_manager;

    @ApiModelProperty(value = "Emphasis Flag", position = 8, hidden = true)
    private String emphasis_flag;

    @ApiModelProperty(value = "Apply Type", position = 9, hidden = true)
    private String apply_type;

    @ApiModelProperty(value = "Valid status list for this task to be able to set", position = 10, hidden = true)
    private String valid_status_list;

    @ApiModelProperty(value = "Task priority", position = 11, hidden = false)
    private String task_priority;

    @ApiModelProperty(value = "Task assign type", position = 12, hidden = false)
    private String task_assign_type;

    @ApiModelProperty(value = "Install Vendor Name", position = 13, hidden = true)
    private String install_vendor_name;

    @ApiModelProperty(value = "Machine Kind Id", position = 14, hidden = true)
    private Integer machine_kind_id;

    @ApiModelProperty(value = "Task people", position = 50, hidden = false)
    private List<TaskPeopleDTO> task_people;

    @ApiModelProperty(value = "Task dates", position = 51, hidden = false)
    private List<TaskDateDTO> task_dates;

    @ApiModelProperty(value = "Task comments", position = 52, hidden = false)
    private List<TaskCommentDTO> task_comments;

    @ApiModelProperty(value = "Task forms", position = 53, hidden = false)
    private List<TaskFormDTO> task_forms;

    @ApiModelProperty(value = "Task logs", position = 54, hidden = true)
    private List<TaskLogRootDTO> task_logs;

    @ApiModelProperty(value = "Task Details", position = 55, hidden = true)

    private String install_subcompany_id;

    private String install_region_name;

    private String machine_kind_name;

    private Double point;

    private Double total_point;

    private Object task_details;

    private String apply_type_code;

    private String org_id;

    private Integer is_passed;

    private String diag_vendor_id;

    private String diag_vendor_name;

    private String install_director;

    private String half_install_director_phone;

    private String login_id;

    
    private String r_mid_quality_person;
    
    private String r_mid_quality_person_id;
    
    private String r_mid_start_date;
    
    private String r_mid_acceptance_date;
    
    private String r_mid_quality_score;
    
    private String r_mid_rectification_days;
    
    private String r_mid_check_result;
    
    private String r_mid_end_date;
    
    private String r_mid_recheck_score;
    
    private String r_mid_recheck_date;
    
    private String r_mid_recheck_inspector;
    
    private String r_mid_recheck_inspector_id;
    
    private String r_mid_recheck_result;
    
    private String r_quality_person;

    private String r_quality_person_id;

    private String r_check_date;

    private String r_check_score;

    private String r_rectification_days;

    private String r_check_result;

    private String r_check_start_date_real;

    private String r_check_end_date_real;

    private String r_check_start_date_schedule;

    private String r_check_end_date_schedule;

    private String r_followed_the_plan_date;

    private String r_recheck_date;

    private String r_recheck_result;

    private String r_recheck_inspector;

    private String r_recheck_inspector_id;

    private String r_snd_rectification_days;

    private String r_trd_check_date;

    private String r_trd_check_result;

    private String r_trd_check_inspector;

    private String r_trd_check_inspector_id;


    public String getR_mid_quality_person() {
		return r_mid_quality_person;
	}

	public void setR_mid_quality_person(String r_mid_quality_person) {
		this.r_mid_quality_person = r_mid_quality_person;
	}

	public String getR_mid_quality_person_id() {
		return r_mid_quality_person_id;
	}

	public void setR_mid_quality_person_id(String r_mid_quality_person_id) {
		this.r_mid_quality_person_id = r_mid_quality_person_id;
	}

	public String getR_mid_start_date() {
		return r_mid_start_date;
	}

	public void setR_mid_start_date(String r_mid_start_date) {
		this.r_mid_start_date = r_mid_start_date;
	}

	public String getR_mid_acceptance_date() {
		return r_mid_acceptance_date;
	}

	public void setR_mid_acceptance_date(String r_mid_acceptance_date) {
		this.r_mid_acceptance_date = r_mid_acceptance_date;
	}

	public String getR_mid_quality_score() {
		return r_mid_quality_score;
	}

	public void setR_mid_quality_score(String r_mid_quality_score) {
		this.r_mid_quality_score = r_mid_quality_score;
	}

	public String getR_mid_rectification_days() {
		return r_mid_rectification_days;
	}

	public void setR_mid_rectification_days(String r_mid_rectification_days) {
		this.r_mid_rectification_days = r_mid_rectification_days;
	}

	public String getR_mid_check_result() {
		return r_mid_check_result;
	}

	public void setR_mid_check_result(String r_mid_check_result) {
		this.r_mid_check_result = r_mid_check_result;
	}

	public String getR_mid_end_date() {
		return r_mid_end_date;
	}

	public void setR_mid_end_days(String r_mid_end_date) {
		this.r_mid_end_date = r_mid_end_date;
	}

	public String getR_mid_recheck_score() {
		return r_mid_recheck_score;
	}

	public void setR_mid_recheck_score(String r_mid_recheck_score) {
		this.r_mid_recheck_score = r_mid_recheck_score;
	}

	public String getR_mid_recheck_date() {
		return r_mid_recheck_date;
	}

	public void setR_mid_recheck_date(String r_mid_recheck_date) {
		this.r_mid_recheck_date = r_mid_recheck_date;
	}

	public String getR_mid_recheck_inspector() {
		return r_mid_recheck_inspector;
	}

	public void setR_mid_recheck_inspector(String r_mid_recheck_inspector) {
		this.r_mid_recheck_inspector = r_mid_recheck_inspector;
	}

	public String getR_mid_recheck_inspector_id() {
		return r_mid_recheck_inspector_id;
	}

	public void setR_mid_recheck_inspector_id(String r_mid_recheck_inspector_id) {
		this.r_mid_recheck_inspector_id = r_mid_recheck_inspector_id;
	}

	public String getR_mid_recheck_result() {
		return r_mid_recheck_result;
	}

	public void setR_mid_recheck_result(String r_mid_recheck_result) {
		this.r_mid_recheck_result = r_mid_recheck_result;
	}

	public String getR_quality_person() {
		return r_quality_person;
	}

	public void setR_quality_person(String r_quality_person) {
		this.r_quality_person = r_quality_person;
	}

	public String getR_quality_person_id() {
		return r_quality_person_id;
	}

	public void setR_quality_person_id(String r_quality_person_id) {
		this.r_quality_person_id = r_quality_person_id;
	}

	public String getR_check_date() {
		return r_check_date;
	}

	public void setR_check_date(String r_check_date) {
		this.r_check_date = r_check_date;
	}

	public String getR_check_score() {
		return r_check_score;
	}

	public void setR_check_score(String r_check_score) {
		this.r_check_score = r_check_score;
	}

	public String getR_rectification_days() {
		return r_rectification_days;
	}

	public void setR_rectification_days(String r_rectification_days) {
		this.r_rectification_days = r_rectification_days;
	}

	public String getR_check_result() {
		return r_check_result;
	}

	public void setR_check_result(String r_check_result) {
		this.r_check_result = r_check_result;
	}

	public String getR_check_start_date_real() {
		return r_check_start_date_real;
	}

	public void setR_check_start_date_real(String r_check_start_date_real) {
		this.r_check_start_date_real = r_check_start_date_real;
	}

	public String getR_check_end_date_real() {
		return r_check_end_date_real;
	}

	public void setR_check_end_date_real(String r_check_end_date_real) {
		this.r_check_end_date_real = r_check_end_date_real;
	}

	public String getR_check_start_date_schedule() {
		return r_check_start_date_schedule;
	}

	public void setR_check_start_date_schedule(String r_check_start_date_schedule) {
		this.r_check_start_date_schedule = r_check_start_date_schedule;
	}

	public String getR_check_end_date_schedule() {
		return r_check_end_date_schedule;
	}

	public void setR_check_end_date_schedule(String r_check_end_date_schedule) {
		this.r_check_end_date_schedule = r_check_end_date_schedule;
	}

	public String getR_followed_the_plan_date() {
		return r_followed_the_plan_date;
	}

	public void setR_followed_the_plan_date(String r_followed_the_plan_date) {
		this.r_followed_the_plan_date = r_followed_the_plan_date;
	}

	public String getR_recheck_date() {
		return r_recheck_date;
	}

	public void setR_recheck_date(String r_recheck_date) {
		this.r_recheck_date = r_recheck_date;
	}

	public String getR_recheck_result() {
		return r_recheck_result;
	}

	public void setR_recheck_result(String r_recheck_result) {
		this.r_recheck_result = r_recheck_result;
	}

	public String getR_recheck_inspector() {
		return r_recheck_inspector;
	}

	public void setR_recheck_inspector(String r_recheck_inspector) {
		this.r_recheck_inspector = r_recheck_inspector;
	}

	public String getR_recheck_inspector_id() {
		return r_recheck_inspector_id;
	}

	public void setR_recheck_inspector_id(String r_recheck_inspector_id) {
		this.r_recheck_inspector_id = r_recheck_inspector_id;
	}

	public String getR_snd_rectification_days() {
		return r_snd_rectification_days;
	}

	public void setR_snd_rectification_days(String r_snd_rectification_days) {
		this.r_snd_rectification_days = r_snd_rectification_days;
	}

	public String getR_trd_check_date() {
		return r_trd_check_date;
	}

	public void setR_trd_check_date(String r_trd_check_date) {
		this.r_trd_check_date = r_trd_check_date;
	}

	public String getR_trd_check_result() {
		return r_trd_check_result;
	}

	public void setR_trd_check_result(String r_trd_check_result) {
		this.r_trd_check_result = r_trd_check_result;
	}

	public String getR_trd_check_inspector() {
		return r_trd_check_inspector;
	}

	public void setR_trd_check_inspector(String r_trd_check_inspector) {
		this.r_trd_check_inspector = r_trd_check_inspector;
	}

	public String getR_trd_check_inspector_id() {
		return r_trd_check_inspector_id;
	}

	public void setR_trd_check_inspector_id(String r_trd_check_inspector_id) {
		this.r_trd_check_inspector_id = r_trd_check_inspector_id;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTask_type() {
        return task_type;
    }

    public void setTask_type(String task_type) {
        this.task_type = task_type;
    }

    public Integer getTask_ref_id() {
        return task_ref_id;
    }

    public void setTask_ref_id(Integer task_ref_id) {
        this.task_ref_id = task_ref_id;
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

    public String getProject_no() {
        return project_no;
    }

    public void setProject_no(String project_no) {
        this.project_no = project_no;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public String getMachine_no() {
        return machine_no;
    }

    public void setMachine_no(String machine_no) {
        this.machine_no = machine_no;
    }

    public String getMachine_name() {
        return machine_name;
    }

    public void setMachine_name(String machine_name) {
        this.machine_name = machine_name;
    }

    public String getMachine_brief_spec() {
        return machine_brief_spec;
    }

    public void setMachine_brief_spec(String machine_brief_spec) {
        this.machine_brief_spec = machine_brief_spec;
    }

    public String getSite_address() {
        return site_address;
    }

    public void setSite_address(String site_address) {
        this.site_address = site_address;
    }

    public String getInstall_subcompany_name() {
        return install_subcompany_name;
    }

    public void setInstall_subcompany_name(String install_subcompany_name) {
        this.install_subcompany_name = install_subcompany_name;
    }

    public String getProject_manager() {
        return project_manager;
    }

    public void setProject_manager(String project_manager) {
        this.project_manager = project_manager;
    }

    public String getTask_priority() {
        return task_priority;
    }

    public void setTask_priority(String task_priority) {
        this.task_priority = task_priority;
    }

    public String getTask_assign_type() {
        return task_assign_type;
    }

    public void setTask_assign_type(String task_assign_type) {
        this.task_assign_type = task_assign_type;
    }

    public List<TaskPeopleDTO> getTask_people() {
        return task_people;
    }

    public void setTask_people(List<TaskPeopleDTO> task_people) {
        this.task_people = task_people;
    }

    public List<TaskDateDTO> getTask_dates() {
        return task_dates;
    }

    public void setTask_dates(List<TaskDateDTO> task_dates) {
        this.task_dates = task_dates;
    }

    public List<TaskCommentDTO> getTask_comments() {
        return task_comments;
    }

    public void setTask_comments(List<TaskCommentDTO> task_comments) {
        this.task_comments = task_comments;
    }

    public List<TaskFormDTO> getTask_forms() {
        return task_forms;
    }

    public void setTask_forms(List<TaskFormDTO> task_forms) {
        this.task_forms = task_forms;
    }

    public List<TaskLogRootDTO> getTask_logs() {
        return task_logs;
    }

    public void setTask_logs(List<TaskLogRootDTO> task_logs) {
        this.task_logs = task_logs;
    }

    public Object getTask_details() {
        return task_details;
    }

    public void setTask_details(Object task_details) {
        this.task_details = task_details;
    }

    public String getEmphasis_flag() {
        return emphasis_flag;
    }

    public void setEmphasis_flag(String emphasis_flag) {
        this.emphasis_flag = emphasis_flag;
    }

    public String getApply_type() {
        return apply_type;
    }

    public void setApply_type(String apply_type) {
        this.apply_type = apply_type;
    }

    public String getValid_status_list() {
        return valid_status_list;
    }

    public void setValid_status_list(String valid_status_list) {
        this.valid_status_list = valid_status_list;
    }

    public String getInstall_vendor_name() {
        return install_vendor_name;
    }

    public void setInstall_vendor_name(String install_vendor_name) {
        this.install_vendor_name = install_vendor_name;
    }

    public Integer getMachine_kind_id() {
        return machine_kind_id;
    }

    public void setMachine_kind_id(Integer machine_kind_id) {
        this.machine_kind_id = machine_kind_id;
    }

    public String getOrg_id() {
        return org_id;
    }

    public void setOrg_id(String org_id) {
        this.org_id = org_id;
    }

    public String getApply_type_code() {
        return apply_type_code;
    }

    public void setApply_type_code(String apply_type_code) {
        this.apply_type_code = apply_type_code;
    }


    public String getInstall_region_name() {
        return install_region_name;
    }

    public void setInstall_region_name(String install_region_name) {
        this.install_region_name = install_region_name;
    }

    public String getMachine_kind_name() {
        return machine_kind_name;
    }

    public void setMachine_kind_name(String machine_kind_name) {
        this.machine_kind_name = machine_kind_name;
    }

    public Double getPoint() {
        return point;
    }

    public void setPoint(Double point) {
        this.point = point;
    }

    public Integer getIs_passed() {
        return is_passed;
    }

    public void setIs_passed(Integer is_passed) {
        this.is_passed = is_passed;
    }

    public String getDiag_vendor_id() {
        return diag_vendor_id;
    }

    public void setDiag_vendor_id(String diag_vendor_id) {
        this.diag_vendor_id = diag_vendor_id;
    }

    public String getDiag_vendor_name() {
        return diag_vendor_name;
    }

    public void setDiag_vendor_name(String diag_vendor_name) {
        this.diag_vendor_name = diag_vendor_name;
    }

    public Double getTotal_point() {
        return total_point;
    }

    public void setTotal_point(Double total_point) {
        this.total_point = total_point;
    }

    public String getInstall_subcompany_id() {
        return install_subcompany_id;
    }

    public void setInstall_subcompany_id(String install_subcompany_id) {
        this.install_subcompany_id = install_subcompany_id;
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

    public String getLogin_id() {
        return login_id;
    }

    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TaskDTO taskDTO = (TaskDTO) o;

        return id.equals(taskDTO.id);

    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

	@Override
	public String toString() {
		return "TaskDTO [id=" + id + ", subject=" + subject + ", task_type=" + task_type + ", task_ref_id="
				+ task_ref_id + ", status=" + status + ", resolution=" + resolution + ", project_no=" + project_no
				+ ", project_name=" + project_name + ", machine_no=" + machine_no + ", machine_name=" + machine_name
				+ ", machine_brief_spec=" + machine_brief_spec + ", site_address=" + site_address
				+ ", install_subcompany_name=" + install_subcompany_name + ", project_manager=" + project_manager
				+ ", emphasis_flag=" + emphasis_flag + ", apply_type=" + apply_type + ", valid_status_list="
				+ valid_status_list + ", task_priority=" + task_priority + ", task_assign_type=" + task_assign_type
				+ ", install_vendor_name=" + install_vendor_name + ", machine_kind_id=" + machine_kind_id
				+ ", task_people=" + task_people + ", task_dates=" + task_dates + ", task_comments=" + task_comments
				+ ", task_forms=" + task_forms + ", task_logs=" + task_logs + ", install_subcompany_id="
				+ install_subcompany_id + ", install_region_name=" + install_region_name + ", machine_kind_name="
				+ machine_kind_name + ", point=" + point + ", total_point=" + total_point + ", task_details="
				+ task_details + ", apply_type_code=" + apply_type_code + ", org_id=" + org_id + ", is_passed="
				+ is_passed + ", diag_vendor_id=" + diag_vendor_id + ", diag_vendor_name=" + diag_vendor_name + "]";
	}
    
    
}
