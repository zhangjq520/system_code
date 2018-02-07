package com.logic.common.ws.dto.system;

/**
 * Author: omer 
 * Date  : 15-02-2016
 */
public class TaskResultSummaryDTO {

    private Integer section_id;
    private String section_name;
    private Integer total_element;
    private Integer passed_element;
    private Integer not_passed_element;
    private Integer total_point;
    private Integer passed_point;
    private Integer not_passed_point;

    public Integer getSection_id() {
        return section_id;
    }

    public void setSection_id(Integer section_id) {
        this.section_id = section_id;
    }

    public String getSection_name() {
        return section_name;
    }

    public void setSection_name(String section_name) {
        this.section_name = section_name;
    }

    public Integer getTotal_element() {
        return total_element;
    }

    public void setTotal_element(Integer total_element) {
        this.total_element = total_element;
    }

    public Integer getPassed_element() {
        return passed_element;
    }

    public void setPassed_element(Integer passed_element) {
        this.passed_element = passed_element;
    }

    public Integer getNot_passed_element() {
        return not_passed_element;
    }

    public void setNot_passed_element(Integer not_passed_element) {
        this.not_passed_element = not_passed_element;
    }

    public Integer getTotal_point() {
        return total_point;
    }

    public void setTotal_point(Integer total_point) {
        this.total_point = total_point;
    }

    public Integer getPassed_point() {
        return passed_point;
    }

    public void setPassed_point(Integer passed_point) {
        this.passed_point = passed_point;
    }

    public Integer getNot_passed_point() {
        return not_passed_point;
    }

    public void setNot_passed_point(Integer not_passed_point) {
        this.not_passed_point = not_passed_point;
    }
}
