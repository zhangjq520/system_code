package com.logic.system.persistence.read;


import com.logic.system.domain.PDCorrectiveActionDetail;

import java.util.List;

public interface PDCorrectiveActionDetailReadMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PD_CORRECTIVE_ACTION_DETAIL
     *
     * @mbggenerated Fri Jan 15 16:40:56 CST 2016
     */
    PDCorrectiveActionDetail selectByPrimaryKey(Integer id);
    List<PDCorrectiveActionDetail> getPDCorrectiveActionDetailListByMasterId(Integer masterId);


}