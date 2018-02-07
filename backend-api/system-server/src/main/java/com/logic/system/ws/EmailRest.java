package com.logic.system.ws;


import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.SysCache;
import com.logic.common.util.SysUtil;
import com.logic.system.domain.Mail;
import com.logic.system.domain.Task;
import com.logic.system.service.IIncentiveService;
import com.logic.system.service.ITaskService;
import com.logic.system.service.impl.MailService;
import com.logic.system.service.mail.AuditorMailSenderInfoBuilder;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by ronnieking on 5/25/15.
 */

@Path("/emails")
@Api(value = "email", description = "Email Rest WebServices", position = 1)
public class EmailRest {

  @Autowired
  private MailService mailService;

  @Autowired
  private ITaskService taskService;
  
  @Context
  private HttpServletResponse response;

  @Autowired
  AuditorMailSenderInfoBuilder auditorMailSenderInfoBuilder;
  
  @Autowired
  IIncentiveService incentiveServiceImpl;

  // TODO : Omer create a service on Inspection microservice for this
//  @Autowired
//  InspectionMailService inspectionMailService;
  
//  @Autowired
//  ITaskReferenceService taskReferenceService;

  @POST
  @Path("/common")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Send email", position = 1)
  public Response testSendEmail() {
    CommonResultMap map = new CommonResultMap();
    try {
      Mail mail = new Mail("roy.zhou@logicsolutions.com.cn","This is my subject", RandomStringUtils.randomAlphabetic(500));
      mailService.saveAndSendLogicMail(mail);
//      incentiveServiceImpl.sendEmail("1027191493@qq.com", "hello", "hello");
      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @GET
  @Path("/manual_send_email/{taskId}")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Send email", position = 1)
  public Response manualSendEmail(@PathParam("taskId") Integer taskId) {
    CommonResultMap map = new CommonResultMap();
    try {
      Task task = (Task)taskService.get(taskId);

      auditorMailSenderInfoBuilder.setTask(task);

      mailService.saveAndSendLogicMail(auditorMailSenderInfoBuilder.buildMailSenderInfos());

      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  @POST
  @Path("/ftl")
  @Produces(MediaType.APPLICATION_JSON)
  @ApiOperation(value = "Send ftl email", position = 2)
  public Response testSendFtlEmail() {
    CommonResultMap map = new CommonResultMap();
    try {
      Mail mail = new Mail();
      mail.setMailFrom(SysCache.getInstance().getSysConfig("mail_from"));
      mail.setSubject("test ftl email");
      mail.setMailTo("gary.wang@logicsolutions.com.cn");
      Map<String, String> root = new HashMap<String, String>();
      root.put("test", "test");
      String serverRoot = SysCache.getInstance().getSysConfig("server_root") == null ? "" : SysCache.getInstance().getSysConfig("server_root");
      root.put("serverRoot",serverRoot);
      String content = mailService.getFtlContent("test.ftl", root);
      mail.setContent(content);
      mailService.saveAndSendMail(mail);
      map.setResult(CommonResult.SUCCESS, "Create success");
    } catch (Exception e) {
      e.printStackTrace();
      map.setResult(CommonResult.ERROR, e.getMessage());
    }
    SysUtil.additionalResonseHeader(map,response);
    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
  }

  // TODO : Omer create a service on Inspection microservice for this
//  @POST
//  @Path("/createInspectionTask")
//  @Produces(MediaType.APPLICATION_JSON)
//  @ApiOperation(value = "Post email content of inspection task", position = 3)
//  public Response postEmailContent() {
//    CommonResultMap map = new CommonResultMap();
//    try {
//      TaskReference taskReference = (TaskReference) taskReferenceService.get(4);
//      inspectionMailService.sendInspectionEmail(taskReference);
//      map.setResult(CommonResult.SUCCESS, "Create success");
//    } catch (Exception e) {
//      e.printStackTrace();
//      map.setResult(CommonResult.ERROR, e.getMessage());
//    }
//    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
//  }
//
//  @POST
//  @Path("/verificationCorrectiveAction")
//  @Produces(MediaType.APPLICATION_JSON)
//  @ApiOperation(value = "Send ftl email", position = 2)
//  public Response testInspectionEmail() {
//    CommonResultMap map = new CommonResultMap();
//    try {
//      TaskReference taskReference = (TaskReference)taskReferenceService.get(55);
//      inspectionMailService.sendVerifyCorrectiveActionEmail(taskReference);
//      map.setResult(CommonResult.SUCCESS, "Send success");
//    } catch (Exception e) {
//      e.printStackTrace();
//      map.setResult(CommonResult.ERROR, e.getMessage());
//    }
//    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
//  }
//  @POST
//  @Path("/createReviewDeviationTask")
//  @Produces(MediaType.APPLICATION_JSON)
//  @ApiOperation(value = "Post email content of creating review deviation task", position = 5)
//  public Response postEmailOfReviewDeviation() {
//    CommonResultMap map = new CommonResultMap();
//    try {
//      TaskReference taskReference = (TaskReference) taskReferenceService.get(284);
//      List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
//      Map<String, Object> mmap = new HashMap<String, Object>();
//      //mmap.put("deviation", deviation);
//      //mmap.put("auditSubject", auditSubject);
//      list.add(mmap);
//      inspectionMailService.sendReviewDeviationTaskEmail("EHS Admin", taskReference, list, "_B32");
//      map.setResult(CommonResult.SUCCESS, "Create success");
//    } catch (Exception e) {
//      e.printStackTrace();
//      map.setResult(CommonResult.ERROR, e.getMessage());
//    }
//    return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
//  }
}
