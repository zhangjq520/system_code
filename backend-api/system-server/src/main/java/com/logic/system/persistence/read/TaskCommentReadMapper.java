package com.logic.system.persistence.read;

import com.logic.system.domain.TaskComment;
import java.util.List;

public interface TaskCommentReadMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSTEM_TASK_COMMENT
     *
     * @mbggenerated Fri Dec 18 13:43:11 CST 2015
     */
    TaskComment selectByPrimaryKey(Integer id);

    List<TaskComment> selectByTaskId(Integer id);
}