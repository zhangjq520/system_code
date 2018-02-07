package com.logic.common.ws.dto.system;

import io.swagger.annotations.ApiModel;

/**
 * Created by albert on 16-3-7.
 */
@ApiModel(description = "Online Help DTO")

public class OnlineHelpDTO {

    private Integer id;
    private String question_subject;
    private String question_answer;
    private String related_modules;
    private String publish_status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQuestion_subject() {
        return question_subject;
    }

    public void setQuestion_subject(String question_subject) {
        this.question_subject = question_subject;
    }

    public String getQuestion_answer() {
        return question_answer;
    }

    public void setQuestion_answer(String question_answer) {
        this.question_answer = question_answer;
    }

    public String getRelated_modules() {
        return related_modules;
    }

    public void setRelated_modules(String related_modules) {
        this.related_modules = related_modules;
    }

    public String getPublish_status() {
        return publish_status;
    }

    public void setPublish_status(String publish_status) {
        this.publish_status = publish_status;
    }
}
