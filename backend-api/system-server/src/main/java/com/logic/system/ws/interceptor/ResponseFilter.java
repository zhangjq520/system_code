package com.logic.system.ws.interceptor;

import com.logic.common.util.CommonResultMap;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerResponseContext;
import javax.ws.rs.container.ContainerResponseFilter;
import javax.ws.rs.ext.Provider;
import java.io.IOException;

/**
 * Author: omer 
 * Date  : 23-12-2015
 */
@Provider
public class ResponseFilter implements ContainerResponseFilter {
    @Override
    public void filter(ContainerRequestContext containerRequestContext, ContainerResponseContext containerResponseContext) throws IOException {

        if (containerResponseContext.getEntity() instanceof CommonResultMap){
            CommonResultMap responseMap  = (CommonResultMap)containerResponseContext.getEntity();
            if (responseMap.getData() != null){
                containerResponseContext.setEntity(responseMap.getData());
            }

            if (responseMap.get("TOTAL_COUNT") != null){
                containerResponseContext.getHeaders().add("TOTAL_COUNT", responseMap.get("TOTAL_COUNT"));
            }

            if (responseMap.get("COUNT") != null){
                containerResponseContext.getHeaders().add("COUNT", responseMap.get("COUNT"));
            }

            if (responseMap.get("EXTRA") != null){
                containerResponseContext.getHeaders().add("EXTRA", responseMap.get("EXTRA"));
            }

            if (responseMap.getStatus() != null){
                containerResponseContext.getHeaders().add("STATUS", responseMap.getStatus());
            }

            if (responseMap.getMessage() != null){
                containerResponseContext.getHeaders().add("MSG", responseMap.getMessage());
            }
        }
    }
}
