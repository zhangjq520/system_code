package com.logic.system.ws.dto;

import com.logic.system.domain.*;

import java.util.List;

/**
 * Created by albert on 16-1-27.
 */
public class TaskSyncDataDTO {
    private Task system_task;
    private List<TaskDate> system_task_date;
    private List<FormResponseMaster> system_form_response_master;
    private List<FormResponseDetail> system_form_response_detail;
    private List<PDCorrectiveActionMaster> pd_corrective_action_master;
    private List<PDCorrectiveActionDetail> pd_corrective_action_detail;
    private List<DiagnoseData> pd_diagnose_data;
    private List<TaskComment> system_task_comment;
    private List<TaskLog> system_task_log;
    private List<MobileDevicePosition> system_mobile_device_position;
    private PDRequestOverallCheck pd_request_overall_check;


    public Task getSystem_task() {
        return system_task;
    }

    public void setSystem_task(Task system_task) {
        this.system_task = system_task;
    }

    public List<TaskDate> getSystem_task_date() {
        return system_task_date;
    }

    public void setSystem_task_date(List<TaskDate> system_task_date) {
        this.system_task_date = system_task_date;
    }

    public List<FormResponseMaster> getSystem_form_response_master() {
        return system_form_response_master;
    }

    public void setSystem_form_response_master(List<FormResponseMaster> system_form_response_master) {
        this.system_form_response_master = system_form_response_master;
    }

    public List<FormResponseDetail> getSystem_form_response_detail() {
        return system_form_response_detail;
    }

    public void setSystem_form_response_detail(List<FormResponseDetail> system_form_response_detail) {
        this.system_form_response_detail = system_form_response_detail;
    }

    public List<PDCorrectiveActionMaster> getPd_corrective_action_master() {
        return pd_corrective_action_master;
    }

    public void setPd_corrective_action_master(List<PDCorrectiveActionMaster> pd_corrective_action_master) {
        this.pd_corrective_action_master = pd_corrective_action_master;
    }

    public List<PDCorrectiveActionDetail> getPd_corrective_action_detail() {
        return pd_corrective_action_detail;
    }

    public void setPd_corrective_action_detail(List<PDCorrectiveActionDetail> pd_corrective_action_detail) {
        this.pd_corrective_action_detail = pd_corrective_action_detail;
    }

    public List<DiagnoseData> getPd_diagnose_data() {
        return pd_diagnose_data;
    }

    public void setPd_diagnose_data(List<DiagnoseData> pd_diagnose_data) {
        this.pd_diagnose_data = pd_diagnose_data;
    }

    public List<TaskComment> getSystem_task_comment() {
        return system_task_comment;
    }

    public void setSystem_task_comment(List<TaskComment> system_task_comment) {
        this.system_task_comment = system_task_comment;
    }

    public List<TaskLog> getSystem_task_log() {
        return system_task_log;
    }

    public void setSystem_task_log(List<TaskLog> system_task_log) {
        this.system_task_log = system_task_log;
    }

    public List<MobileDevicePosition> getSystem_mobile_device_position() {
        return system_mobile_device_position;
    }

    public void setSystem_mobile_device_position(List<MobileDevicePosition> system_mobile_device_position) {
        this.system_mobile_device_position = system_mobile_device_position;
    }

    public PDRequestOverallCheck getPd_request_overall_check() {
        return pd_request_overall_check;
    }

    public void setPd_request_overall_check(PDRequestOverallCheck pd_request_overall_check) {
        this.pd_request_overall_check = pd_request_overall_check;
    }
}
