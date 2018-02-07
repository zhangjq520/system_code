package com.logic.common.ws.dto.toshiba;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Author: omer 
 * Date  : 14-12-2015
 */
@ApiModel(description = "Request Diagnosis DTO")
public class PDRequestDiagDTO {

    @ApiModelProperty(name = "id", value = "It's required when add, but not required when update", required = false, position = 1)
    private BigDecimal id;

    @ApiModelProperty(name = "machine_seqid", value = "Machine Seq Id", required = false, position = 2)
    private Integer machine_seqid;

    @ApiModelProperty(name = "project_manager", value = "Project Manager", example = "RONNIE", required = false, position = 3)
    private String project_manager;

    @ApiModelProperty(name = "diag_side", value = "Diagnosis side", required = false, position = 4)
    private String diag_side;

    @ApiModelProperty(name = "diag_vendor_id", value = "Diagnosis agency id", required = false, position = 5)
    private String diag_vendor_id;

    @ApiModelProperty(name = "w_106", value = "Product load weight", required = false, position = 6)
    private String w_106;

    @ApiModelProperty(name = "w_108", value = "Rated speed", required = false, position = 7)
    private String w_108;

    @ApiModelProperty(name = "w_255", value = "Traction machine model", required = false, position = 8)
    private String w_255;

    @ApiModelProperty(name = "w_252", value = "Motor", required = false, position = 9)
    private String w_252;

    @ApiModelProperty(name = "w_a153", value = "Entrance direction", required = false, position = 10)
    private String w_a153;

    @ApiModelProperty(name = "w_256", value = "Main cable (A22)", required = false, position = 11)
    private String w_256;

    @ApiModelProperty(name = "w_257", value = "Main cable (A23)", required = false, position = 12)
    private String w_257;

    @ApiModelProperty(name = "w_429", value = "Lift stroke", required = false, position = 13)
    private String w_429;

    @ApiModelProperty(name = "w_271", value = "Governor steel cable", required = false, position = 14)
    private String w_271;

    @ApiModelProperty(name = "w_259", value = "The interior dimensions (depth)", required = false, position = 15)
    private String w_259;

    @ApiModelProperty(name = "w_258", value = "Cabin size (width)", required = false, position = 16)
    private String w_258;

    @ApiModelProperty(name = "w_508", value = "Entrance dimensions (width)'", required = false, position = 17)
    private String w_508;

    @ApiModelProperty(name = "w_531", value = "Entrance dimensions (height)", required = false, position = 18)
    private String w_531;

    private String w_109;
    private String w_272;
    private String w610_s;
    private String w610_e;

    private Date apply_date;
    private String company_employee_id;

    @ApiModelProperty(name = "apply_type", value = "Diagnosis Application Category", required = false, position = 19)
    private String apply_type;

    @ApiModelProperty(name = "r_diag_act_start_date", value = "Diagnosis Application start date", required = false, position = 20)
    private Date r_diag_act_start_date;

    @ApiModelProperty(name = "r_diag_act_end_date", value = "Diagnosis Application end date", required = false, position = 21)
    private Date r_diag_act_end_date;

    @ApiModelProperty(name = "write_back_status", value = "Write back status", required = false, position = 22)
    private BigDecimal write_back_status;

    @ApiModelProperty(name = "apply_type_code", value = "Application Type Code", required = false, position = 23)
    private String apply_type_code;

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

    public String getDiag_side() {
        return diag_side;
    }

    public void setDiag_side(String diag_side) {
        this.diag_side = diag_side;
    }

    public String getDiag_vendor_id() {
        return diag_vendor_id;
    }

    public void setDiag_vendor_id(String diag_vendor_id) {
        this.diag_vendor_id = diag_vendor_id;
    }

    public String getW_106() {
        return w_106;
    }

    public void setW_106(String w_106) {
        this.w_106 = w_106;
    }

    public String getW_108() {
        return w_108;
    }

    public void setW_108(String w_108) {
        this.w_108 = w_108;
    }

    public String getW_255() {
        return w_255;
    }

    public void setW_255(String w_255) {
        this.w_255 = w_255;
    }

    public String getW_252() {
        return w_252;
    }

    public void setW_252(String w_252) {
        this.w_252 = w_252;
    }

    public String getW_a153() {
        return w_a153;
    }

    public void setW_a153(String w_a153) {
        this.w_a153 = w_a153;
    }

    public String getW_256() {
        return w_256;
    }

    public void setW_256(String w_256) {
        this.w_256 = w_256;
    }

    public String getW_257() {
        return w_257;
    }

    public void setW_257(String w_257) {
        this.w_257 = w_257;
    }

    public String getW_429() {
        return w_429;
    }

    public void setW_429(String w_429) {
        this.w_429 = w_429;
    }

    public String getW_271() {
        return w_271;
    }

    public void setW_271(String w_271) {
        this.w_271 = w_271;
    }

    public String getW_259() {
        return w_259;
    }

    public void setW_259(String w_259) {
        this.w_259 = w_259;
    }

    public String getW_258() {
        return w_258;
    }

    public void setW_258(String w_258) {
        this.w_258 = w_258;
    }

    public String getW_508() {
        return w_508;
    }

    public void setW_508(String w_508) {
        this.w_508 = w_508;
    }

    public String getW_531() {
        return w_531;
    }

    public void setW_531(String w_531) {
        this.w_531 = w_531;
    }

    public String getApply_type() {
        return apply_type;
    }

    public void setApply_type(String apply_type) {
        this.apply_type = apply_type;
    }

    public Date getR_diag_act_start_date() {
        return r_diag_act_start_date;
    }

    public void setR_diag_act_start_date(Date r_diag_act_start_date) {
        this.r_diag_act_start_date = r_diag_act_start_date;
    }

    public Date getR_diag_act_end_date() {
        return r_diag_act_end_date;
    }

    public void setR_diag_act_end_date(Date r_diag_act_end_date) {
        this.r_diag_act_end_date = r_diag_act_end_date;
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

    public String getW_109() {
        return w_109;
    }

    public void setW_109(String w_109) {
        this.w_109 = w_109;
    }

    public String getW_272() {
        return w_272;
    }

    public void setW_272(String w_272) {
        this.w_272 = w_272;
    }

    public String getW610_s() {
        return w610_s;
    }

    public void setW610_s(String w610_s) {
        this.w610_s = w610_s;
    }

    public String getW610_e() {
        return w610_e;
    }

    public void setW610_e(String w610_e) {
        this.w610_e = w610_e;
    }

    public Date getApply_date() {
        return apply_date;
    }

    public void setApply_date(Date apply_date) {
        this.apply_date = apply_date;
    }

    public String getCompany_employee_id() {
        return company_employee_id;
    }

    public void setCompany_employee_id(String company_employee_id) {
        this.company_employee_id = company_employee_id;
    }
}
