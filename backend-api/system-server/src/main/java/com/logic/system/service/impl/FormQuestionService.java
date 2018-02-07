package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.enums.FormStyleEnum;
import com.logic.common.enums.ResponseTypeEnum;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DropdownOptionsDTO;
import com.logic.common.ws.dto.system.ElementPreviewDTO;
import com.logic.common.ws.dto.system.FormPreviewDTO;
import com.logic.common.ws.dto.system.FormQuestionSequenceDTO;
import com.logic.common.ws.dto.system.FormSectionSequenceDTO;
import com.logic.common.ws.dto.system.SectionPreviewDTO;
import com.logic.common.ws.dto.system.SectionQuestionSequenceDTO;
import com.logic.system.domain.Form;
import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormElementCategory;
import com.logic.system.domain.FormElementOptionalAnswer;
import com.logic.system.domain.FormElementReferenceItem;
import com.logic.system.domain.FormResponseDetail;
import com.logic.system.domain.FormResponseMaster;
import com.logic.system.domain.FormSection;
import com.logic.system.domain.PDCorrectiveActionDetail;
import com.logic.system.domain.PDCorrectiveActionMaster;
import com.logic.system.domain.Question;
import com.logic.system.domain.QuestionCategory;
import com.logic.system.domain.QuestionOptionalAnswer;
import com.logic.system.domain.QuestionReferenceItem;
import com.logic.system.persistence.read.FormElementOptionalAnswerReadMapper;
import com.logic.system.persistence.read.FormElementReadMapper;
import com.logic.system.persistence.read.FormReadMapper;
import com.logic.system.persistence.read.FormResponseDetailReadMapper;
import com.logic.system.persistence.read.FormResponseMasterReadMapper;
import com.logic.system.persistence.read.FormSectionReadMapper;
import com.logic.system.persistence.read.PDCorrectiveActionDetailReadMapper;
import com.logic.system.persistence.read.PDCorrectiveActionMasterReadMapper;
import com.logic.system.persistence.write.FormElementOptionalAnswerWriteMapper;
import com.logic.system.persistence.write.FormElementWriteMapper;
import com.logic.system.persistence.write.FormSectionWriteMapper;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IFormElementCategoryService;
import com.logic.system.service.IFormElementOptionalAnswerService;
import com.logic.system.service.IFormElementReferenceService;
import com.logic.system.service.IFormQuestionService;
import com.logic.system.service.IQuestionService;
import com.logic.system.ws.dto.FormElementDTO;

@Service
public class FormQuestionService implements IFormQuestionService {

	private static Logger logger = LoggerFactory.getLogger(FormQuestionService.class);

	@Autowired
	FormReadMapper formReadMapper;

	@Autowired
	FormSectionReadMapper formSectionReadMapper;

	@Autowired
	FormSectionWriteMapper formSectionWriteMapper;

	@Autowired
	FormElementReadMapper formElementReadMapper;

	@Autowired
	FormElementWriteMapper formElementWriteMapper;

	@Autowired
	FormElementOptionalAnswerReadMapper formOptionalAnswerReadMapper;

	@Autowired
	FormElementOptionalAnswerWriteMapper formOptionalAnswerWriteMapper;

	@Autowired
	IFormElementReferenceService formElementReferenceService;

	@Autowired
	IFormElementCategoryService formElementCategoryService;

	@Autowired
	IFormElementOptionalAnswerService formElementOptionalAnswerService;

	@Autowired
	IQuestionService questionService;

	@Autowired
	ICodeService codeService;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private FormResponseMasterReadMapper formResponseMasterReadMapper;

	@Autowired
	private PDCorrectiveActionMasterReadMapper pdCorrectiveActionMasterReadMapper;

	@Autowired
	private FormResponseDetailReadMapper formResponseDetailReadMapper;

	@Autowired
	private PDCorrectiveActionDetailReadMapper pdCorrectiveActionDetailReadMapper;

	@Override
	@Transactional(rollbackFor = BusinessException.class)
	public int insert(Object obj) throws BusinessException {
		FormElement formElement = (FormElement) obj;

		if (formElement.getId() != null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_ID_Not_Empty);
		}

		int i = formReadMapper.checkFormExist(formElement);
		if (i == 0) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Form_Not_Exsit, formElement.getId());
		}

		i = formSectionReadMapper.checkFormSectionExist(formElement);
		if (i == 0) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Form_Section_Not_Exsit,
					formElement.getSectionId());
		}

		Boolean isValidForQuestionInsert = this.validateForInsert(formElement);
		if (isValidForQuestionInsert) {
			switch (ResponseTypeEnum.toType(formElement.getType())) {
			case ShortText:
				basicQuestionInsert(formElement);
				break;
			case LongText:
				basicQuestionInsert(formElement);
				break;
			case Numberic:
				if (validForNumbericAnswerInsert(formElement)) {
					basicQuestionInsert(formElement);
				}
				break;
			case Logical:
				if (validForLogicalAnswerInsert(formElement)) {
					basicQuestionInsert(formElement);
				}
				break;
			case SingleSelectionDropdown:
			case MultipleSelectionDropdown:
				basicQuestionInsert(formElement);
				if (validForOptionalAnswerInsert(formElement)) {
					List<FormElementOptionalAnswer> answers = formElement.getFormElementOptionalAnswer();
					List<String> list = new ArrayList<String>();
					for (FormElementOptionalAnswer answer : answers) {
						answer.setFormElementId(formElement.getId());
						answer.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
						formElementOptionalAnswerService.insert(answer);
						if (answer.getAcceptable()) {
							list.add(answer.getAnswerSeq());
						}
					}
					String correctResponse = listToString(list);
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("id", formElement.getId().toString());
					map.put("optionalAnswerId", correctResponse);
					formElementWriteMapper.updateCorrectResponseById(map);
				}
				break;
			case Toshiba:
				basicQuestionInsert(formElement);
				break;
			default:
				break;
			}
		}
		return formElement.getId();
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		FormElement formElement = basicQuestionGet(id);
		if (formElement != null) {
			if (ResponseTypeEnum.SingleSelectionDropdown.getCode().equals(formElement.getType())
					|| ResponseTypeEnum.MultipleSelectionDropdown.getCode().equals(formElement.getType())) {
				@SuppressWarnings("unchecked")
				List<FormElementOptionalAnswer> answers = (List<FormElementOptionalAnswer>) formElementOptionalAnswerService
				.get(id);
				if (answers != null) {
					formElement.setFormElementOptionalAnswer(answers);
				}
			}
		}
		return formElement;
	}

	public Boolean checkFormId(FormElement formElement, Integer formId) throws BusinessException {
		Boolean ret = false;
		if (formId.equals(formElement.getFormId())) {
			ret = true;
		} else {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Delete_Question_Not_Exsit_In_Form,
					formElement.getFormId());
		}
		return ret;
	}

	public Boolean checkSectionId(FormElement formElement, Integer sectionId) throws BusinessException {
		Boolean ret = false;
		if (sectionId.equals(formElement.getSectionId())) {
			ret = true;
		} else {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Delete_Question_Not_Exsit_In_Section,
					formElement.getSectionId());
		}
		return ret;
	}

	@Override
	@Transactional(rollbackFor = BusinessException.class)
	public void update(Object obj) throws BusinessException {
		FormElement formElement = (FormElement) obj;

		int i = formReadMapper.checkFormExist(formElement);
		if (i == 0) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Update_Form_Not_Exsit, formElement.getId());
		}   
		//    i = formSectionReadMapper.checkFormSectionExist(formElement);
		//    if (i == 0) {
		//      throw new BusinessException(ErrorMessageEnum.Form_Question_Update_Form_Section_Not_Exsit,
		//          formElement.getSectionId());
		//    }

		Boolean isValidForQuestionUpdate = this.validateForUpdate(formElement);
		if (isValidForQuestionUpdate) {
			switch (ResponseTypeEnum.toType(formElement.getType())) {
			case ShortText:
				basicQuestionUpdate(formElement);
				break;
			case LongText:
				basicQuestionUpdate(formElement);
				break;
			case Numberic:
				if (validForNumbericAnswerUpdate(formElement)) {
					basicQuestionUpdate(formElement);
				}
				break;
			case Logical:
				if (validForLogicalAnswerUpdate(formElement)) {
					basicQuestionUpdate(formElement);
				}
				break;
			case SingleSelectionDropdown:
			case MultipleSelectionDropdown:
				basicQuestionUpdate(formElement);
				if (validForOptionalAnswerUpdate(formElement)) {
					formOptionalAnswerWriteMapper.deletePhysicallyByElementId(formElement.getId());
					List<FormElementOptionalAnswer> answers = formElement.getFormElementOptionalAnswer();
					List<String> list = new ArrayList<String>();
					for (FormElementOptionalAnswer answer : answers) {
						answer.setFormElementId(formElement.getId());
						formElementOptionalAnswerService.insert(answer);
						if (answer.getAcceptable()) {
							list.add(answer.getAnswerSeq());
						}
					}
					String correctResponse = listToString(list);
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("id", formElement.getId().toString());
					map.put("optionalAnswerId", correctResponse);
					formElementWriteMapper.updateCorrectResponseById(map);
				}
				break;
			case Toshiba:
				basicQuestionUpdate(formElement);
				break;
			default:
				break;
			}
		}
	}

	@Override
	@Transactional(rollbackFor = BusinessException.class)
	public void delete(String ids) throws BusinessException {
		String[] idArr = ids.split(",");
		for (String id : idArr) {
			FormElement formElement = (FormElement) get(Integer.valueOf(id));
			if (formElement == null) {
				throw new BusinessException(ErrorMessageEnum.Form_Question_Delete_Form_Element_Exsit, Integer.valueOf(id));
			} else {
				formElement.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
				formElementWriteMapper.deleteByPrimaryKey(formElement);
				formElementReferenceService.delete(id);
				formElementCategoryService.delete(id);
				formElementOptionalAnswerService.delete(id);
			}
		}
	}

	@Override
	public List<Object> query(QueryUtil queryUtil) {
		return null;
	}

	@Transactional(rollbackFor = BusinessException.class)
	public int insertFromQuestionBank(Integer formId, Integer sectionId, Integer refQuestionId) throws BusinessException {
		Question question = (Question) questionService.get(refQuestionId);
		FormElement formElement = new FormElement();

		if (question != null) {
			formElement = convertFromQuestion(question);
		} else {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Bank_Insert_Question_Not_Exsit);
		}

		formElement.setFormId(formId);
		formElement.setSectionId(sectionId);
		formElement.setRefQuestionId(refQuestionId);
		Integer id = insertToFormElement(formElement);

		return id;
	}

	@Transactional(rollbackFor = BusinessException.class)
	public int insertToFormElement(FormElement formElement) throws BusinessException {

		int i = formReadMapper.checkFormExist(formElement);
		if (i == 0) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Bank_Insert_Form_Not_Exsit, formElement.getId());
		}

		i = formSectionReadMapper.checkFormSectionExist(formElement);
		if (i == 0) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Bank_Insert_Form_Section_Not_Exsit,
					formElement.getSectionId());
		}

		Boolean isValidForQuestionInsert = this.validateForInsert(formElement);
		if (isValidForQuestionInsert) {
			if (ResponseTypeEnum.ShortText.getCode().equals(formElement.getType())
					|| ResponseTypeEnum.LongText.getCode().equals(formElement.getType())) {
				basicQuestionInsert(formElement);
			} else if (ResponseTypeEnum.Numberic.getCode().equals(formElement.getType())) {
				if (validForNumbericAnswerInsert(formElement)) {
					basicQuestionInsert(formElement);
				}
			} else if (ResponseTypeEnum.Logical.getCode().equals(formElement.getType())) {
				if (validForLogicalAnswerInsert(formElement)) {
					basicQuestionInsert(formElement);
				}
			} else {
				basicQuestionInsert(formElement);
				if (validForOptionalAnswerInsert(formElement)) {
					List<FormElementOptionalAnswer> answers = formElement.getFormElementOptionalAnswer();
					for (FormElementOptionalAnswer answer : answers) {
						answer.setFormElementId(formElement.getId());
						formElementOptionalAnswerService.insert(answer);
					}
				}
			}
		}
		return formElement.getId();
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		FormElement formElement = (FormElement) obj;
		Boolean ret = false;

		if (formElement == null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Object);
		}

		//    if (StringUtils.isEmpty(formElement.getCode())) {
		//      throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Code);
		//    }

		if (StringUtils.isEmpty(formElement.getType())) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Type);
		}

		if (StringUtils.isEmpty(formElement.getSubject())) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Subject);
		}

		// int i = formElementReadMapper.checkCodeUnique(formElement);
		// if (i > 0) {
		// throw new
		// BusinessException("Code already exist, please try another.");
		// }

		boolean isTrueStatus = false;
		if (formElement.getStatus() != null && !formElement.getStatus().trim().isEmpty()) {
			List<Code> codeList = codeService.getChildCodes(SystemEnum._A9.name());
			for (int j = 0; j < codeList.size(); j++) {
				if (formElement.getStatus().equals(codeList.get(j).getCode())) {
					isTrueStatus = true;
				}
			}
		}
		if (!isTrueStatus && formElement.getStatus() != null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Status_Not_Valid);
		}

		ret = true;
		return ret;
	}

	@Override
	public Boolean validateForInsert(Object obj) throws BusinessException {
		FormElement formElement = (FormElement) obj;
		Boolean ret = validate(formElement);

		if (null != formElement.getId()) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_ID_Not_Empty);
		}

		return ret;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		FormElement formElement = (FormElement) obj;
		if (get(formElement.getId()) == null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Update_Form_Question_Not_Exsit, formElement.getId());
		}

		//    if (null != formElement.getCode() && StringUtils.isEmpty(formElement.getCode())) {
		//      throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Code);
		//    }

		if (null != formElement.getType() && StringUtils.isEmpty(formElement.getType())) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Type);
		}

		if (null != formElement.getSubject() && StringUtils.isEmpty(formElement.getSubject())) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Subject);
		}

		return true;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		return true;
	}

	/**
	 * Get form preview info
	 */
	public FormPreviewDTO getFormPreviewInfo(Integer formId) throws BusinessException {
		Form form = formReadMapper.selectByPrimaryKey(formId);
		if (form == null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Form_Preview_Form_Not_Exsit, formId);
		}

		if (form.getStyle() == null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Form_Preview_Form_Style_Not_Exsit, formId);
		}

		FormPreviewDTO dto = new FormPreviewDTO();
		dto.setForm_id(formId.toString());
		String formName = form.getShortDesc();
		dto.setForm_name(formName);
		dto.setForm_style(form.getStyle());

		switch(FormStyleEnum.toFromStyle(form.getStyle())){
		case SingleForm:
			List<ElementPreviewDTO> elementDTOs = getFormElemntsByFormId(formId);
			dto.setElements(elementDTOs);
			break;
		case SingleFormWithSection:
			List<SectionPreviewDTO> sectionDtos = getFormSectionByFormId(formId);
			dto.setSections(sectionDtos);
			break;
		case Wizard:
			break;
		case WizardWithSection:
			break;
		default:
			break;
		}
		return dto;
	}

	@Override
	public SectionPreviewDTO getSectionAndQuestionsBySectionId(Integer sectionId){
		FormSection section = formSectionReadMapper.selectByPrimaryKey(sectionId);
		SectionPreviewDTO dto = new SectionPreviewDTO();
		dto.setId(section.getId());
		dto.setName(section.getName());
		dto.setSequence(section.getSeq());
		List<ElementPreviewDTO> elementDto = getFormElementByFormIdAndSectionId(section.getFormId(), section.getId());
		dto.setForm_questions(elementDto);
		return dto;
	}

	@Override
	public List<FormSection> getSectionListByFormId(Integer formId) throws BusinessException {
		List<FormSection> list = null;

		if(formId != null) {
			list = formSectionReadMapper.getSectionListByFormId(formId);
		}

		return list;
	}

	@Override
	public List<FormElementDTO> getElementListByFormIdAndSectionId(Integer formId, String sectionIds) throws BusinessException {
		List<FormElementDTO> list = null;

		if(formId != null && sectionIds != null) {
			Map<String, List<Integer>> map = new HashMap<String, List<Integer>>();
			List<Integer> formIdList = new ArrayList<Integer>();
			List<Integer> sectionIdList = new ArrayList<Integer>();
			String[] sectionIdArr = sectionIds.split(",");

			for(String sectionId : sectionIdArr) {
				if(!"".equals(sectionId)) {
					sectionIdList.add(Integer.valueOf(sectionId));
				}
			}

			formIdList.add(formId);

			map.put("formIdList", formIdList);
			map.put("sectionIdList", sectionIdList);

			list = formElementReadMapper.getElementListByFormIdAndSectionId(map);
		}

		return list;
	}

	/**
	 * Get section info under form id
	 * 
	 * @param formId
	 * @return
	 */
	private List<SectionPreviewDTO> getFormSectionByFormId(Integer formId) {
		List<SectionPreviewDTO> dtoList = new ArrayList<SectionPreviewDTO>();
		List<FormSection> sectionList = formSectionReadMapper.selectByFormId(formId);
		if (sectionList != null && sectionList.size() > 0) {
			logger.debug("section size: " + sectionList.size());
			for (FormSection section : sectionList) {
				SectionPreviewDTO dto = new SectionPreviewDTO();
				dto.setId(section.getId());
				dto.setName(section.getName());
				dto.setSequence(section.getSeq());
				List<ElementPreviewDTO> elementDto = getFormElementByFormIdAndSectionId(formId, section.getId());
				dto.setForm_questions(elementDto);
				dtoList.add(dto);
			}
		}
		return dtoList;
	}

	private List<ElementPreviewDTO> getFormElemntsByFormId(Integer formId){
		return getFormElementByFormIdAndSectionId(formId, null);
	}

	private Map<Integer,FormResponseDetail> prepareFormResponses(Integer formId){
		Map<Integer, FormResponseDetail> map = new HashMap<Integer, FormResponseDetail>();
		FormResponseMaster master = formResponseMasterReadMapper.getByFormId(formId);

		if(master != null) {
			List<FormResponseDetail> formResponseDetails = formResponseDetailReadMapper.getResponseList(master.getId());
			if (formResponseDetails != null) {
				for (FormResponseDetail detail : formResponseDetails) {
					map.put(detail.getFormElementId(), detail);
				}
			}
		}
		return map;
	}

	private Map<Integer, PDCorrectiveActionDetail> preparePDCorrectiveActions(Integer formId){
		Map<Integer, PDCorrectiveActionDetail> map = new HashMap<Integer, PDCorrectiveActionDetail>();
		PDCorrectiveActionMaster master = pdCorrectiveActionMasterReadMapper.selectByFormId(formId);
		if ( master != null) {
			List<PDCorrectiveActionDetail> details = pdCorrectiveActionDetailReadMapper.getPDCorrectiveActionDetailListByMasterId(master.getId());
			if (details != null) {
				for (PDCorrectiveActionDetail detail : details) {
					map.put(detail.getFormResponseDetailId(), detail);
				}
			}
		}
		return map;
	}

	/**
	 * Get form element info under form id and section id
	 * 
	 * @param formId
	 * @param sectionId
	 */
	private List<ElementPreviewDTO> getFormElementByFormIdAndSectionId(Integer formId, Integer sectionId) {
		List<ElementPreviewDTO> dtoList = new ArrayList<ElementPreviewDTO>();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("formId", formId);
		params.put("sectionId", sectionId);
		List<FormElement> elementList = formElementReadMapper.selectByFormIdAndSectionId(params);

		Map<Integer, FormResponseDetail> formResponseDetailMap = prepareFormResponses(formId);
		Map<Integer, PDCorrectiveActionDetail> correctiveActionDetailMap = preparePDCorrectiveActions(formId);

		if (elementList != null && elementList.size() > 0) {
			for (FormElement element : elementList) {
				ElementPreviewDTO dto = new ElementPreviewDTO();
				dto.setId(element.getId() == null ? "" : element.getId().toString());
				dto.setSequence(element.getSeq() == null ? "" : element.getSeq().toString());
				dto.setCode(element.getCode());
				dto.setSubject(element.getSubject());
				dto.setScore(String.valueOf(element.getPoint()));
				dto.setPart(element.getOther1());
				dto.setCause(element.getOther2());
				dto.setCorrective_action(element.getOther3());
				dto.setMust_true(element.getOther4());

				//response detail
				FormResponseDetail formResponseDetail = formResponseDetailMap.get(element.getId());
				if(formResponseDetail != null) {
					dto.setResponse(formResponseDetail.getResponse());
					//pd corrective detail
					PDCorrectiveActionDetail correctiveActionDetail = correctiveActionDetailMap.get(formResponseDetail.getId());
					if(correctiveActionDetail != null){
						dto.setPd_part(correctiveActionDetail.getOther1());
						dto.setPd_errorCause(correctiveActionDetail.getErrorCause());
						dto.setPd_corrective_action(correctiveActionDetail.getCorrectiveAction());
					}
				}

				String referenceItem = element.getQuestionReferenceItem();
				if (!StringUtils.isEmpty(referenceItem)) {
					String[] arr = referenceItem.split(",");
					List<Integer> list = new ArrayList<Integer>();
					for (String item : arr) {
						list.add(Integer.valueOf(item));
					}
					dto.setReference_item(list);
				}
				String questionCategory = element.getQuestionCategory();
				if (!StringUtils.isEmpty(questionCategory)) {
					String[] arr = questionCategory.split(",");
					List<String> list = new ArrayList<String>();
					for (String category : arr) {
						list.add(category);
					}
					dto.setQuestion_category(list);
				}
				dto.setStatus(element.getStatus());
				dto.setType(element.getType());

				List<DropdownOptionsDTO> dropdownOptions = null;
				List<FormElementOptionalAnswer> answerList = formOptionalAnswerReadMapper
						.selectByFormElementId(element.getId());
				if (answerList != null && answerList.size() > 0) {
					dropdownOptions = new ArrayList<DropdownOptionsDTO>();
					for (FormElementOptionalAnswer answer : answerList) {
						DropdownOptionsDTO dropdownDto = new DropdownOptionsDTO();
						dropdownDto.setName(answer.getAnswerText());
						dropdownDto.setSequence(answer.getAnswerSeq());
						dropdownOptions.add(dropdownDto);
					}
				}
				dto.setForm_dropdown_options(dropdownOptions);
				dtoList.add(dto);
			}
		}
		return dtoList;
	}


	/**
	 * Get form element info under form id and section id
	 * 
	 * @param formId
	 */
	private List<ElementPreviewDTO> getFormElementByFormId(Integer formId) {
		List<ElementPreviewDTO> dtoList = new ArrayList<ElementPreviewDTO>();
		List<FormElement> elementList = formElementReadMapper.selectByFormId(formId);
		if (elementList != null && elementList.size() > 0) {
			for (FormElement element : elementList) {
				ElementPreviewDTO dto = new ElementPreviewDTO();
				dto.setId(element.getId() == null ? "" : element.getId().toString());
				dto.setSequence(element.getSeq() == null ? "" : element.getSeq().toString());
				dto.setCode(element.getCode());
				dto.setSubject(element.getSubject());
				String referenceItem = element.getQuestionReferenceItem();
				if (!StringUtils.isEmpty(referenceItem)) {
					String[] arr = referenceItem.split(",");
					List<Integer> list = new ArrayList<Integer>();
					for (String item : arr) {
						list.add(Integer.valueOf(item));
					}
					dto.setReference_item(list);
				}
				String questionCategory = element.getQuestionCategory();
				if (!StringUtils.isEmpty(questionCategory)) {
					String[] arr = questionCategory.split(",");
					List<String> list = new ArrayList<String>();
					for (String category : arr) {
						list.add(category);
					}
					dto.setQuestion_category(list);
				}
				dto.setStatus(element.getStatus());
				dto.setType(element.getType());

				List<DropdownOptionsDTO> dropdownOptions = null;
				List<FormElementOptionalAnswer> answerList = formOptionalAnswerReadMapper
						.selectByFormElementId(element.getId());
				if (answerList != null && answerList.size() > 0) {
					dropdownOptions = new ArrayList<DropdownOptionsDTO>();
					for (FormElementOptionalAnswer answer : answerList) {
						DropdownOptionsDTO dropdownDto = new DropdownOptionsDTO();
						dropdownDto.setName(answer.getAnswerText());
						dropdownDto.setSequence(answer.getAnswerSeq());
						dropdownOptions.add(dropdownDto);
					}
				}
				dto.setForm_dropdown_options(dropdownOptions);
				dtoList.add(dto);
			}
		}
		return dtoList;
	}

	private Boolean validForReferenceInsert(FormElement formElement) throws BusinessException {
		Boolean ret = false;

		if (formElement.getQuestionReferenceItems() == null) {
			throw new BusinessException(ErrorMessageEnum.Element_Reference_Insert_Empty_Reference_List);
		}

		ret = true;
		return ret;
	}

	private Boolean validForCategoryInsert(FormElement formElement) throws BusinessException {
		Boolean ret = false;

		if (formElement.getQuestionCategories() == null) {
			throw new BusinessException(ErrorMessageEnum.Element_Category_Insert_Empty_Category_List);
		}

		ret = true;
		return ret;
	}

	private Boolean validForNumbericAnswerInsert(FormElement formElement) throws BusinessException {
		Boolean ret = false;

		if (formElement.getCorrectNumberStart() == null || formElement.getCorrectNumberEnd() == null) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Numberic_Answer_Correct_Number);
		}

		ret = true;
		return ret;
	}

	private Boolean validForLogicalAnswerInsert(FormElement formElement) throws BusinessException {
		Boolean ret = false;

		if (StringUtils.isEmpty(formElement.getCorrectResponse())) {
			throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Logical_Answer_Correct_Response);
		}

		ret = true;
		return ret;
	}

	private Boolean validForOptionalAnswerInsert(FormElement formElement) throws BusinessException {
		Boolean ret = false;

		if (formElement.getFormElementOptionalAnswer() == null) {
			throw new BusinessException(
					ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Optional_Answer_Question_Optional_Answers);
		}

		ret = true;
		return ret;
	}

	private Boolean validForNumbericAnswerUpdate(FormElement formElement) throws BusinessException {
		Boolean ret = validForNumbericAnswerInsert(formElement);
		return ret;
	}

	private Boolean validForLogicalAnswerUpdate(FormElement formElement) throws BusinessException {
		Boolean ret = validForLogicalAnswerInsert(formElement);
		return ret;
	}

	private Boolean validForOptionalAnswerUpdate(FormElement formElement) throws BusinessException {
		Boolean ret = validForOptionalAnswerInsert(formElement);
		return ret;
	}

	private void basicQuestionInsert(FormElement formElement) throws BusinessException {
		formElement.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

		formElementWriteMapper.insertSelective(formElement);
		//    if (validForReferenceInsert(formElement)) {
		//      List<FormElementReferenceItem> items = formElement.getQuestionReferenceItems();
		//      for (FormElementReferenceItem item : items) {
		//        item.setFormElementId(formElement.getId());
		//        formElementReferenceService.insert(item);
		//      }
		//    }
		if (validForCategoryInsert(formElement)) {
			List<FormElementCategory> categories = formElement.getQuestionCategories();
			for (FormElementCategory category : categories) {
				category.setFormElementId(formElement.getId());
				formElementCategoryService.insert(category);
			}
		}
	}

	private FormElement basicQuestionGet(Integer id) throws BusinessException {
		FormElement formElement = formElementReadMapper.selectByPrimaryKey(id);
		if (formElement != null) {
			@SuppressWarnings("unchecked")
			List<FormElementReferenceItem> items = (List<FormElementReferenceItem>) formElementReferenceService.get(id);
			if (items != null) {
				formElement.setQuestionReferenceItems(items);
			}
			@SuppressWarnings("unchecked")
			List<FormElementCategory> categories = (List<FormElementCategory>) formElementCategoryService.get(id);
			if (categories != null) {
				formElement.setQuestionCategories(categories);
			}
		}
		return formElement;
	}

	private void basicQuestionUpdate(FormElement formElement) throws BusinessException {
		formElement.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
		formElementWriteMapper.updateByPrimaryKeySelective(formElement);

		List<FormElementReferenceItem> items = formElement.getQuestionReferenceItems();
		if (null != items) {
			formElementReferenceService.delete(formElement.getId().toString());

			if (!items.isEmpty()) {
				for (FormElementReferenceItem item : items) {
					item.setFormElementId(formElement.getId());
					formElementReferenceService.insert(item);
				}
			}
		}

		List<FormElementCategory> categories = formElement.getQuestionCategories();

		if (null != categories) {
			formElementCategoryService.delete(formElement.getId().toString());

			if (!categories.isEmpty()) {
				for (FormElementCategory category : categories) {
					category.setFormElementId(formElement.getId());
					formElementCategoryService.insert(category);
				}
			}
		}
	}

	private FormElement convertFromQuestion(Question question) {
		FormElement formElement = new FormElement();

		formElement.setCode(question.getCode());
		formElement.setType(question.getType());
		formElement.setSubjectDesc(question.getSubjectDesc());
		formElement.setInputDesc(question.getInputDesc());
		formElement.setCorrectResponse(question.getCorrectResponse());
		formElement.setCorrectNumberStart(question.getCorrectNumberStart());
		formElement.setCorrectNumberEnd(question.getCorrectNumberEnd());
		formElement.setInputForException(question.getInputForException());
		formElement.setParentAnswerCode(question.getParentAnswerCode());
		formElement.setViewName(question.getViewName());
		formElement.setColumnForDisplay(question.getColumnForDisplay());
		formElement.setColumnForValue(question.getColumnForValue());
		formElement.setWhereClause(question.getWhereClause());
		formElement.setPoint(question.getPoint());
		formElement.setSubject(question.getSubject());
		formElement.setStatus(question.getStatus());

		List<FormElementReferenceItem> items = new ArrayList<FormElementReferenceItem>();
		for (QuestionReferenceItem item : question.getQuestionReferenceItems()) {
			FormElementReferenceItem item2 = new FormElementReferenceItem();
			item2.setReferenceItemId(item.getReferenceItemId());
			items.add(item2);
		}
		formElement.setQuestionReferenceItems(items);

		List<FormElementCategory> categories = new ArrayList<FormElementCategory>();
		for (QuestionCategory category : question.getQuestionCategories()) {
			FormElementCategory category2 = new FormElementCategory();
			category2.setCategory(category.getCategory());
			categories.add(category2);
		}
		formElement.setQuestionCategories(categories);

		if (ResponseTypeEnum.SingleSelectionDropdown.getCode().equals(formElement.getType())
				|| ResponseTypeEnum.MultipleSelectionDropdown.getCode().equals(formElement.getType())) {
			List<FormElementOptionalAnswer> answers = new ArrayList<FormElementOptionalAnswer>();
			for (QuestionOptionalAnswer answer : question.getQuestionOptionalAnswers()) {
				FormElementOptionalAnswer answer2 = new FormElementOptionalAnswer();
				answer2.setAnswerSeq(answer.getAnswerSeq());
				answer2.setPoint(answer.getPoint());
				answer2.setAnswerText(answer.getAnswerText());
				answer2.setAcceptable(answer.getAcceptable());
				answers.add(answer2);
			}
			formElement.setFormElementOptionalAnswer(answers);
		}

		return formElement;
	}

	public static String listToString(List<String> list) {
		if (list == null) {
			return null;
		}
		StringBuilder result = new StringBuilder();
		boolean flg = false;
		for (String str : list) {
			if (flg) {
				result.append(",");
			} else {
				flg = true;
			}
			result.append(str);
		}
		return result.toString();
	}

	/**
	 * adjust form question sequence
	 */
	public void adjustQuestionSequence(FormQuestionSequenceDTO dto) throws BusinessException {
		Form form = formReadMapper.selectByPrimaryKey(Integer.valueOf(dto.getForm_id()));
		if (form == null) {
			throw new BusinessException(ErrorMessageEnum.Question_Sequence_Adjust_Form_Not_Exsit, dto.getForm_id());
		}

		Integer formId = Integer.valueOf(dto.getForm_id());

		List<FormElement> formElementList =null;
		Map<Integer, FormElement> map = null;
		switch(FormStyleEnum.toFromStyle(form.getStyle())){
		case SingleForm:
			formElementList = formElementReadMapper.selectByFormId(formId);
			map = translateElementListToMap(formElementList);
			List<Integer> questionIds = dto.getQuestions();
			int i=0;
			for(Integer questionId : questionIds){
				FormElement element = map.get(questionId);
				if(element!=null && !questionId.equals(element.getSeq())){
					element.setSeq(i);
					formElementWriteMapper.updateByPrimaryKeySelective(element);
					i++;
				}

			}
			break;
		case SingleFormWithSection:
			List<SectionQuestionSequenceDTO> sections = dto.getSections();
			for(SectionQuestionSequenceDTO seqDto : sections){
				FormSection section = formSectionReadMapper.selectByPrimaryKey(seqDto.getSection_id());
				if(section==null){
					throw new BusinessException(ErrorMessageEnum.Form_Question_Sequence_Adjust_Section_Not_Exsit);
				}
				Map<String, Object> params = new HashMap<String, Object>();
				params.put("formId", formId);
				params.put("sectionId", section.getId());
				formElementList = formElementReadMapper.selectByFormIdAndSectionId(params);
				map = translateElementListToMap(formElementList);

				List<Integer> questions = seqDto.getQuestions();

				int j=0;
				for(Integer questionId : questions){
					FormElement element = map.get(questionId);
					if(element!=null && !questionId.equals(element.getSeq())){
						element.setSeq(j);
						formElementWriteMapper.updateByPrimaryKeySelective(element);
						j++;
					}	
				}	 
			}
			break;
		case Wizard:
			break;
		case WizardWithSection:
			break;
		default:
			break;
		}
	}

	private Map<Integer, FormElement> translateElementListToMap(List<FormElement> list) {
		Map<Integer, FormElement> map = new HashMap<Integer, FormElement>();
		if (list != null && list.size() > 0) {
			for (FormElement element : list) {
				map.put(element.getId(), element);
			}
		}
		return map;
	}

	/**
	 * adjust form section sequence
	 */
	public void adjustSectionSequence(FormSectionSequenceDTO dto) throws BusinessException {
		Form form = formReadMapper.selectByPrimaryKey(Integer.valueOf(dto.getForm_id()));
		if (form == null) {
			throw new BusinessException(ErrorMessageEnum.Section_Sequence_Adjust_Form_Not_Exsit, dto.getForm_id());
		}

		Integer formId = Integer.valueOf(dto.getForm_id());
		List<Integer> sections = dto.getSections();

		List<FormSection> sectionList = formSectionReadMapper.selectByFormId(formId);
		Map<Integer, FormSection> map = new HashMap<Integer, FormSection>();
		if (sectionList != null && sectionList.size() > 0) {
			for (FormSection section : sectionList) {
				map.put(section.getId(), section);
			}
		}
		if (sections != null && sections.size() > 0) {
			for (int i = 0; i < sections.size(); i++) {
				FormSection section = map.get(sections.get(i));
				if (!Integer.valueOf(i + 1).equals(section.getSeq())) {
					section.setSeq(i + 1);
					formSectionWriteMapper.updateByPrimaryKeySelective(section);
				}
			}
		}
	}

	@Override
	public List<FormElement> getFromElementsByFormId(Integer formId){
		return formElementReadMapper.selectByFormIdAll(formId);
	}


	private void cloneFormElements(List<FormElement> formElements, Integer formId, Integer sectionId) throws BusinessException{
		List<FormElement> newFormElements = new ArrayList<FormElement>();
		if(formElements!=null){
			for(FormElement formElement : formElements){
				FormElement newElement = new FormElement();
				newElement.setFormId(formId);
				newElement.setSectionId(sectionId);
				newElement.setCode(formElement.getCode());
				newElement.setSeq(formElement.getSeq());
				newElement.setType(formElement.getType());
				newElement.setSubject(formElement.getSubject());
				newElement.setPoint(formElement.getPoint());
				newElement.setOther1(formElement.getOther1());
				newElement.setOther2(formElement.getOther2());
				newElement.setOther3(formElement.getOther3());
				newElement.setOther4(formElement.getOther4());
				newElement.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
				newFormElements.add(newElement);
			}
		}
		if(!newFormElements.isEmpty()){
			formElementWriteMapper.insertBatch(newFormElements);
		}else{
			//remove the empty section
			FormSection section = formSectionReadMapper.selectByPrimaryKey(sectionId);
			formSectionWriteMapper.deleteByPrimaryKey(section);
		}
	}

	private void cloneFormElementsNoSection(List<FormElement> formElements, Integer formId) throws BusinessException{
		List<FormElement> newFormElements = new ArrayList<FormElement>();
		if(formElements!=null){
			for(FormElement formElement : formElements){
				FormElement newElement = new FormElement();
				newElement.setFormId(formId);
				newElement.setCode(formElement.getCode());
				newElement.setSeq(formElement.getSeq());
				newElement.setType(formElement.getType());
				newElement.setSubject(formElement.getSubject());
				newElement.setPoint(formElement.getPoint());
				newElement.setOther1(formElement.getOther1());
				newElement.setOther2(formElement.getOther2());
				newElement.setOther3(formElement.getOther3());
				newElement.setOther4(formElement.getOther4());
				newElement.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
				newFormElements.add(newElement);
			}
		}
		if(!newFormElements.isEmpty()){
			formElementWriteMapper.insertBatch(newFormElements);
		}
	}

	@Override
	public void cloneFormElements(FormSection section, FormSection newSection, List<FormElement> formElementsToRemove) throws BusinessException{
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("formId", section.getFormId());
		params.put("sectionId", section.getId());
		List<FormElement> formElements = formElementReadMapper.selectByFormIdAndSectionId(params);

		if(formElementsToRemove != null && !formElementsToRemove.isEmpty()){
			cloneFormElements(removespecifiedElements(formElements,formElementsToRemove), newSection.getFormId(), newSection.getId());
		}else{
			cloneFormElements(formElements, newSection.getFormId(), newSection.getId());
		}
	}

	@Override
	public void cloneFormElements(FormSection section, FormSection newSection) throws BusinessException {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("formId", section.getFormId());
		params.put("sectionId", section.getId());
		List<FormElement> formElements = formElementReadMapper.selectByFormIdAndSectionId(params);

		logger.info("------------------- cloneFormElements -> formId ->" + section.getFormId() + "-> sectionId ->" + section.getId());
		logger.info("------------------- formElements -> size ->" + (CollectionUtils.isEmpty(formElements) ? 0 : formElements.size()));
		cloneFormElements(formElements, newSection.getFormId(), newSection.getId());
	}

	@Override
	public void cloneFormElements(Integer needCheckFormId, Integer formId) throws BusinessException {
		cloneFormElementsNoSection(formElementReadMapper.selectByFormIdAll(needCheckFormId), formId);

	}

	@Override
	public void cloneFormElements(Integer needCheckFormId, Integer newFormId, List<FormElement> formElementsToRemove) throws  BusinessException{
		List<FormElement> formElements = formElementReadMapper.selectByFormIdAll(needCheckFormId);
		if(formElementsToRemove !=null && !formElementsToRemove.isEmpty()){
			cloneFormElementsNoSection(removespecifiedElements(formElements, formElementsToRemove), newFormId);
		}else{
			cloneFormElementsNoSection(formElements, newFormId);
		}
	}

	private List<FormElement> removespecifiedElements(List<FormElement> formElements, List<FormElement> formElementsToRemove){
		Iterator<FormElement> iterator = formElements.iterator();

		while(iterator.hasNext()){
			if(formElementsToRemove.contains(iterator.next())){
				iterator.remove();
			}
		}
		return formElements;
	}

	@Override
	public FormElement getIdByEleAndFromCode(String fromcode, String elecode,String sectioncode) throws BusinessException {
		FormElement formElement = formElementReadMapper.getIdByEleAndFromCode(fromcode, elecode, sectioncode);
		return formElement;
	}

}
