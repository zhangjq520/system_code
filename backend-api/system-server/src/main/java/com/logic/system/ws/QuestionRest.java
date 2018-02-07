package com.logic.system.ws;

import com.logic.common.domain.Code;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.enums.SystemEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.QuestionDTO;
import com.logic.system.domain.Question;
import com.logic.system.service.ICodeService;
import com.logic.system.service.IQuestionService;
import com.logic.system.ws.dto.CodeConverter;
import com.logic.system.ws.dto.QuestionConverter;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Path("/questions")
@Api(value = "question_bank", description = "Question Bank Rest WebServices", position = 26)
public class QuestionRest {

  @Autowired
  @Qualifier("questionService")
  IQuestionService questionService;

  @Autowired
  ICodeService codeService;
  
  @Context
  private  HttpServletResponse response;

  @POST
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Create a new question based on the passed question object.", position = 1)
  public Response insert(@ApiParam(value = "param", required = true) QuestionDTO dto) {
    CommonResultMap map = new CommonResultMap();

    try {
      Question question = QuestionConverter.fromDTOToQuestion(dto);
      Integer id = questionService.insert(question);
      map.setData(id);
      map.setResult(CommonResult.SUCCESS, "Create success");

    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());

    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/{questionId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Get a question object by question ID.", position = 2)
  public Response get(@ApiParam(value = "param", required = true) @PathParam("questionId") Integer questionId) {
    CommonResultMap map = new CommonResultMap();
    try {
      Question question = (Question) questionService.get(questionId);
      QuestionDTO dto = null;
      if (question != null) {
        dto = QuestionConverter.fromQuestionToDTO(question);
      }
      map.setData(dto);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @PUT
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Update a question based on the passed-in question object.", position = 3)
  public Response update(@ApiParam(value = "param", required = true) QuestionDTO dto) {
    CommonResultMap map = new CommonResultMap();
    try {
      Question question = QuestionConverter.fromDTOToQuestion(dto);
      questionService.update(question);
      map.setResult(CommonResult.SUCCESS, "Update success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @DELETE
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Delete question by question ID.", position = 4)
  public Response delete(@ApiParam(value = "param", required = true) @QueryParam("id") String id) {
    CommonResultMap map = new CommonResultMap();
    try {
      questionService.delete(id);
      map.setResult(CommonResult.SUCCESS, "Delete success");
    } catch (BusinessException e) {
      e.printStackTrace();
      map.setResult(e);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @POST
  @Path("/list")
  @Produces(MediaType.APPLICATION_JSON)
  @Consumes(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Retrieve a question list, need use field 'org_id' to search the question in the org", position = 5)
  public Response query(@ApiParam(value = "param", required = true) QueryUtil queryUtil) {
    CommonResultMap map = new CommonResultMap();
    try {
      queryUtil.getPagingTool().calculateStartIndex();
      List<Object> questionList = questionService.query(queryUtil);
      Integer totalCount = queryUtil.getPagingTool().getTotalNum();
      map.setResult(CommonResult.SUCCESS);
      map.setData(questionList);
      map.setResultTotalCount(totalCount);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/initData")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Initialize question Data", position = 7)
  public Response initData() {
    CommonResultMap map = new CommonResultMap();
    try {
      List<CodeDTO> questionTypeList = codeService.getHierarchyCodes(SystemEnum._AN.name());
      List<CodeDTO> responseTypeList = getCodeList(SystemEnum._AK.name());
      List<CodeDTO> logicalAnswerTypeList = getCodeList(SystemEnum._AM.name());
      List<CodeDTO> statusList = getCodeList(SystemEnum._A9.name());

      Map<String, Object> resultMap = new HashMap<String, Object>();
      resultMap.put("questionTypeList", questionTypeList);
      resultMap.put("responseTypeList", responseTypeList);
      resultMap.put("logicalAnswerTypeList", logicalAnswerTypeList);
      resultMap.put("statusList", statusList);
      map.setData(resultMap);
      map.setResult(CommonResult.SUCCESS);
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  private List<CodeDTO> getCodeList(String parentCode) {
    List<Code> codeList = codeService.getChildCodes(parentCode);
    List<CodeDTO> dtoList = null;
    if (codeList != null && codeList.size() > 0) {
      dtoList = new ArrayList<CodeDTO>();
      for (Code code : codeList) {
        CodeDTO codeDto = CodeConverter.fromCodeToCodeDTO(code);
        dtoList.add(codeDto);
      }
    }
    return dtoList;
  }
}
