package com.logic.common.ws.dto.system;

/**
 * Created by albert on 16-3-9.
 */
public class MachineCheckResultDTO {
    private Integer machine_seq_id;
    private Double middle_check_point;
    private Integer is_middle_check_passed;
    private Double overall_check_point;
    private Integer is_overall_check_passed;

    private String diag_apply_type;

    public Integer getMachine_seq_id() {
        return machine_seq_id;
    }

    public void setMachine_seq_id(Integer machine_seq_id) {
        this.machine_seq_id = machine_seq_id;
    }

    public Double getMiddle_check_point() {
        return middle_check_point;
    }

    public void setMiddle_check_point(Double middle_check_point) {
        this.middle_check_point = middle_check_point;
    }


    public Double getOverall_check_point() {
        return overall_check_point;
    }

    public void setOverall_check_point(Double overall_check_point) {
        this.overall_check_point = overall_check_point;
    }


    public String getDiag_apply_type() {
        return diag_apply_type;
    }

    public void setDiag_apply_type(String diag_apply_type) {
        this.diag_apply_type = diag_apply_type;
    }

    public Integer getIs_middle_check_passed() {
        return is_middle_check_passed;
    }

    public void setIs_middle_check_passed(Integer is_middle_check_passed) {
        this.is_middle_check_passed = is_middle_check_passed;
    }

    public Integer getIs_overall_check_passed() {
        return is_overall_check_passed;
    }

    public void setIs_overall_check_passed(Integer is_overall_check_passed) {
        this.is_overall_check_passed = is_overall_check_passed;
    }
}
