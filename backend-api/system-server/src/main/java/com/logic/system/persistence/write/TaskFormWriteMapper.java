package com.logic.system.persistence.write;

import com.logic.system.domain.TaskForm;

public interface TaskFormWriteMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(TaskForm record);

    int insertSelective(TaskForm record);
    
    int updateByPrimaryKeySelective(TaskForm record);
    
    int updateByPrimaryKey(TaskForm record);
}