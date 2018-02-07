package com.logic.system.remote;

import com.logic.common.util.CommonResultMap;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by albert on 16-3-31.
 */
@FeignClient("toshiba-server")
public interface PDRequestCheckService {

    @RequestMapping(value = "/rest/requests/middleChecks", method = RequestMethod.PUT,
            consumes = org.springframework.http.MediaType.APPLICATION_JSON_VALUE,
            produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
    ResponseEntity<CommonResultMap> updateRequestMiddleCheck(PDRequestMiddleCheckDTO middleCheckDTO);

    @RequestMapping(value = "/rest/requests/overallChecks", method = RequestMethod.PUT,
            consumes = org.springframework.http.MediaType.APPLICATION_JSON_VALUE,
            produces = org.springframework.http.MediaType.APPLICATION_JSON_VALUE)
    ResponseEntity<CommonResultMap> updateRequestOverallCheck(PDRequestOverallCheckDTO overallCheckDTO);
}
