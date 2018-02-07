package com.logic.system.service.utils;

import com.logic.common.enums.ToshibaTaskStatusEnum;
import com.logic.common.enums.ToshibaTaskTypeEnum;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author: omer 
 * Date  : 11-01-2016
 */
public class ToshibaStatusFlowHelper {

    private static Map<String, List<String>> middleCheckMatrix;
    private static Map<String, List<String>> diagMatrix;
    private static Map<String, List<String>> overalCheckMatrix;

    private static ToshibaStatusFlowHelper INSTANCE = null;

    // hide for singleton
    private ToshibaStatusFlowHelper(){
        initMiddleCheckMatrix();
        initDiagMatrix();
        initOverallCheckMatrix();
    }

    public static ToshibaStatusFlowHelper getInstance(){
        if (INSTANCE == null){
            INSTANCE = new ToshibaStatusFlowHelper();
        }
        return INSTANCE;
    }


    public String getAvailableStatusValues(String status, String taskType){
        List<String> availableStatusList = getAvailableStatusList(status, taskType);
        StringBuilder sb = new StringBuilder();
        String delim = "";

        if (availableStatusList == null){
            return "";
        }

        for (String availableStatus : availableStatusList) {
            sb.append(delim).append(availableStatus);
            delim = ",";
        }

        return sb.toString();
    }

    public boolean canSetStatus(String status, String nextStatus, String taskType){
        if (status.equalsIgnoreCase(nextStatus)){
            return true;
        }

        List<String> availableStatusList = getAvailableStatusList(status, taskType);

        if (availableStatusList == null){
            return false;
        }

        for (String availableStatus : availableStatusList) {
            if (nextStatus.equalsIgnoreCase(availableStatus)){
                return true;
            }
        }

        return false;
    }

    private List<String> getAvailableStatusList(String status, String taskType){
        List<String> availableStatusList = null;
        if (taskType.equalsIgnoreCase(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode())){
            return middleCheckMatrix.get(status);
        }else if(taskType.equalsIgnoreCase(ToshibaTaskTypeEnum.DIAGNOSE.getCode())){
            return diagMatrix.get(status);
        }else if (taskType.equalsIgnoreCase(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode())){
            return overalCheckMatrix.get(status);
        }

        return new ArrayList<>();
    }


    private void initMiddleCheckMatrix(){
        middleCheckMatrix = new HashMap<>();

        List<String> possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.OPEN.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.IN_PROGRESS.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.CLOSED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.RESOLVED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.REOPENED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.HEAD_QUARTERS_ASSIGNING.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.IN_PROGRESS.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.HEAD_QUARTERS_ASSIGNED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.HEAD_QUARTERS_ASSIGNING.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.IN_PROGRESS.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.HEAD_QUARTERS_ASSIGNED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        middleCheckMatrix.put(ToshibaTaskStatusEnum.CLOSED.getCode(), possibleVals);
    }

    private void initDiagMatrix(){
        diagMatrix = new HashMap<>();

        List<String> possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.DIVISION_APPROVING.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.OPEN.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.IN_PROGRESS.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.CLOSED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.RESOLVED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.DIVISION_APPROVING.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.REOPENED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVING.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.IN_PROGRESS.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.SUB_COMPANY_APPROVED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.DIVISION_APPROVED.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.DIVISION_APPROVING.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.IN_PROGRESS.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.DIVISION_APPROVED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        diagMatrix.put(ToshibaTaskStatusEnum.CLOSED.getCode(), possibleVals);
    }


    private void initOverallCheckMatrix(){
        overalCheckMatrix = new HashMap<>();

        List<String> possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVING.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.OPEN.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.IN_PROGRESS.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.CLOSED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.RESOLVED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.RESOLVED.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVING.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.REOPENED.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVED.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVING.getCode(), possibleVals);

        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.IN_PROGRESS.getCode());
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.HEAD_QUARTERS_APPROVED.getCode(), possibleVals);


        possibleVals = new ArrayList<String>();
        possibleVals.add(ToshibaTaskStatusEnum.OPEN.getCode());
        overalCheckMatrix.put(ToshibaTaskStatusEnum.CLOSED.getCode(), possibleVals);
    }



}
