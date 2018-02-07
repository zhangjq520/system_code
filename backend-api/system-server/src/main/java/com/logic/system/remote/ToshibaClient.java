package com.logic.system.remote;

import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.toshiba.PDFPara;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import com.logic.system.domain.PDRequestMiddleCheck;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixProperty;
import io.swagger.models.auth.In;
import org.apache.ibatis.type.Alias;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.Map;

/**
 * Created by albert on 16-3-30.
 */
@Component
public class ToshibaClient {
    Logger log = LoggerFactory.getLogger(ToshibaClient.class);


    @Autowired
    @Qualifier("pDFGenerationService")
    private PDFGenerationService pdfGenerationService;

    @Autowired
    private PDRequestCheckService pdRequestCheckService;

    @HystrixCommand(fallbackMethod = "toshibaServerFallback", commandProperties = {
            @HystrixProperty(name = "execution.isolation.strategy", value = "SEMAPHORE"),
            @HystrixProperty(name = "circuitBreaker.requestVolumeThreshold", value = "10"),
            @HystrixProperty(name = "execution.isolation.thread.timeoutInMilliseconds", value = "20000"),
            @HystrixProperty(name = "circuitBreaker.sleepWindowInMilliseconds", value = "1000")
            })
    public ResponseEntity<Map<String,String>> getDiagnosePDF(String requestType, PDFPara pdfPara){
        log.info("start time -> " + new Date().getTime());
        return pdfGenerationService.getDiagnosePDF(requestType, pdfPara);
    }

    @HystrixCommand(fallbackMethod = "toshibaServerFallback", commandProperties = {
            @HystrixProperty(name = "execution.isolation.strategy", value = "SEMAPHORE"),
            @HystrixProperty(name = "circuitBreaker.requestVolumeThreshold", value = "10"),
            @HystrixProperty(name = "execution.isolation.thread.timeoutInMilliseconds", value = "10000"),
            @HystrixProperty(name = "circuitBreaker.sleepWindowInMilliseconds", value = "1000")
    })
    public ResponseEntity<Map<String, String>> getInspectionResult(Integer machineId, String taskType){
        return pdfGenerationService.getInspectionResult(machineId, taskType);
    }


    @HystrixCommand(fallbackMethod = "toshibaServerFallback", commandProperties = {
            @HystrixProperty(name = "execution.isolation.strategy", value = "SEMAPHORE"),
            @HystrixProperty(name = "circuitBreaker.requestVolumeThreshold", value = "10"),
            @HystrixProperty(name = "circuitBreaker.sleepWindowInMilliseconds", value = "10000") })
    public ResponseEntity<CommonResultMap> updateRequestMiddleCheck(PDRequestMiddleCheckDTO middleCheckDTO){
        return pdRequestCheckService.updateRequestMiddleCheck(middleCheckDTO);
    }

    @HystrixCommand(fallbackMethod = "toshibaServerFallback", commandProperties = {
            @HystrixProperty(name = "execution.isolation.strategy", value = "SEMAPHORE"),
            @HystrixProperty(name = "circuitBreaker.requestVolumeThreshold", value = "10"),
            @HystrixProperty(name = "circuitBreaker.sleepWindowInMilliseconds", value = "1000") })
    public ResponseEntity<CommonResultMap> updateRequestOverallCheck(PDRequestOverallCheckDTO overallCheckDTO){
        return pdRequestCheckService.updateRequestOverallCheck(overallCheckDTO);
    }


    @SuppressWarnings("unused")
    public ResponseEntity<CommonResultMap> toshibaServerFallback(String requestType, PDFPara pdfPara){
        CommonResultMap map = new CommonResultMap();
        log.info("Error time -> " + new Date().getTime());
        map.setResult(CommonResult.ERROR, "Failed to access to toshiba server");
        return new ResponseEntity<CommonResultMap>(map, HttpStatus.INTERNAL_SERVER_ERROR);
    }
    @SuppressWarnings("unused")
    public ResponseEntity<CommonResultMap> toshibaServerFallback(Integer machineId, String taskType){
        CommonResultMap map = new CommonResultMap();
        map.setResult(CommonResult.ERROR, "Failed to access to toshiba server");
        return new ResponseEntity<CommonResultMap>(map, HttpStatus.INTERNAL_SERVER_ERROR);
    }
    @SuppressWarnings("unused")
    public ResponseEntity<CommonResultMap> toshibaServerFallback(PDRequestMiddleCheckDTO middleCheckDTO){
        CommonResultMap map = new CommonResultMap();
        map.setResult(CommonResult.ERROR, "Failed to access to toshiba server");
        return new ResponseEntity<CommonResultMap>(map, HttpStatus.INTERNAL_SERVER_ERROR);
    }
    @SuppressWarnings("unused")
    public ResponseEntity<CommonResultMap> toshibaServerFallback(PDRequestOverallCheckDTO overallCheckDTO){
        CommonResultMap map = new CommonResultMap();
        map.setResult(CommonResult.ERROR, "Failed to access to toshiba server");
        return new ResponseEntity<CommonResultMap>(map, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
