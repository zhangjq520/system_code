package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.system.domain.DiagnoseData;

import java.util.List;

/**
 * Created by albert on 16-2-4.
 */
public interface IDiagnoseDataService extends ICRUDService{
    List<DiagnoseData> getDiagnoseDatasByDiagRequestId(Integer id) throws BusinessException;
}
