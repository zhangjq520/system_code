package com.logic.system.persistence.write;

import com.logic.system.domain.Mail;

import java.util.Map;

public interface MailWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Mail record);

    int insertSelective(Mail record);

    int updateByPrimaryKeySelective(Mail record);

    int updateByPrimaryKeyWithBLOBs(Mail record);

    int updateByPrimaryKey(Mail record);
    
    /**
     * Required params for map<br>
     * ids(List)
     * status(Integer)
     */
    void updateStatusByIds(Map map);
    
}
