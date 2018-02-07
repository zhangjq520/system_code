package com.logic.system.service;

import java.util.List;

import com.logic.common.service.ICRUDService;
import com.logic.system.domain.FormResponseDetail;

/**
 * Author: omer 
 * Date  : 27-01-2016
 */
public interface IFormResponseDetailService extends ICRUDService {
    void insertBatch(List<FormResponseDetail> formResponseDetailList);
    
    /***
     * batch update formResponseDetail info
     * @param formResponseDetailList
     */
    void updateBatch(List<FormResponseDetail> formResponseDetailList, Integer masterId);
}
