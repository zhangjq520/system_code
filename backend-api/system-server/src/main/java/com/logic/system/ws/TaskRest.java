package com.logic.system.ws;


import com.logic.common.domain.Code;
import com.logic.common.security.SecurityUtils;
import com.logic.common.ws.dto.system.*;
import com.logic.system.domain.*;
import com.logic.system.service.*;
import com.logic.system.service.impl.*;
import com.logic.system.service.mail.DispatchMailSenderInfoBuilder;
import com.logic.system.service.utils.ToshibaStatusFlowHelper;
import com.logic.system.ws.dto.*;
import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.QueryUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Path("/tasks")
@Api(value = "task", description = "Task Rest WebServices")
public class TaskRest {
    @Autowired
    private ITaskService taskService;

    @Autowired
    private TaskPeopleService taskPeopleService;

    @Autowired
    private TaskCommentService taskCommentService;

    @Autowired
    private ITaskFormService taskFormService;

    @Autowired
    private TaskDateService taskDateService;

    @Autowired
    private TaskLogService taskLogService;

    @Autowired
    private IUserService userService;

    @Autowired
    private FormResponseMasterService formResponseMasterService;

    @Autowired
    @Qualifier("formQuestionService")
    IFormQuestionService formQuestionService;

    @Autowired
    private FormResponseDetailService formResponseDetailService;

    @Autowired
    private PDCorrectiveActionDetailService pdCorrectiveActionDetailService;

    @Autowired
    private PDCorrectiveActionMasterService pdCorrectiveActionMasterService;

    @Autowired
    @Qualifier("codeService")
    private ICodeService codeService;

    @Autowired
    private IFileService fileService;

    /**
     * GET  /:taskId -> Get the "id" task.
     */
    @GET
    @Path("/{taskId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one task", position = 1)
    public Response getOneTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        CommonResultMap map = new CommonResultMap();
        try {
            Task taskFromDB = (Task) taskService.get(taskId);
            TaskDTO taskDTO = null;
            if (taskFromDB != null) {
                taskDTO = taskService.getTaskDetails(taskFromDB.getId(), taskFromDB.getTaskType());
                taskDTO.setTask_ref_id(taskFromDB.getTaskRefId());

                taskDTO.setValid_status_list(ToshibaStatusFlowHelper.getInstance().getAvailableStatusValues(
                        taskDTO.getStatus(), taskDTO.getTask_type()));

                // Set task people
                List<TaskPeopleDTO> taskPeopleDTOs = taskPeopleService.getDTOsByTaskId(taskId);
                taskDTO.setTask_people(taskPeopleDTOs);

                // Set task comments
                List<TaskComment> taskComments = taskCommentService.getByTaskId(taskId);
                List<TaskCommentDTO> taskCommentDTOs = TaskCommentConverter.fromTaskCommentsToTaskCommentDTOs(taskComments);
                for (TaskCommentDTO taskCommentDTO : taskCommentDTOs) {
                    User user = (User) userService.get(taskCommentDTO.getUser_id());
                    if (user.getPersonalInfo() != null) {
                        taskCommentDTO.setUser_name(user.getPersonalInfo().getLastName() + " " + user.getPersonalInfo().getFirstName());
                    } else {
                        taskCommentDTO.setUser_name(user.getLoginId());
                    }

                }
                taskDTO.setTask_comments(taskCommentDTOs);

                // Set task Dates
                List<TaskDate> taskDates = taskDateService.getByTaskId(taskId);
                List<TaskDateDTO> taskDateDTOs = TaskDateConverter.fromTaskDatesToTaskDateDTOs(taskDates);
                taskDTO.setTask_dates(taskDateDTOs);

                // Set task Forms
                List<TaskForm> taskForms = taskFormService.getByTaskId(taskId);
                List<TaskFormDTO> taskFormDTOs = TaskFormConverter.fromTaskFormsToTaskFormDTOs(taskForms);
                taskDTO.setTask_forms(taskFormDTOs);

                // Set task logs
//                List<TaskLog> taskLogs = taskLogService.getByTaskId(taskId);
//                List<TaskLogDTO> taskLogDTOs = TaskLogConverter.fromTaskLogsToTaskLogDTOs(taskLogs);
//                for (TaskLogDTO taskLogDTO : taskLogDTOs){
//                    User user = (User) userService.get(taskLogDTO.getUser_id());
//                    if (user.getPersonalInfo() != null){
//                        taskLogDTO.setUser_name(user.getPersonalInfo().getLastName() + " " + user.getPersonalInfo().getFirstName());
//                    }else{
//                        taskLogDTO.setUser_name(user.getLoginId());
//                    }
//
//                }
                List<TaskLogRootDTO> taskLogs = taskLogService.getRootByTaskId(taskId);
                taskDTO.setTask_logs(taskLogs);

                map.setData(taskDTO);
                map.setResult(CommonResult.SUCCESS);
            } else {
                map.setResult(CommonResult.ERROR, "Task Not Found!");
            }

        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/{taskId}/callback")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one task", position = 1)
    public Response sendCallback(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        CommonResultMap map = new CommonResultMap();
        try {
            taskService.sendWritebackStatus(taskId);
            map.setResult(CommonResult.SUCCESS, "Process success");
        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * GET  /initData -> Get the initial data for the pages.
     */
    @GET
    @Path("/filterData")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get one task", position = 1)
    public Response getFilterData() {
        CommonResultMap map = new CommonResultMap();
        List<String> projectNos = taskService.getAllProjectNos();
        List<String> projectNames = taskService.getAllProjectNames();
        List<String> machineNos = taskService.getAllMachineNos();
        List<String> assignees = taskService.getAllAssignees();
        Map<String, Object> retMap = new HashMap<String, Object>();
        retMap.put("project_no_list", projectNos);
        retMap.put("project_name_list", projectNames);
        retMap.put("machine_no_list", machineNos);
        retMap.put("assignee_list", assignees);
        map.setData(retMap);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @Autowired
    private DispatchMailSenderInfoBuilder dispatchMailSenderInfoBuilder;

    @Autowired
    private MailService mailService;
    /**
     * POST  / -> Create a new task.
     * toshiba server will call this one once a new task is created
     */
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Create a new task from given task object", position = 2)
    public Response createTask(@ApiParam(value = "Task Object", required = true) TaskDTO taskDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            Task task = TaskConverter.fromTaskDTOToTask(taskDTO);
            task.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            User taskAssign = userService.getByLoginId(taskDTO.getLogin_id());

            taskService.createTask(task, taskAssign);

            map.setData(task.getId());
            map.setResult(CommonResult.SUCCESS, "Create success");
        } catch (BusinessException e) {
            map.setResult(CommonResult.BUSINESS_EXCEPTION);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * POST  /list -> List of the tasks matching query criteria
     */
    @POST
    @Path("/list")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the list of the task matching query criteria", position = 3)
    public Response getTaskList(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<TaskDTO> tasks = taskService.getTasks(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(tasks);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * POST  /list -> List of the tasks matching query criteria
     */
    @POST
    @Path("/list_with_role")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Gets the list of the task matching query criteria", position = 3)
    public Response getTaskListWithRol(@ApiParam(value = "Query Object", required = true) QueryUtil queryUtil) {
        CommonResultMap map = new CommonResultMap();
        try {
            queryUtil.getPagingTool().calculateStartIndex();
            List<TaskDTO> tasks = taskService.getTasksByRole(queryUtil);
            Integer totalCount = queryUtil.getPagingTool().getTotalNum();
            map.setResult(CommonResult.SUCCESS);
            map.setData(tasks);
            map.setResultTotalCount(totalCount);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
    /**
     * PUT  /:taskId -> Updates an existing task.
     */
    @PUT
    @Path("/{taskId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a given task", position = 4)
    public Response updateTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                               @ApiParam(value = "Task Object", required = true) TaskDTO taskDTO) {

        CommonResultMap map = new CommonResultMap();
        try {
//            Task task = TaskConverter.fromTaskDTOToTask(taskDTO);
//            task.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
//            task.setId(taskId);
//            taskService.update(task);

            taskDTO.setId(taskId);
            taskService.saveOrUpdate(taskDTO);

            map.setResult(CommonResult.SUCCESS, "Update success");
        } catch (BusinessException e) {
            e.printStackTrace();
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * DELETE  /:taskId -> Delete given task.
     */
    @DELETE
    @Path("/{taskId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Delete task.", position = 5)
    public Response deleteTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        // TODO consult Ronnie how to delete, we may need to delete soft, or we may need to delete
        // TODO the relations as well such as people, comments, logs and dates
        CommonResultMap map = new CommonResultMap();
        try {
            taskService.delete(String.valueOf(taskId));
            map.setResult(CommonResult.SUCCESS, "Delete success");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    // Task People
    //
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * GET  /:taskId/people -> Get the list of people for given task
     */
    @GET
    @Path("/{taskId}/people")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get task people list", position = 6)
    public Response getTaskPeople(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {

        CommonResultMap map = new CommonResultMap();
        List<TaskPeopleDTO> taskPeopleDTOs = taskPeopleService.getDTOsByTaskId(taskId);
        map.setData(taskPeopleDTOs);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    /**
     * POST  /:taskId/people -> Add a new person to given task {TaskPeopleDTO}
     */
    @POST
    @Path("/{taskId}/people")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Add a new person to task", position = 7)
    public Response addPersonToTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                    @ApiParam(value = "Task Person", required = true) TaskPeopleDTO taskPeopleDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskPeople taskPeople = TaskPeopleConverter.fromTaskPeopleDTOToTaskPeople(taskPeopleDTO);
            taskPeople.setTaskId(taskId);
            taskPeople.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskPeopleService.insert(taskPeople);
            map.setResult(CommonResult.SUCCESS, "Person added to Task successfully");

        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:taskId/people/:personId -> updates the given person for given task {TaskPeopleDTO}
     * (maybe can update the responsibility field)
     */
    @PUT
    @Path("/{taskId}/people/{personId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a person in task", position = 8)
    public Response updateTaskPerson(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                     @ApiParam(value = "Person Id", required = true) @PathParam("personId") Integer personId,
                                     @ApiParam(value = "Task Person", required = true) TaskPeopleDTO taskPeopleDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskPeople taskPeople = TaskPeopleConverter.fromTaskPeopleDTOToTaskPeople(taskPeopleDTO);
            taskPeople.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskPeople.setId(personId);
            taskPeople.setTaskId(taskId);
            taskPeopleService.update(taskPeople);
            map.setResult(CommonResult.SUCCESS, "Task person updated successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * DELETE  /:taskId/people/:personId -> removes the given person from the task people list
     */
    @DELETE
    @Path("/{taskId}/people/{personId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Remove person from the task.", position = 9)
    public Response removePersonFromTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                         @ApiParam(value = "Person Id", required = true) @PathParam("personId") Integer personId) {
        CommonResultMap map = new CommonResultMap();
        try {
            taskPeopleService.delete(String.valueOf(personId));
            map.setResult(CommonResult.SUCCESS, "Person removed from task successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    // Task Forms
    //
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * GET  /:taskId/forms -> Get the list of forms for given task
     */
    @GET
    @Path("/{taskId}/forms")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "List of forms for the given task", position = 10)
    public Response getTasksForms(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        CommonResultMap map = new CommonResultMap();
        List<TaskForm> taskForms = taskFormService.getByTaskId(taskId);
        List<TaskFormDTO> taskFormDTOs = TaskFormConverter.fromTaskFormsToTaskFormDTOs(taskForms);

        map.setData(taskFormDTOs);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    /**
     * POST  /:taskId/forms -> Adds a new form to task {FormDTO}
     */
    @POST
    @Path("/{taskId}/forms")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Add a new form to the task", position = 11)
    public Response addFormToTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                  @ApiParam(value = "Task Form", required = true) TaskFormDTO taskFormDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskForm taskForm = TaskFormConverter.fromTaskFormDTOToTaskFrom(taskFormDTO);
            taskForm.setTaskId(taskId);
            taskForm.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());

            taskFormService.insert(taskForm);
            map.setResult(CommonResult.SUCCESS, "Form added to Task successfully");

        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:taskId/forms/:formId -> Updates given form for the task {FormDTO}
     */
    @PUT
    @Path("/taskForms/{taskFormId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a form in task", position = 12)
    public Response updateTaskForm(@ApiParam(value = "Task Form Id", required = true) @PathParam("taskFormId") Integer taskFormId,
                                   @ApiParam(value = "Task Form", required = true) TaskFormDTO taskFormDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskForm taskForm = TaskFormConverter.fromTaskFormDTOToTaskFrom(taskFormDTO);
            taskForm.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskForm.setId(taskFormId);
            taskFormService.update(taskForm);
            map.setResult(CommonResult.SUCCESS, "Task form updated successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * DELETE  /:taskId/forms/:formId -> Removes a given form from Task
     */
    @DELETE
    @Path("/{taskId}/forms/{formId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Remove form from the task.", position = 13)
    public Response removeFormFromTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                       @ApiParam(value = "Form Id", required = true) @PathParam("formId") Integer formId) {
        CommonResultMap map = new CommonResultMap();
        try {
            taskFormService.delete(String.valueOf(formId));
            map.setResult(CommonResult.SUCCESS, "Form removed from task successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    // Task Comments
    //
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * GET  /:taskId/comments -> Get the list of comments for given task
     */
    @GET
    @Path("/{taskId}/comments")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "List of comments for the given task", position = 10)
    public Response getTaskComments(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        CommonResultMap map = new CommonResultMap();
        try {
            List<TaskComment> taskComments = taskCommentService.getByTaskId(taskId);
            List<TaskCommentDTO> taskCommentDTOs = TaskCommentConverter.fromTaskCommentsToTaskCommentDTOs(taskComments);
            for (TaskCommentDTO taskCommentDTO : taskCommentDTOs) {
                User user = (User) userService.get(taskCommentDTO.getUser_id());
                if (user.getPersonalInfo() != null) {
                    taskCommentDTO.setUser_name(user.getPersonalInfo().getLastName() + " " + user.getPersonalInfo().getFirstName());
                } else {
                    taskCommentDTO.setUser_name(user.getLoginId());
                }
            }
            map.setData(taskCommentDTOs);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    /**
     * POST  /:taskId/comments -> Adds a new comment to task {CommentDTO}
     */
    @POST
    @Path("/{taskId}/comments")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Add a new comment to the task", position = 11)
    public Response addCommentToTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                     @ApiParam(value = "Task Comment", required = true) TaskCommentDTO taskCommentDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskComment taskComment = TaskCommentConverter.fromTaskCommentDTOToTaskComment(taskCommentDTO);
            taskComment.setTaskId(taskId);
            taskComment.setUserId(SecurityUtils.getCurrentLogin().getUserId());
            taskComment.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskCommentService.insert(taskComment);
            map.setResult(CommonResult.SUCCESS, "Comment added to Task successfully");

        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:taskId/comments/:commentId -> Updates given comment for the task {CommentDTO}
     */
    @PUT
    @Path("/{taskId}/comments/{commentId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a person in task", position = 12)
    public Response updateTaskComment(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                      @ApiParam(value = "Comment Id", required = true) @PathParam("commentId") Integer commentId,
                                      @ApiParam(value = "Task Comment", required = true) TaskCommentDTO taskCommentDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskComment taskComment = TaskCommentConverter.fromTaskCommentDTOToTaskComment(taskCommentDTO);
            taskComment.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskComment.setId(commentId);
            taskCommentService.update(taskComment);
            map.setResult(CommonResult.SUCCESS, "Task comment updated successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * DELETE  /:taskId/comments/:commentId -> Removes a given comment from Task
     */
    @DELETE
    @Path("/{taskId}/comments/{commentId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Remove comment from the task.", position = 13)
    public Response removeCommentFromTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                          @ApiParam(value = "Comment Id", required = true) @PathParam("commentId") Integer commentId) {
        CommonResultMap map = new CommonResultMap();
        try {
            taskCommentService.delete(String.valueOf(commentId));
            map.setResult(CommonResult.SUCCESS, "Comment removed from task successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    // Task Dates
    //
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * GET  /:taskId/dates -> Get the list of the dates for the given task
     */
    @GET
    @Path("/{taskId}/dates")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "List of dates for the given task", position = 14)
    public Response getTaskDates(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        CommonResultMap map = new CommonResultMap();
        List<TaskDate> taskDates = taskDateService.getByTaskId(taskId);
        List<TaskDateDTO> taskDateDTOs = TaskDateConverter.fromTaskDatesToTaskDateDTOs(taskDates);
        map.setData(taskDateDTOs);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    /**
     * POST  /:taskId/dates -> Adds a new date to the task (TaskDateDTO)
     */
    @POST
    @Path("/{taskId}/dates")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Add a new date to the task", position = 15)
    public Response addDateToTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                  @ApiParam(value = "Task Date", required = true) TaskDateDTO taskDateDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskDate taskDate = TaskDateConverter.fromTaskDateDTOToTaskDate(taskDateDTO);
            taskDate.setTaskId(taskId);
            taskDate.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskDateService.insert(taskDate);
            map.setResult(CommonResult.SUCCESS, "Date added to Task successfully");

        } catch (BusinessException e) {
            map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * PUT  /:taskId/dates/:dateId -> Updates the given date object for the task (TaskDateDTO)
     */
    @PUT
    @Path("/{taskId}/dates/{dateId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Update a date in task", position = 16)
    public Response updateTaskDate(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                   @ApiParam(value = "Date Id", required = true) @PathParam("dateId") Integer dateId,
                                   @ApiParam(value = "Task Date", required = true) TaskDateDTO taskDateDTO) {
        CommonResultMap map = new CommonResultMap();
        try {
            TaskDate taskDate = TaskDateConverter.fromTaskDateDTOToTaskDate(taskDateDTO);
            taskDate.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
            taskDate.setId(dateId);
            taskDateService.update(taskDate);
            map.setResult(CommonResult.SUCCESS, "Task date updated successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * DELETE  /:taskId/dates/:dateId -> Removes the given date from the task's date list
     */
    @DELETE
    @Path("/{taskId}/dates/{dateId}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Remove date from the task.", position = 17)
    public Response removeDateFromTask(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                       @ApiParam(value = "Date Id", required = true) @PathParam("dateId") Integer dateId) {
        CommonResultMap map = new CommonResultMap();
        try {
            taskDateService.delete(String.valueOf(dateId));
            map.setResult(CommonResult.SUCCESS, "Date removed from task successfully");
        } catch (BusinessException e) {
            map.setResult(e);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    // Task Logs
    //
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /**
     * GET  /:taskId/logs -> Get the list of the logs for the given task
     */
    @GET
    @Path("/{taskId}/logs")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "List of logs for the given task", position = 18)
    public Response getTaskLogs(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) {
        CommonResultMap map = new CommonResultMap();
        try {
//            List<TaskLog> taskLogs = taskLogService.getByTaskId(taskId);
//            List<TaskLogDTO> taskLogDTOs = TaskLogConverter.fromTaskLogsToTaskLogDTOs(taskLogs);
//            for (TaskLogDTO taskLogDTO : taskLogDTOs){
//                User user = (User) userService.get(taskLogDTO.getUser_id());
//                if (user.getPersonalInfo() != null){
//                    taskLogDTO.setUser_name(user.getPersonalInfo().getLastName() + " " + user.getPersonalInfo().getFirstName());
//                }else{
//                    taskLogDTO.setUser_name(user.getLoginId());
//                }
//
//            }

            List<TaskLogRootDTO> taskLogRootDTOs = taskLogService.getRootByTaskId(taskId);
            map.setData(taskLogRootDTOs);
            map.setResult(CommonResult.SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
            map.setResult(CommonResult.ERROR, e.getMessage());
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    /**
     * GET  /:taskId/results -> The results of given task
     */
    @GET
    @Path("/{taskId}/formId/{formId}/results")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The inspection results of a given task", position = 19)
    public Response getTaskInspectionResults(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                             @ApiParam(value = "FormId Id", required = true) @PathParam("formId") Integer formId) {
        CommonResultMap map = new CommonResultMap();
        List<TaskResultSectionDTO> resultSections = null;
        try {
            resultSections = taskService.getInspectionResults(taskId, formId);
            map.setData(resultSections);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
           map.setResult(e);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * GET  /:taskId/rectifications -> The results of given task
     */
    @GET
    @Path("/{taskId}/formId/{formId}/rectifications")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The rectification results of a given task", position = 19)
    public Response getTaskRectificationResults(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                                @ApiParam(value = "FormId Id", required = true) @PathParam("formId") Integer formId) {
        CommonResultMap map = new CommonResultMap();
        List<TaskResultRectificationDTO> rectificationDTOs = null;

        try {
            rectificationDTOs = taskService.getRectificationResults(taskId, formId);
            if (rectificationDTOs != null) {
                for (TaskResultRectificationDTO dto : rectificationDTOs) {
                    String s_ids = dto.getSignature_picture_ids();
                    if (StringUtils.isNotBlank(s_ids)) {
                        List<FileDTO> files = new ArrayList<FileDTO>();
                        String[] ids = s_ids.split(",");
                        for (String id : ids) {
                            Matcher matcher = Pattern.compile("^\\d+").matcher(id);
                            if(matcher.find()){
                                id = matcher.group();
                            }
                            FileDTO fileDTO = FileConverter.fromFileToDTO((SystemFile) fileService.get(id));
                            if(fileDTO != null){
                                files.add(fileDTO);
                            }

                        }
                        dto.setSignature_pictures(files);
                    }
                }
            }
            map.setData(rectificationDTOs);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
            map.setResult(CommonResult.ERROR);
        }

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * GET  /:taskId/summary -> The summary of given task
     */
    @GET
    @Path("/{taskId}/formId/{formId}/summary")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The results summary of a given task", position = 19)
    public Response getTaskResultsSummary(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId,
                                          @ApiParam(value = "FormId Id", required = true) @PathParam("formId") Integer formId) {
        CommonResultMap map = new CommonResultMap();
        List<TaskResultSummaryDTO> taskResultsSummaryDTOs = taskService.getTaskResultsSummary(taskId, formId);
        map.setData(taskResultsSummaryDTOs);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * GET  /:taskId/summary -> The summary of given task
     */
    @POST
    @Path("/{userId}/tasklist")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The results summary of a given task", position = 19)
    public Response getTaskListByUserId(@ApiParam(value = "User Id", required = true) @PathParam("userId") Integer userId,
                                          @ApiParam(value = "Time Criteria", required = true) TimeCriteriaDTO timeCriteriaDTO) {
        CommonResultMap map = new CommonResultMap();
        List<TaskDTO> taskDTOs = taskService.getTasksByUserId(userId, timeCriteriaDTO);
//        map.setData(taskDTOs);
//        if(taskDTOs != null) {
//            map.setResultTotalCount(taskDTOs.size());
//        }
        if(taskDTOs != null) {
            map.setData(taskDTOs.size());
        }else{
            map.setData(0);
        }
        map.setResult(CommonResult.SUCCESS);
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    /**
     * GET  /:taskId/summary -> The summary of given task
     */
    @POST
    @Path("/{userId}/is_busy")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The results summary of a given task", position = 19)
    public Response getTaskListByUserId2(@ApiParam(value = "User Id", required = true) @PathParam("userId") Integer userId,
                                        @ApiParam(value = "Time Criteria", required = true) TimeCriteriaDTO timeCriteriaDTO) {
        CommonResultMap map = new CommonResultMap();
        Integer isBusy = taskService.isBusy(userId, timeCriteriaDTO);


        map.setData(isBusy);
        map.setResult(CommonResult.SUCCESS);
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/{machineSeqId}/machine_check_result")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The results summary of a given task", position = 19)
    public Response getMachineCheckResult(@ApiParam(value = "machine seq id", required = true) @PathParam("machineSeqId") Integer machineSeqId) {
        CommonResultMap map = new CommonResultMap();
        try {
            MachineCheckResultDTO machineCheckResult= taskService.getMachineCheckResult(machineSeqId);
            map.setData(machineCheckResult);
            map.setResult(CommonResult.SUCCESS);
        } catch (BusinessException e) {
           map.setResult(CommonResult.BUSINESS_EXCEPTION);
        }catch (Exception e){
            e.printStackTrace();
            map.setResult(CommonResult.ERROR);
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @Autowired
    TaskJob taskJob;

    @GET
    @Path("/fallback_task_status")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The results summary of a given task", position = 19)
    public Response test() {
        CommonResultMap map = new CommonResultMap();
        taskJob.fallbackTaskStatus();
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }


    @GET
    @Path("/list_index")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "The results summary of a given task", position = 19)
    public Response getTaskListForUser() {
        CommonResultMap map = new CommonResultMap();
        try {
            List<TaskDTO> taskDTOs = taskService.getCurrentUserTask();
            map.setData(taskDTOs);
            map.setResult(CommonResult.SUCCESS);
        }catch (BusinessException e){
            map.setResult(CommonResult.BUSINESS_EXCEPTION);
        }
        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

    @GET
    @Path("/{taskId}/machine/taskIds")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "List of machine tasks for the given task", position = 20)
    public Response getTasks(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) throws BusinessException {
        CommonResultMap map = new CommonResultMap();
        List<TaskFormInfoDTO> tasks = taskService.getTasks(taskId);

        map.setData(tasks);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
    
    @GET
    @Path("/{taskId}/machine/diagnose")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "Get diagnose lifter task info for the given task", position = 20)
    public Response getDiagnoseLifter(@ApiParam(value = "Task Id", required = true) @PathParam("taskId") Integer taskId) throws BusinessException {
        CommonResultMap map = new CommonResultMap();
        TaskFormInfoDTO task = taskService.getDiagnoseLifter(taskId);

        map.setData(task);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }
    
    @GET
    @Path("/divisionDiagnoseInspector/{taskRespRoleType}/{taskInstallSubcompanyCode}")
    @Produces(MediaType.APPLICATION_JSON)
    @ApiOperation(value = "List of machine tasks for the given task", position = 20)
    public Response getDivisionDiagnoseInspector(@ApiParam(value = "taskRespRoleType", required = true) @PathParam("taskRespRoleType") String taskRespRoleType,
    		@ApiParam(value = "taskInstallSubcompanyCode", required = true) @PathParam("taskInstallSubcompanyCode") String taskInstallSubcompanyCode) throws BusinessException {
        CommonResultMap map = new CommonResultMap();
        List<UserDTO> users = taskService.getDivisionDiagnoseInspector(taskRespRoleType, taskInstallSubcompanyCode);

        map.setData(users);
        map.setResult(CommonResult.SUCCESS);

        return Response.status(HttpCodeEnum.OK.getCode()).entity(map).build();
    }

//    public static void main(String[] args){
//        String name = "1111112.22.dddjpg";
//        Matcher matcher = Pattern.compile("^\\d+").matcher(name);
//        if(matcher.find()){
//            System.out.print(matcher.group());
//        }
//
//    }
}
