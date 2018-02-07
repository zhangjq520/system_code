package com.logic.system.persistence.read;


import java.util.List;
import java.util.Map;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.FormElementQuestionDTO;
import com.logic.system.domain.FormElement;
import com.logic.system.ws.dto.FormElementDTO;

public interface FormElementReadMapper {

  FormElement selectByPrimaryKey(Integer id);

  List<FormElement> selectByFormIdAndSectionId(Map<String, Object> params);

  List<FormElement> selectByFormId(Integer formId);

  List<FormElement> selectByFormIdAll(Integer formId);


  List<FormElementQuestionDTO> selectQuestions(QueryUtil queryUtil);

  int checkCodeUnique(FormElement formElement);

  List<FormElement> getPassedElementsByMasterId(Integer masterId);
  
  /***
   * 通过element id list得到element list
   * @param idList
   * @return List<FormElement>
   */
  List<FormElement> getFormElementByIds(List<Integer> idList);
  
  /***
   * 通过formId和sectionId获取属性列表
   * @param formId
   * 	表单Id
   * @param sectionIdList
   * 	栏位Id列表
   * @return
   */
  List<FormElementDTO> getElementListByFormIdAndSectionId(Map<String, List<Integer>> map);
  
  /***
   * 通过code得到FormElement
   * @param code
   * @return
   */
  FormElement getElementByCode(String code);
  /**
   * 根据elementcode和fromcode和sectioncode查询element
   * @param fromcode
   * @param elecode
   * @param sectioncode
   * @return
   */
  FormElement getIdByEleAndFromCode(String fromcode, String elecode,String sectioncode);
  /**
   * 前台查询属性
   * @param queryUtil
   * @return
   */
  List<FormElement> queryFormElement(QueryUtil queryUtil);
}
