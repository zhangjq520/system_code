package com.logic.system.ws.dto;

import com.logic.system.domain.*;
import com.logic.common.ErrorMessageEnum;
import com.logic.common.enums.ResponseTypeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.DropdownOptionsDTO;
import com.logic.common.ws.dto.system.QuestionDTO;

import java.util.ArrayList;
import java.util.List;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class QuestionConverter {
    public static Question fromDTOToQuestion(QuestionDTO questionDTO) throws BusinessException {
        Question question = new Question();

        question.setId(SysUtil.getValidDtoInteger(questionDTO.getId(), "Question id"));

//        if (null == questionDTO.getType()) {
//            throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Type);
//        }

        if (null != questionDTO.getType()) {
            if (questionDTO.getType().trim().isEmpty()) {
                throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Type);
            } else {
                List<String> list = new ArrayList<String>();

                ResponseTypeEnum[] enums = ResponseTypeEnum.values();
                for(int i = 0 ;i<enums.length; i++)
                {
                    list.add(enums[i].getCode());
                }

                if (!list.contains(questionDTO.getType())) {
                    throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Type_Not_Valid);
                }
            }
        }

        question.setCode(questionDTO.getCode());
        question.setSubject(questionDTO.getSubject());
        question.setPoint(Double.valueOf(questionDTO.getScore()));

        if (questionDTO.getReference_item() != null) {
            List<QuestionReferenceItem> items = new ArrayList<QuestionReferenceItem>();
            List<Integer> list = new ArrayList<Integer>();
            list = questionDTO.getReference_item();
            for (Integer reference_item : list) {
                QuestionReferenceItem questionReferenceItem = new QuestionReferenceItem();
                questionReferenceItem.setQuestionId(question.getId());
                questionReferenceItem.setReferenceItemId(reference_item);
                items.add(questionReferenceItem);
            }
            question.setQuestionReferenceItems(items);
        }

        question.setType(questionDTO.getType());
        question.setCorrectNumberStart(SysUtil.getValidDtoDouble(questionDTO.getNumeric_acceptable_range_start(),
                "QuestionDTO correctNumberStart"));
        question.setCorrectNumberEnd(SysUtil.getValidDtoDouble(questionDTO.getNumeric_acceptable_range_end(),
                "QuestionDTO correctNumberEnd"));
        question.setCorrectResponse(questionDTO.getLogical_acceptable_answer());

        if (questionDTO.getForm_dropdown_options() != null) {
            List<QuestionOptionalAnswer> answers = new ArrayList<QuestionOptionalAnswer>();
            List<DropdownOptionsDTO> dtos = new ArrayList<DropdownOptionsDTO>();
            dtos = questionDTO.getForm_dropdown_options();
            for (DropdownOptionsDTO dto : dtos) {
                QuestionOptionalAnswer questionOptionalAnswer = new QuestionOptionalAnswer();
                questionOptionalAnswer.setQuestionId(question.getId());
                questionOptionalAnswer.setAnswerSeq(dto.getSequence().toString());
                questionOptionalAnswer.setAnswerText(dto.getName());
                questionOptionalAnswer.setAcceptable(SysUtil.getValidDtoBoolean(dto.getAcceptable(), "QuestionDTO acceptAble"));
                answers.add(questionOptionalAnswer);
            }
            question.setQuestionOptionalAnswers(answers);
        }

        if (questionDTO.getQuestion_category() != null) {
            List<QuestionCategory> categories = new ArrayList<QuestionCategory>();
            List<String> list = new ArrayList<String>();
            list = questionDTO.getQuestion_category();
            for (String str : list) {
                QuestionCategory questionCategory = new QuestionCategory();
                questionCategory.setQuestionId(question.getId());
                questionCategory.setCategory(str);
                categories.add(questionCategory);
            }
            question.setQuestionCategories(categories);
        }

        question.setStatus(questionDTO.getStatus());

        if(questionDTO.getOrg_ids() != null) {
            List<OrgQuestion> orgQuestionList = new ArrayList<OrgQuestion>();
            if(!questionDTO.getOrg_ids().trim().equals("")) {
                String[] arr = questionDTO.getOrg_ids().split(",");
                for(String orgId : arr) {
                    OrgQuestion orgQuestion = new OrgQuestion();
                    orgQuestion.setOrgId(Integer.valueOf(orgId));
                    orgQuestionList.add(orgQuestion);
                }
            }
            question.setOrgQuestions(orgQuestionList);
        }
        
        question.setOther1(questionDTO.getPart());
        question.setOther2(questionDTO.getCause());
        question.setOther3(questionDTO.getCorrective_action());
        question.setOther4(questionDTO.getMust_true());
        return question;

    }

    public static QuestionDTO fromQuestionToDTO(Question question){
        QuestionDTO dto = new QuestionDTO();
        dto.setId(question.getId().toString());
        dto.setCode(question.getCode());
        dto.setSubject(question.getSubject());

        List<QuestionReferenceItem> items = question.getQuestionReferenceItems();
        if (items != null) {
            List<Integer> list = new ArrayList<Integer>();
            for (QuestionReferenceItem item : items) {
                list.add(item.getReferenceItemId());
            }
            dto.setReference_item(list);
        }
        
        dto.setScore(String.valueOf(question.getPoint()));

        dto.setType(question.getType());
        dto.setNumeric_acceptable_range_start(question.getCorrectNumberStart() == null ? null : question
                .getCorrectNumberStart().toString());
        dto.setNumeric_acceptable_range_end(question.getCorrectNumberEnd() == null ? null : question.getCorrectNumberEnd()
                .toString());
        dto.setLogical_acceptable_answer(question.getCorrectResponse());

        if (dto.getLogical_acceptable_answer() != null) {
            String[] strArray = dto.getLogical_acceptable_answer().split(",");
            List<QuestionOptionalAnswer> answers = question.getQuestionOptionalAnswers();
            if (answers != null) {
                List<DropdownOptionsDTO> dtos = new ArrayList<DropdownOptionsDTO>();
                for (QuestionOptionalAnswer answer : answers) {
                    DropdownOptionsDTO dto2 = new DropdownOptionsDTO();
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

        List<QuestionCategory> categories = question.getQuestionCategories();
        if (categories != null) {
            List<String> list = new ArrayList<String>();
            for (QuestionCategory category : categories) {
                list.add(category.getCategory());
            }
            dto.setQuestion_category(list);
        }

        dto.setStatus(question.getStatus());

        List<OrgQuestion> orgQuestionList = question.getOrgQuestions();
        if(orgQuestionList != null && orgQuestionList.size() > 0) {
            String orgIds = "";
            for(OrgQuestion orgQuestion : orgQuestionList) {
                Integer orgId = orgQuestion.getOrgId();
                orgIds += orgId + ",";
            }
            if(orgIds.length() > 0) {
                orgIds = orgIds.substring(0, orgIds.length() - 1);
            }
            dto.setOrg_ids(orgIds);
        }
        
        dto.setPart(question.getOther1());
        dto.setCause(question.getOther2());
        dto.setCorrective_action(question.getOther3());
        dto.setMust_true(question.getOther4());
        return dto;
    }
}
