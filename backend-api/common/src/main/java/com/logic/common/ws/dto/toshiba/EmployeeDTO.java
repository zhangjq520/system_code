package com.logic.common.ws.dto.toshiba;

import io.swagger.annotations.ApiModelProperty;

public class EmployeeDTO {

	@ApiModelProperty(name = "eid", value = "eid", required = true, position = 1)
	private String eid;

	@ApiModelProperty(name = "badge", value = "badge", required = false, position = 2)
	private String badge;

	@ApiModelProperty(name = "ecode", value = "ecode", required = true, position = 3)
	private String ecode;

	@ApiModelProperty(name = "name", value = "name", required = false, position = 4)
	private String name;

	@ApiModelProperty(name = "spellname", value = "spellname", required = false, position = 5)
	private String spellname;

	@ApiModelProperty(name = "compid", value = "compid", required = false, position = 6)
	private String compid;

	@ApiModelProperty(name = "depid", value = "depid", required = true, position = 7)
	private String depid;

	@ApiModelProperty(name = "zbid", value = "zbid", required = false, position = 8)
	private String zbid;

	@ApiModelProperty(name = "bmid", value = "bmid", required = false, position = 9)
	private String bmid;

	@ApiModelProperty(name = "ksid", value = "ksid", required = false, position = 10)
	private String ksid;

	@ApiModelProperty(name = "zuid", value = "zuid", required = false, position = 11)
	private String zuid;

	@ApiModelProperty(name = "email", value = "email", required = false, position = 12)
	private String email;

	@ApiModelProperty(name = "unid", value = "unid", required = false, position = 13)
	private String unid;

	@ApiModelProperty(name = "unaccount", value = "unaccount", required = false, position = 14)
	private String unaccount;

	@ApiModelProperty(name = "isdisabled", value = "isdisabled", required = false, position = 15)
	private Integer isdisabled;

	@ApiModelProperty(name = "reportto", value = "reportto", required = false, position = 16)
	private String reportto;

	@ApiModelProperty(name = "workplace1", value = "workplace1", required = false, position = 17)
	private String workplace1;

	@ApiModelProperty(name = "xremark", value = "xremark", required = false, position = 18)
	private String xremark;

	@ApiModelProperty(name = "ename", value = "ename", required = false, position = 19)
	private String ename;

	@ApiModelProperty(name = "jobgrade", value = "jobgrade", required = false, position = 20)
	private Integer jobgrade;

	@ApiModelProperty(name = "workplace", value = "workplace", required = false, position = 15)
	private String workplace;

	@ApiModelProperty(name = "jobid", value = "jobid", required = false, position = 15)
	private String jobid;

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getBadge() {
		return badge;
	}

	public void setBadge(String badge) {
		this.badge = badge;
	}

	public String getEcode() {
		return ecode;
	}

	public void setEcode(String ecode) {
		this.ecode = ecode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpellname() {
		return spellname;
	}

	public void setSpellname(String spellname) {
		this.spellname = spellname;
	}

	public String getCompid() {
		return compid;
	}

	public void setCompid(String compid) {
		this.compid = compid;
	}

	public String getDepid() {
		return depid;
	}

	public void setDepid(String depid) {
		this.depid = depid;
	}

	public String getZbid() {
		return zbid;
	}

	public void setZbid(String zbid) {
		this.zbid = zbid;
	}

	public String getBmid() {
		return bmid;
	}

	public void setBmid(String bmid) {
		this.bmid = bmid;
	}

	public String getKsid() {
		return ksid;
	}

	public void setKsid(String ksid) {
		this.ksid = ksid;
	}

	public String getZuid() {
		return zuid;
	}

	public void setZuid(String zuid) {
		this.zuid = zuid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUnid() {
		return unid;
	}

	public void setUnid(String unid) {
		this.unid = unid;
	}

	public String getUnaccount() {
		return unaccount;
	}

	public void setUnaccount(String unaccount) {
		this.unaccount = unaccount;
	}

	public Integer getIsdisabled() {
		return isdisabled;
	}

	public void setIsdisabled(Integer isdisabled) {
		this.isdisabled = isdisabled;
	}

	public String getReportto() {
		return reportto;
	}

	public void setReportto(String reportto) {
		this.reportto = reportto;
	}

	public String getWorkplace1() {
		return workplace1;
	}

	public void setWorkplace1(String workplace1) {
		this.workplace1 = workplace1;
	}

	public String getXremark() {
		return xremark;
	}

	public void setXremark(String xremark) {
		this.xremark = xremark;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Integer getJobgrade() {
		return jobgrade;
	}

	public void setJobgrade(Integer jobgrade) {
		this.jobgrade = jobgrade;
	}

	public String getWorkplace() {
		return workplace;
	}

	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}

	public String getJobid() {
		return jobid;
	}

	public void setJobid(String jobid) {
		this.jobid = jobid;
	}

}
