package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.enums.ResponseTypeEnum;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.DropdownOptionsDTO;
import com.logic.common.ws.dto.system.QuestionDTO;
import com.logic.system.domain.OrgQuestion;
import com.logic.system.domain.Question;
import com.logic.system.domain.QuestionCategory;
import com.logic.system.domain.QuestionOptionalAnswer;
import com.logic.system.domain.QuestionReferenceItem;
import com.logic.system.persistence.read.QuestionReadMapper;
import com.logic.system.persistence.write.QuestionOptionalAnswerWriteMapper;
import com.logic.system.persistence.write.QuestionWriteMapper;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IQuestionCategoryService;
import com.logic.system.service.IQuestionOptionalAnswerService;
import com.logic.system.service.IQuestionReferenceService;
import com.logic.system.service.IQuestionService;

@Service
public class QuestionService implements IQuestionService {

  @Autowired
  QuestionReadMapper questionReadMapper;

  @Autowired
  QuestionWriteMapper questionWriteMapper;

  @Autowired
  QuestionOptionalAnswerWriteMapper questionOptionalAnswerWriteMapper;

  @Autowired
  IQuestionReferenceService questionReferenceService;

  @Autowired
  IQuestionCategoryService questionCategoryService;

  @Autowired
  IQuestionOptionalAnswerService questionOptionalAnswerService;

  @Autowired
  private HttpServletRequest request;
  
  @Autowired
  ICodeService codeService;

  @Override
  @Transactional(rollbackFor = BusinessException.class)
  public int insert(Object obj) throws BusinessException {
    Question question = (Question) obj;
    Boolean isValidForQuestionInsert = this.validateForInsert(question);
    if (isValidForQuestionInsert) {
      switch (ResponseTypeEnum.toType(question.getType())) {
      case ShortText:
        basicQuestionInsert(question);
        break;
      case LongText:
        basicQuestionInsert(question);
        break;
      case Numberic:
        if (validForNumbericAnswerInsert(question)) {
          basicQuestionInsert(question);
        }
        break;
      case Logical:
        if (validForLogicalAnswerInsert(question)) {
          basicQuestionInsert(question);
        }
        break;
      case SingleSelectionDropdown:
      case MultipleSelectionDropdown:
        basicQuestionInsert(question);
        if (validForOptionalAnswerInsert(question)) {
          List<QuestionOptionalAnswer> answers = question.getQuestionOptionalAnswers();
          List<String> list = new ArrayList<String>();
          for (QuestionOptionalAnswer answer : answers) {
            answer.setQuestionId(question.getId());
            questionOptionalAnswerService.insert(answer);
            if (answer.getAcceptable()) {
              list.add(answer.getAnswerSeq());
            }
          }
          String correctResponse = listToString(list);
          Map<String, Object> map = new HashMap<String, Object>();
          map.put("id", question.getId().toString());
          map.put("optionalAnswerId", correctResponse);
          questionWriteMapper.updateCorrectResponseById(map);
        }
        break;
      case Toshiba:
    	  basicQuestionInsert(question);
    	  break;
      default:
        break;
      }

      if(question.getOrgQuestions() != null && question.getOrgQuestions().size() > 0) {
        for(OrgQuestion orgQuestion : question.getOrgQuestions()) {
          orgQuestion.setQuestionId(question.getId());
        }
        questionWriteMapper.insertOrgQuestions(question.getOrgQuestions());
      }
    }
    return question.getId();
  }

  @SuppressWarnings("unchecked")
  @Override
  public Question get(Integer id) throws BusinessException {
    Question question = basicQuestionGet(id);
    if (question != null) {
      if (ResponseTypeEnum.SingleSelectionDropdown.getCode().equals(question.getType())
          || ResponseTypeEnum.MultipleSelectionDropdown.getCode().equals(question.getType())) {
        List<QuestionOptionalAnswer> answers = (List<QuestionOptionalAnswer>) questionOptionalAnswerService.get(id);
        if (answers != null) {
          question.setQuestionOptionalAnswers(answers);
        }
      }

      question.setOrgQuestions(questionReadMapper.selectOrgQuestions(id));
    }
    return question;
  }

  @Override
  @Transactional(rollbackFor = BusinessException.class)
  public void update(Object obj) throws BusinessException {
    Question question = (Question) obj;
    Boolean isValidForQuestionUpdate = this.validateForUpdate(question);
    if (isValidForQuestionUpdate) {
      if(null!=question.getType() && !"".equals(question.getType())) {
        switch (ResponseTypeEnum.toType(question.getType())) {
          case ShortText:
            basicQuestionUpdate(question);
            break;
          case LongText:
            basicQuestionUpdate(question);
            break;
          case Numberic:
            if (validForNumbericAnswerUpdate(question)) {
              basicQuestionUpdate(question);
            }
            break;
          case Logical:
            if (validForLogicalAnswerUpdate(question)) {
              basicQuestionUpdate(question);
            }
            break;
          case SingleSelectionDropdown:
          case MultipleSelectionDropdown:
            basicQuestionUpdate(question);

            if (validForOptionalAnswerUpdate(question)) {
              questionOptionalAnswerWriteMapper.deletePhysicallyByQuestionId(question.getId());
              List<QuestionOptionalAnswer> answers = question.getQuestionOptionalAnswers();

              if (null == answers) {
                break;
              }

              List<String> list = new ArrayList<String>();
              for (QuestionOptionalAnswer answer : answers) {
                answer.setQuestionId(question.getId());
                questionOptionalAnswerService.insert(answer);
                if (answer.getAcceptable()) {
                  list.add(answer.getAnswerSeq());
                }
              }

              String correctResponse = listToString(list);
              Map<String, Object> map = new HashMap<String, Object>();
              map.put("id", question.getId().toString());
              map.put("optionalAnswerId", correctResponse);
              questionWriteMapper.updateCorrectResponseById(map);
            }
            break;
          case Toshiba:
            basicQuestionUpdate(question);
            break;
          case Other:
            throw new BusinessException(ErrorMessageEnum.Question_Update_Wrong_Type);
          default:
            break;
        }
      }else{
          basicQuestionUpdate(question);
      }
      if(question.getOrgQuestions() != null) {
        if(question.getOrgQuestions().size() > 0) {
          questionWriteMapper.deleteOrgQuestions(question.getId());
          for(OrgQuestion orgQuestion : question.getOrgQuestions()) {
            orgQuestion.setQuestionId(question.getId());
          }
          questionWriteMapper.insertOrgQuestions(question.getOrgQuestions());
        }else {
          questionWriteMapper.deleteOrgQuestions(question.getId());
        }
      }
    }
  }

  @Override
  @Transactional(rollbackFor = BusinessException.class)
  public void delete(String ids) throws BusinessException {
    String[] idArr = ids.split(",");
    for (String id : idArr) {
      Question question = get(Integer.valueOf(id));
      if (question == null) {
        throw new BusinessException(ErrorMessageEnum.Question_Delete_Question_Not_Exist, Integer.valueOf(id));
      } else {
        question.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
        questionWriteMapper.deleteByPrimaryKey(question);
        questionReferenceService.delete(id);
        questionCategoryService.delete(id);
        questionOptionalAnswerService.delete(id);
        questionWriteMapper.deleteOrgQuestions(Integer.valueOf(id));
      }
    }
  }

  @Override
  public List<Object> query(QueryUtil queryUtil) {
    List<Object> list = new ArrayList<Object>();
    try {
      List<QuestionDTO> dtos = questionReadMapper.selectQuestions(queryUtil);
      for (QuestionDTO dto : dtos) {
        List<Integer> referenceItemList = new ArrayList<Integer>();
        List<String> typeList = new ArrayList<String>();
        if(dto.getsReference_item() != null && !dto.getsReference_item().equals("")) {
          String[] strReferenceItem = dto.getsReference_item().split(",");
          for (String str : strReferenceItem) {
            referenceItemList.add(Integer.valueOf(str));
          }
        }
        
        if(dto.getSquestion_category()!=null && !"".equals(dto.getSquestion_category())){
        	String[] questionTypes = dto.getSquestion_category().split(",");
        	List<String> questionTypeList = new ArrayList<String>();
        	for(String questionType : questionTypes){
        		questionTypeList.add(questionType);
        	}
        	dto.setQuestion_category(questionTypeList);
        }
        
        dto.setReference_item(referenceItemList);

        if(ResponseTypeEnum.SingleSelectionDropdown.getCode().equals(dto.getType())) {
          if (dto.getAcceptable_answer() != null) {
            String[] strArray = dto.getAcceptable_answer().split(",");
            List<QuestionOptionalAnswer> answers = (List<QuestionOptionalAnswer>) questionOptionalAnswerService.get(Integer.valueOf(dto.getId()));
            if (answers != null) {
              List<DropdownOptionsDTO> optionsDto = new ArrayList<DropdownOptionsDTO>();
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
                optionsDto.add(dto2);
              }
              dto.setForm_dropdown_options(optionsDto);
            }
          }
        }
        list.add(dto);
      }
    }catch(Exception e) {
      e.printStackTrace();
    }
    return list;
  }

  @Override
  public Map<String, Object> initFormData() {
    return null;
  }

  @Override
  public List<Object> queryReferenceItem(QueryUtil queryUtil) {
    return null;
  }

  private void basicQuestionInsert(Question question) throws BusinessException {
    question.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
    questionWriteMapper.insertSelective(question);
    List<QuestionReferenceItem> items = question.getQuestionReferenceItems();
    if(items != null) {
      for (QuestionReferenceItem item : items) {
        item.setQuestionId(question.getId());
        questionReferenceService.insert(item);
      }
    }
    if (validForCategoryInsert(question)) {
      List<QuestionCategory> categories = question.getQuestionCategories();
      for (QuestionCategory category : categories) {
        category.setQuestionId(question.getId());
        questionCategoryService.insert(category);
      }
    }
  }

  private Question basicQuestionGet(Integer id) throws BusinessException {
    Question question = questionReadMapper.selectByPrimaryKey(id);
    if (question != null) {
      @SuppressWarnings("unchecked")
      List<QuestionReferenceItem> items = (List<QuestionReferenceItem>) questionReferenceService.get(id);
      if (items != null) {
        question.setQuestionReferenceItems(items);
      }
      @SuppressWarnings("unchecked")
      List<QuestionCategory> categories = (List<QuestionCategory>) questionCategoryService.get(id);
      if (categories != null) {
        question.setQuestionCategories(categories);
      }
    }
    return question;
  }

  private void basicQuestionUpdate(Question question) throws BusinessException {
    question.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
    questionWriteMapper.updateByPrimaryKeySelective(question);

    List<QuestionReferenceItem> items = question.getQuestionReferenceItems();
    if (null != items) {
      questionReferenceService.delete(question.getId().toString());

      if (!items.isEmpty()) {
        for (QuestionReferenceItem item : items) {
          item.setQuestionId(question.getId());
          questionReferenceService.insert(item);
        }
      }
    }

    List<QuestionCategory> categories = question.getQuestionCategories();
    if (null != categories) {
      if (!categories.isEmpty()) {
        questionCategoryService.delete(question.getId().toString());
        for (QuestionCategory category : categories) {
          category.setQuestionId(question.getId());
          questionCategoryService.insert(category);
        }
      }
    }
  }

  @Override
  public Boolean validate(Object obj) throws BusinessException {
    Question question = (Question) obj;
    Boolean ret = false;

    if (question == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Question_Object);
    }
    
    if (null != question.getCode() && !StringUtils.isEmpty(question.getCode())) {
      int i = questionReadMapper.checkCodeUnique(question);
      if (i > 0) {
        throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Code_Already_Exist, question.getCode());
      }
    }
    
    boolean isTrueStatus = false;
    if (question.getStatus() != null && !question.getStatus().trim().isEmpty()) {
      List<Code> codeList = codeService.getChildCodes(SystemEnum._A9.name());
      for (int j = 0; j < codeList.size(); j++) {
        if (question.getStatus().equals(codeList.get(j).getCode())) {
          isTrueStatus = true;
        }
      }
    }
    if (!isTrueStatus && question.getStatus() != null) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Status_Not_Valid,question.getStatus());
    }
    

    ret = true;
    return ret;
  }

  @Override
  public Boolean validateForInsert(Object obj) throws BusinessException {
    Question question = (Question) obj;
    Boolean ret = validate(question);
    
    if(null != question.getId())
    {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_ID_Not_Empty);
    }
    
//    if (StringUtils.isEmpty(question.getCode())) {
//      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Code);
//    }

    if (StringUtils.isEmpty(question.getType())) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Type);
    }

    if (StringUtils.isEmpty(question.getSubject())) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Subject);
    }
    
    return ret;
  }

  @Override
  public Boolean validateForUpdate(Object obj) throws BusinessException {
    Question question = (Question) obj;
    
    Boolean ret = validate(question);
    
    //update id can't be empty
    
    if (get(question.getId()) == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Update_Question_Not_Exist, question.getId());
    }

//    if (null != question.getCode() && StringUtils.isEmpty(question.getCode())) {
//      throw new BusinessException(ErrorMessageEnum.Question_Update_Empty_Code);
//    }

    //question type
    if (null != question.getType() && StringUtils.isEmpty(question.getType())) {
      throw new BusinessException(ErrorMessageEnum.Question_Update_Empty_Type);
    }

    if (null != question.getSubject() && StringUtils.isEmpty(question.getSubject())) {
      throw new BusinessException(ErrorMessageEnum.Question_Update_Empty_Subject);
    }
    ret = true;
    return ret;
  }

  @Override
  public Boolean validateForDelete(Object obj) throws BusinessException {
    return true;
  }

  private Boolean validForReferenceInsert(Question question) throws BusinessException {
    Boolean ret = false;

    if (question.getQuestionReferenceItems() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Reference_List);
    }

    ret = true;
    return ret;
  }

  private Boolean validForCategoryInsert(Question question) throws BusinessException {
    Boolean ret = false;

    if (question.getQuestionCategories() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Category_List);
    }

    ret = true;
    return ret;
  }

  private Boolean validForNumbericAnswerInsert(Question question) throws BusinessException {
    Boolean ret = false;

    if (question.getCorrectNumberStart() == null || question.getCorrectNumberEnd() == null) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Numberic_Answer_Correct_Number);
    }
    

    ret = true;
    return ret;
  }

  private Boolean validForLogicalAnswerInsert(Question question) throws BusinessException {
    Boolean ret = false;

    
    if (StringUtils.isEmpty(question.getCorrectResponse())) {
      throw new BusinessException(ErrorMessageEnum.Question_Insert_Or_Update_Empty_Logical_Answer_Correct_Response);
    }

    ret = true;
    return ret;
  }

  private Boolean validForOptionalAnswerInsert(Question question) throws BusinessException {
    Boolean ret = false;

 
    if (question.getQuestionOptionalAnswers() == null) {
      throw new BusinessException(
          ErrorMessageEnum.Question_Insert_Or_Update_Empty_Optional_Answer_Question_Optional_Answers);
    }

    ret = true;
    return ret;
  }

  private Boolean validForNumbericAnswerUpdate(Question question) throws BusinessException {
    //Boolean ret = validForNumbericAnswerInsert(question);
    Boolean ret = true;
    return ret;
  }

  private Boolean validForLogicalAnswerUpdate(Question question) throws BusinessException {
    //Boolean ret = validForLogicalAnswerInsert(question);
    Boolean ret = true;
    return ret;
  }

  private Boolean validForOptionalAnswerUpdate(Question question) throws BusinessException {
    //Boolean ret = validForOptionalAnswerInsert(question);

    Boolean ret = true;
    return ret;
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
}
