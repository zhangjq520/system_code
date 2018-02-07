package com.logic.system.persistence.read;


import java.util.HashMap;
import java.util.List;

import com.logic.common.ws.dto.qcs.inspection.FormResponseDetailDTO;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.ws.dto.FormDetailDTO;

public interface FormResponseDetailReadMapper {

  FormResponseDetail selectByPrimaryKey(Integer id);

  List<FormResponseDetail> getResponseList(Integer responseMasterId);

  //Integer checkFormResponseDetail(InspectionFormInstance inspectionFormInstance);

  List<FormResponseDetailDTO> queryResponseWithDeviation(Integer responseMasterId);

  Integer checkFormResponseDetailByElementId(HashMap<String, Object> queryMap);

  /***
   * get dto list
   * @param responseMasterId
   * @return List<FormResponseDetailDTO>
   */
  List<FormDetailDTO> getResponseDTOList(Integer responseMasterId);
}
