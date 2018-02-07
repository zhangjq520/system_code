package com.logic.system.domain;

import com.logic.common.domain.BasePojo;

import java.util.Date;

public class OnlineHelp extends BasePojo{

    private String quesSubject;

    private String quesAnswer;

    private String relatedModules;

    private String publishStatus;

    public String getQuesSubject() {
        return quesSubject;
    }

    public void setQuesSubject(String quesSubject) {
        this.quesSubject = quesSubject == null ? null : quesSubject.trim();
    }

    public String getQuesAnswer() {
        return quesAnswer;
    }

    public void setQuesAnswer(String quesAnswer) {
        this.quesAnswer = quesAnswer == null ? null : quesAnswer.trim();
    }

    public String getRelatedModules() {
        return relatedModules;
    }

    public void setRelatedModules(String relatedModules) {
        this.relatedModules = relatedModules == null ? null : relatedModules.trim();
    }

    public String getPublishStatus() {
        return publishStatus;
    }

    public void setPublishStatus(String publishStatus) {
        this.publishStatus = publishStatus == null ? null : publishStatus.trim();
    }

}