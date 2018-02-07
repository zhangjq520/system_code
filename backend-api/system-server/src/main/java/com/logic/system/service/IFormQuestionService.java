package com.logic.system.service;


import com.logic.system.domain.FormElement;
import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.FormPreviewDTO;
import com.logic.common.ws.dto.system.FormQuestionSequenceDTO;
import com.logic.common.ws.dto.system.FormSectionSequenceDTO;
import com.logic.common.ws.dto.system.SectionPreviewDTO;
import com.logic.system.domain.FormSection;
import com.logic.system.ws.dto.FormElementDTO;

import java.util.List;

public interface IFormQuestionService extends ICRUDService {
	
  public FormPreviewDTO getFormPreviewInfo(Integer formId) throws BusinessException;

  public Boolean checkFormId(FormElement formElement, Integer formId) throws BusinessException;

  public Boolean checkSectionId(FormElement formElement, Integer sectionId) throws BusinessException;

  public int insertFromQuestionBank(Integer formId, Integer sectionId, Integer refQuestionId) throws BusinessException;

  public void adjustQuestionSequence(FormQuestionSequenceDTO dto) throws BusinessException;

  public void adjustSectionSequence(FormSectionSequenceDTO dto) throws BusinessException;

  SectionPreviewDTO getSectionAndQuestionsBySectionId(Integer sectionId) throws BusinessException;
  
  /***
   * 通过formIdable获取section列表
   * @param formId
   * 	表单Id
   * @return
   * @throws BusinessException
   */
  List<FormSection> getSectionListByFormId(Integer formId) throws BusinessException;
  
  /***
   * 通过formId和sectionId获取属性列表
   * @param formId
   * 	表单Id
   * @param sectionId
   * 	栏位Ids
   * @return
   * @throws BusinessException
   */
  List<FormElementDTO> getElementListByFormIdAndSectionId(Integer formId, String sectionIds) throws BusinessException;
  /**
   * 根据elementcode和fromcode和sectioncode查询element
   * @param fromcode
   * @param elecode
   * @param sectioncode
   * @return
   * @throws BusinessException
   */
  public FormElement getIdByEleAndFromCode(String fromcode ,String elecode,String sectioncode) throws BusinessException;

  List<FormElement> getFromElementsByFormId(Integer formId);

  @Deprecated
  void cloneFormElements(FormSection section, FormSection newSection) throws BusinessException;

  void cloneFormElements(FormSection section, FormSection newSection, List<FormElement> formElementsToRemove) throws BusinessException;

  void cloneFormElements(Integer needCheckFormId, Integer formId) throws BusinessException;

  void cloneFormElements(Integer needCheckFormId, Integer newFormId, List<FormElement> formElements) throws BusinessException;
}
