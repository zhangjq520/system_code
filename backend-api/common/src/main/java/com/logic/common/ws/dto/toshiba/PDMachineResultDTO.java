package com.logic.common.ws.dto.toshiba;

import java.util.Date;

/**
 * Created by albert on 16-2-24.
 */
public class PDMachineResultDTO {

    private String seq_id;
    private String project_id;
    private String project_name;
    private String building_site_address;
    private String machine_no;
    private String machine_kind_id;
    private String brief_spec;
    private String install_region_id;
    private String install_subcompany_name;
    private String install_vendor_id;
    private Date install_start_date;
    private Date install_end_date;
    private Date dispatch_date;
    private String specification;

    
    public String getSeq_id() {
		return seq_id;
	}

	public void setSeq_id(String seq_id) {
		this.seq_id = seq_id;
	}

	public String getProject_id() {
        return project_id;
    }

    public void setProject_id(String project_id) {
        this.project_id = project_id;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public String getBuilding_site_address() {
        return building_site_address;
    }

    public void setBuilding_site_address(String building_site_address) {
        this.building_site_address = building_site_address;
    }

    public String getMachine_no() {
        return machine_no;
    }

    public void setMachine_no(String machine_no) {
        this.machine_no = machine_no;
    }

    public String getMachine_kind_id() {
        return machine_kind_id;
    }

    public void setMachine_kind_id(String machine_kind_id) {
        this.machine_kind_id = machine_kind_id;
    }

    public String getBrief_spec() {
        return brief_spec;
    }

    public void setBrief_spec(String brief_spec) {
        this.brief_spec = brief_spec;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public Date getDispatch_date() {
        return dispatch_date;
    }

    public void setDispatch_date(Date dispatch_date) {
        this.dispatch_date = dispatch_date;
    }

    public Date getInstall_end_date() {
        return install_end_date;
    }

    public void setInstall_end_date(Date install_end_date) {
        this.install_end_date = install_end_date;
    }

    public String getInstall_vendor_id() {
        return install_vendor_id;
    }

    public void setInstall_vendor_id(String install_vendor_id) {
        this.install_vendor_id = install_vendor_id;
    }

    public String getInstall_subcompany_name() {
        return install_subcompany_name;
    }

    public void setInstall_subcompany_name(String install_subcompany_name) {
        this.install_subcompany_name = install_subcompany_name;
    }

    public String getInstall_region_id() {
        return install_region_id;
    }

    public void setInstall_region_id(String install_region_id) {
        this.install_region_id = install_region_id;
    }

    public Date getInstall_start_date() {
        return install_start_date;
    }

    public void setInstall_start_date(Date install_start_date) {
        this.install_start_date = install_start_date;
    }

}
