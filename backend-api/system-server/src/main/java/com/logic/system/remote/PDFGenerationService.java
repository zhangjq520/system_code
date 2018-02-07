package com.logic.system.remote;

import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.toshiba.PDFPara;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.ws.rs.PathParam;
import java.util.Map;

/**
 * Created by albert on 16-3-30.
 */
@FeignClient("toshiba-server")
public interface PDFGenerationService {

    @RequestMapping(value = "/rest/pdf/{requestType}", method = RequestMethod.POST,
            consumes = org.springframework.http.MediaType.APPLICATION_JSON_VALUE,
            produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
    ResponseEntity<Map<String,String>> getDiagnosePDF(@RequestParam("requestType") String requestType, PDFPara pdfPara);

    @RequestMapping(value = "/rest/pdf/machines/{machineSeqId}/inspectionResult/{taskType}", method = RequestMethod.GET,
            consumes = org.springframework.http.MediaType.APPLICATION_JSON_VALUE,
            produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
    ResponseEntity<Map<String, String>> getInspectionResult(@RequestParam("machineSeqId") Integer machineSeqId, @RequestParam("taskType") String taskType);

}
