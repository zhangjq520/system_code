package com.logic.system.ws.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerRequestFilter;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.common.util.ICache;
import com.logic.common.util.SysCache;
import com.logic.common.ws.dto.system.UserCacheDTO;

public class K12AuthenticationFilter implements ContainerRequestFilter  {
	
	@Context
    private HttpServletRequest servletRequest;

    @Context
    private HttpServletResponse servletResponse;
    
    private final static String EXCLUDE_URL[] = new String[]{
            "/rest/api-docs",
            "/rest/permissions/login"
    };
        
	@Override
	public void filter(ContainerRequestContext requestContext) throws IOException {
		Boolean isAuthenticated = authenticate(requestContext);

        if (!isAuthenticated) {
            CommonResultMap map = new CommonResultMap();
            map.setResult(CommonResult.SUCCESS, "Unauthorized");
            Response response = Response.status(HttpCodeEnum.UNAUTHORIZED.getCode()).type(MediaType.APPLICATION_JSON)
                    .entity(map).build();
            requestContext.abortWith(response);
        }
	}
	
	private Boolean authenticate(ContainerRequestContext context) {
		Boolean ret = true;
//		String cacheKey = "";
//        String requestUrl = servletRequest.getRequestURL().toString();
//        if (!checkExcludeUrl(requestUrl)) {
//            String token = context.getHeaders().getFirst("token");
//            if (token == null || token.equals("")) {
//                ret = false;
//            } else {
//            	ICache cache = SysCache.getInstance();
//                UserCacheDTO dto = (UserCacheDTO) cache.getSession(token);
//                if (dto == null) {
//                    ret = false;
//                } else {
//                    long expirationTime = dto.getExpirationTime();
//                    if (System.currentTimeMillis() > expirationTime) {
//                        cache.removeSession(token);
//                        ret = false;
//                    } else {
//                        dto.setExpirationTime(System.currentTimeMillis() + Integer.parseInt(SysCache.getInstance().getSysConfig("session_expiration_minute")) * 60 * 1000);
//                        cache.setSession(token, dto);
//                    }
//                }
//            }
//        }
        
        return ret;
	}
	
	private Boolean checkExcludeUrl(String requestUrl) {
        Boolean ret = false;
        
        for (String url : EXCLUDE_URL) {
            if (requestUrl.contains(url)) {
                ret = true;
                break;
            }
        }
        
        return ret;
    }

}
