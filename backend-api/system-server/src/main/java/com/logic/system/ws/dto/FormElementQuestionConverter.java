package com.logic.system.ws.dto;

import com.logic.system.domain.FormElement;
import com.logic.system.domain.FormElementCategory;
import com.logic.system.domain.FormElementOptionalAnswer;
import com.logic.system.domain.FormElementReferenceItem;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.FormDropdownOptionsDTO;
import com.logic.common.ws.dto.system.FormElementQuestionDTO;

import java.util.ArrayList;
import java.util.List;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class FormElementQuestionConverter {

    public static FormElement fromDTOToQuestion(FormElementQuestionDTO formElementQuestionDTO) throws BusinessException {
        FormElement formElement = new FormElement();

        formElement.setId(SysUtil.getValidDtoInteger(formElementQuestionDTO.getId(), "Form id"));
        formElement.setCode(formElementQuestionDTO.getCode());
        formElement.setSubject(formElementQuestionDTO.getSubject());

        if (formElementQuestionDTO.getReference_item() != null) {
            List<FormElementReferenceItem> items = new ArrayList<FormElementReferenceItem>();
            List<Integer> list = new ArrayList<Integer>();
            list = formElementQuestionDTO.getReference_item();
            for (Integer reference_item : list) {
                FormElementReferenceItem item = new FormElementReferenceItem();
                item.setFormElementId(formElement.getId());
                item.setReferenceItemId(reference_item);
                items.add(item);
            }
            formElement.setQuestionReferenceItems(items);
        }

        if (null == formElementQuestionDTO.getType()) {
            throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Form_Element_Question_Type);
        }

        if (null != formElementQuestionDTO.getType()) {
            if (formElementQuestionDTO.getType().trim().isEmpty()) {
                throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Empty_Form_Element_Question_Type);
            } else {
                List<String> list = new ArrayList<String>();
                list.add("_AK1");
                list.add("_AK2");
                list.add("_AK3");
                list.add("_AK7");
                list.add("_AK8");
                list.add("_AK9");
                list.add("_AKF");

                if (!list.contains(formElementQuestionDTO.getType())) {
                    throw new BusinessException(ErrorMessageEnum.Form_Question_Insert_Or_Update_Form_Element_Question_Type_Not_Valid);
                }
            }
        }

        formElement.setType(formElementQuestionDTO.getType());
        formElement.setCorrectNumberStart(SysUtil.getValidDtoDouble(formElementQuestionDTO.getNumeric_acceptable_range_start(), "FormElementQuestionDTO correctNumberStart"));
        formElement.setCorrectNumberEnd(SysUtil.getValidDtoDouble(formElementQuestionDTO.getNumeric_acceptable_range_end(), "FormElementQuestionDTO correctNumberEnd"));
        formElement.setCorrectResponse(formElementQuestionDTO.getLogical_acceptable_answer());

        if (formElementQuestionDTO.getForm_dropdown_options() != null) {
            List<FormElementOptionalAnswer> answers = new ArrayList<FormElementOptionalAnswer>();
            List<FormDropdownOptionsDTO> dtos = new ArrayList<FormDropdownOptionsDTO>();
            dtos = formElementQuestionDTO.getForm_dropdown_options();
            for (FormDropdownOptionsDTO dto : dtos) {
                FormElementOptionalAnswer answer = new FormElementOptionalAnswer();
                answer.setFormElementId(formElement.getId());
                answer.setAnswerSeq(dto.getSequence().toString());
                answer.setAnswerText(dto.getName());
                answer.setAcceptable(SysUtil.getValidDtoBoolean(dto.getAcceptable(), "FormElementQuestion acceptable"));
                answers.add(answer);
            }
            formElement.setFormElementOptionalAnswer(answers);
        }

        if (formElementQuestionDTO.getQuestion_category() != null) {
            List<FormElementCategory> categories = new ArrayList<FormElementCategory>();
            List<String> list = new ArrayList<String>();
            list = formElementQuestionDTO.getQuestion_category();
            for (String str : list) {
                FormElementCategory category = new FormElementCategory();
                category.setFormElementId(formElement.getId());
                category.setCategory(str);
                categories.add(category);
            }
            formElement.setQuestionCategories(categories);
        }

        formElement.setStatus(formElementQuestionDTO.getStatus());
        formElement.setFormId(SysUtil.getValidDtoInteger(formElementQuestionDTO.getForm_id(), "FormElementQuestionDto formId"));
        formElement.setSectionId(SysUtil.getValidDtoInteger(formElementQuestionDTO.getSection_id(), "FormElementQuestionDto sectionId"));
        
        formElement.setPoint(Double.valueOf(formElementQuestionDTO.getScore()));
        formElement.setOther1(formElementQuestionDTO.getPart());
        formElement.setOther2(formElementQuestionDTO.getCause());
        formElement.setOther3(formElementQuestionDTO.getCorrective_action());
        formElement.setOther4(formElementQuestionDTO.getMust_true());
        
        return formElement;
    }

    public static FormElementQuestionDTO fromQuestionToDTO(FormElement formElement){
        FormElementQuestionDTO dto = new FormElementQuestionDTO();
        dto.setId(formElement.getId().toString());
        dto.setCode(formElement.getCode());
        dto.setSubject(formElement.getSubject());

        List<FormElementReferenceItem> items = formElement.getQuestionReferenceItems();
        if (items != null) {
            List<Integer> list = new ArrayList<Integer>();
            for (FormElementReferenceItem item : items) {
                list.add(item.getReferenceItemId());
            }
            dto.setReference_item(list);
        }

        dto.setType(formElement.getType());
        dto.setNumeric_acceptable_range_start(formElement.getCorrectNumberStart()==null?null:formElement.getCorrectNumberStart().toString());
        dto.setNumeric_acceptable_range_end(formElement.getCorrectNumberEnd()==null?null:formElement.getCorrectNumberEnd().toString());
        dto.setLogical_acceptable_answer(formElement.getCorrectResponse());

        if (dto.getLogical_acceptable_answer() != null) {
            String[] strArray = dto.getLogical_acceptable_answer().split(",");
            List<FormElementOptionalAnswer> answers = formElement.getFormElementOptionalAnswer();
            if (answers != null) {
                List<FormDropdownOptionsDTO> dtos = new ArrayList<FormDropdownOptionsDTO>();
                for (FormElementOptionalAnswer answer : answers) {
                    FormDropdownOptionsDTO dto2 = new FormDropdownOptionsDTO();
                    dto2.setSequence(answer.getAnswerSeq());
                    dto2.setName(answer.getAnswerText());
                    for (String str : strArray) {
                        if (str.equals(answer.getAnswerSeq())) {
                            dto2.setAcceptable(new Boolean(true).toString());
                            break;
                        }
                        dto2.setAcceptable(new Boolean(false).toString());
                    }
                    dtos.add(dto2);
                }
                dto.setForm_dropdown_options(dtos);
            }
        }

        List<FormElementCategory> categories = formElement.getQuestionCategories();
        if (categories != null) {
            List<String> list = new ArrayList<String>();
            for (FormElementCategory category : categories) {
                list.add(category.getCategory());
            }
            dto.setQuestion_category(list);
        }

        dto.setStatus(formElement.getStatus());
        dto.setForm_id(formElement.getFormId() == null ? null : formElement.getFormId().toString());
        dto.setSection_id(formElement.getSectionId() == null ? null : formElement.getSectionId().toString());
        
        dto.setScore(String.valueOf(formElement.getPoint()));
        dto.setPart(formElement.getOther1());
        dto.setCause(formElement.getOther2());
        dto.setCorrective_action(formElement.getOther3());
        dto.setMust_true(formElement.getOther4());
        
        return dto;
    }
}
