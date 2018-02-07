package com.logic.system.service.impl;//package com.logic.system.service.impl;
//
//import com.logic.common.exception.BusinessException;
//import com.logic.common.util.QueryUtil;
//import com.logic.system.persistence.read.ProcessReadMapper;
//import com.logic.system.persistence.write.ProcessWriteMapper;
//import com.logic.system.service.IProcessService;
//import org.jbpm.api.*;
//import org.jbpm.api.task.Task;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.io.FileNotFoundException;
//import java.util.HashMap;
//import java.util.LinkedHashMap;
//import java.util.List;
//import java.util.Map;
//
//@Service
//public class ProcessService implements IProcessService {
//
//  @Autowired
//  ProcessReadMapper processReadMapper;
//
//  @Autowired
//  ProcessWriteMapper processWriteMapper;
//
//  private ProcessEngine processEngine;
//
//  @Override
//  public Integer insert() throws BusinessException, FileNotFoundException {
//    processEngine = Configuration.getProcessEngine();
//    RepositoryService rs = processEngine.getRepositoryService();
//
//    // Wipe existing process definition
//    List<ProcessDefinition> list = processEngine.getRepositoryService().createProcessDefinitionQuery()
//        .processDefinitionKey("deviation").list();
//    for (ProcessDefinition pd : list) {
//      processEngine.getRepositoryService().deleteDeploymentCascade(pd.getDeploymentId());
//    }
//
//    // Deploy or publish process definition
//    /*
//     * String rootPath = getClass().getResource("/").getFile().toString(); String zipPath = rootPath +
//     * "com/system/persistence/process/deviation.zip"; String deploymentId =
//     * rs.createDeployment().addResourcesFromZipInputStream(new ZipInputStream (new FileInputStream(new
//     * File(zipPath)))).deploy();
//     */
//    String deploymentId = rs.createDeployment()
//        .addResourceFromClasspath("com/logic/system/persistence/process/deviation.jpdl.xml")
//        .addResourceFromClasspath("com/logic/system/persistence/process/deviation.png").deploy();
//
//    Integer startDeploypropId = processReadMapper.selectLastDeploypropId() + 1;
//    Map<String, Object> map = new HashMap<String, Object>();
//    map.put("startDeploypropId", startDeploypropId.toString());
//    processWriteMapper.updateJbpmProperty(map);
//
//    return Integer.valueOf(deploymentId);
//  }
//
//  @Override
//  public Map<String, Object> get() throws BusinessException {
//    processEngine = Configuration.getProcessEngine();
//    RepositoryService rs = processEngine.getRepositoryService();
//
//    // Query process definition
//    List<ProcessDefinition> list = rs.createProcessDefinitionQuery().list();
//    Map<String, Object> map = new LinkedHashMap<String, Object>();
//    if (list != null) {
//      for (ProcessDefinition pd : list) {
//        map.put("deploymentId", pd.getDeploymentId());
//        map.put("definitionId", pd.getId());
//      }
//    }
//    return map;
//  }
//
//  @Override
//  public void delete(String deploymentId) throws BusinessException {
//    processEngine = Configuration.getProcessEngine();
//    RepositoryService rs = processEngine.getRepositoryService();
//    rs.deleteDeploymentCascade(deploymentId);
//  }
//
//  @Override
//  public Map<String, Object> startProcess(String procdefId, String approvalOwner, String correctiveOwner,
//      String verificationOwner, String preventativeOwner) throws BusinessException {
//    processEngine = Configuration.getProcessEngine();
//    ExecutionService es = processEngine.getExecutionService();
//    Map<String, Object> map = new LinkedHashMap<String, Object>();
//    Map<String, Object> map2 = new HashMap<String, Object>();
//    map2.put("toWhere", "plan request");
//    map2.put("owner1", approvalOwner);
//    map2.put("owner2", correctiveOwner);
//    map2.put("owner3", verificationOwner);
//    map2.put("owner4", preventativeOwner);
//    ProcessInstance pi = es.startProcessInstanceById(procdefId, map2);
//    map.put("definitionId", pi.getProcessDefinitionId());
//    map.put("processInstanceId", pi.getId());
//    map.put("processInstanceStatus", pi.getState());
//    return map;
//  }
//
//  @Override
//  public Map<String, Object> judgeProcessStatus(String procdefId, String piId) throws BusinessException {
//    processEngine = Configuration.getProcessEngine();
//    ExecutionService es = processEngine.getExecutionService();
//    Map<String, Object> map = new LinkedHashMap<String, Object>();
//    List<String> piIdList = processReadMapper.selectProcessIdByDefId(procdefId);
//    for (String strPiId : piIdList) {
//      if (strPiId.equals(piId)) {
//        ProcessInstance pi = es.findProcessInstanceById(piId);
//        map.put("Is Ended", pi.isEnded());
//        map.put("Is stopped at 'investigation' node", pi.isActive("investigation"));
//        map.put("Is stopped at 'preventative action excecute' node", pi.isActive("preventative action excecute"));
//        map.put("Is stopped at 'plan request' node", pi.isActive("plan request"));
//        map.put("Is stopped at 'plan approve' node", pi.isActive("plan approve"));
//        map.put("Is stopped at 'corrective action execute' node", pi.isActive("corrective action execute"));
//        map.put("Is stopped at 'verification' node", pi.isActive("verification"));
//        break;
//      }
//    }
//    return map;
//  }
//
//  @Override
//  // Execute state task by single step
//  public void executeStateTask(String piId) throws BusinessException {
//    processEngine = Configuration.getProcessEngine();
//    ExecutionService es = processEngine.getExecutionService();
//    es.signalExecutionById(piId);
//  }
//
//  @Deprecated
//  public int insert(Object obj) throws BusinessException {
//    return 0;
//  }
//
//  @Deprecated
//  public Object get(Integer id) throws BusinessException {
//    return null;
//  }
//
//  @Deprecated
//  public void update(Object obj) throws BusinessException {
//
//  }
//
//  @Deprecated
//  public List<Object> query(QueryUtil queryUtil) {
//    return null;
//  }
//
//  @Deprecated
//  public Boolean validate(Object obj) throws BusinessException {
//    return true;
//  }
//
//  @Deprecated
//  public Boolean validateForInsert(Object obj) throws BusinessException {
//    return true;
//  }
//
//  @Deprecated
//  public Boolean validateForUpdate(Object obj) throws BusinessException {
//    return true;
//  }
//
//  @Deprecated
//  public Boolean validateForDelete(Object obj) throws BusinessException {
//    return true;
//  }
//
//  @Override
//  // Execute and complete human task
//  public Map<String, Object> executeHumanTask(String piId, String executor, Boolean isPass, String outcome1,
//      String outcome2, String comment) throws BusinessException {
//    processEngine = Configuration.getProcessEngine();
//    // ExecutionService es = processEngine.getExecutionService();
//    org.jbpm.api.TaskService taskService = processEngine.getTaskService();
//    List<Task> taskList = taskService.findPersonalTasks(executor);
//    Map<String, Object> map = new LinkedHashMap<String, Object>();
//    if (taskList != null) {
//      for (Task task : taskList) {
//        if (task.getExecutionId().equals(piId)) {
//          taskService.addTaskComment(task.getId(), comment);
//          taskService.completeTask(task.getId(), isPass ? outcome1 : outcome2);
//          map.put("taskId", task.getId());
//          map.put("taskExecutionId", task.getExecutionId());
//          map.put("taskName", task.getActivityName());
//          map.put("taskAssignee", task.getAssignee());
//        }
//      }
//    }
//    return map;
//  }
//
//  /*
//   * private static String listToString(List<String> list) { if (list == null) { return null; } StringBuilder result =
//   * new StringBuilder(); boolean flg = false; for (String str : list) { if (flg) { result.append(","); } else { flg =
//   * true; } result.append(str); } return result.toString(); }
//   */
//
//}
