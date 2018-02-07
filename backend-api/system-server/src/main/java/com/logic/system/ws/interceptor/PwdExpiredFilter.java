package com.logic.system.ws.interceptor;

import com.logic.common.enums.HttpCodeEnum;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CommonResult;
import com.logic.common.util.CommonResultMap;
import com.logic.system.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.annotation.Priority;
import javax.servlet.annotation.WebFilter;
import javax.ws.rs.HttpMethod;
import javax.ws.rs.NameBinding;
import javax.ws.rs.Path;
import javax.ws.rs.container.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.Provider;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by albert on 16-3-23.
 */
@Provider
public class PwdExpiredFilter implements ContainerRequestFilter {
    Logger log = LoggerFactory.getLogger(PwdExpiredFilter.class);

    @Autowired
    private IUserService userService;

    /**
     * 如果密码过期 返回一个标志 标示密码过期 使用状态码(3)
     * 如果是 /user/oauth 请求，让其获得token
     * 白名单 (/user/oauth)
     *
     * @param requestContext
     * @throws IOException
     */
    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        //获取method 和 url
        String method = requestContext.getMethod();
        String restPath = requestContext.getUriInfo().getPath();
        log.info("------------- method ->" + method) ;
        log.info("------------- restPath ->" + restPath) ;
        //检查资源请求是否在白名单
        boolean inWhilteRoll = WhiteRollUtils.inWhilteRoll(method, restPath);

        //如果在白名单，放行，否则检查用户密码是否过期，如果未过期放行，否则返回一个状态码，提示过期
        if(!inWhilteRoll){
            boolean isPwdExpired = userService.isCurrentUserPwdExpired();
            if(isPwdExpired){
                CommonResultMap resultMap = new CommonResultMap();
                resultMap.setResult(CommonResult.PWD_EXPIRED, "Current user's password expired,redirect to password change page");
                requestContext.abortWith(Response.status(HttpCodeEnum.OK.getCode()).header("status",CommonResult.PWD_EXPIRED.name()).entity(resultMap).build());
            }
        }
        //else pass chain
    }

    public static class WhiteRollUtils{
        private static List<WhilteRoll> whilteRolls = null;

        //设置白名单
        static{
            //swagger.users/changePassword
            whilteRolls = new ArrayList<WhilteRoll>();
            whilteRolls.add(new WhilteRoll("user/oauth", HttpMethod.GET));
            whilteRolls.add(new WhilteRoll("swagger", HttpMethod.GET));
            whilteRolls.add(new WhilteRoll("users/changePassword", HttpMethod.PUT));
            whilteRolls.add(new WhilteRoll("configurations/SYS_PWD_CFG_A_COMPLEX", HttpMethod.GET));
            whilteRolls.add(new WhilteRoll("configurations/SYS_PWD_CFG_B_PATTERN", HttpMethod.GET));
            whilteRolls.add(new WhilteRoll("device", HttpMethod.PUT));
        }

        public static boolean inWhilteRoll(String httpMethod, String url){
            Assert.hasText(httpMethod);
            Assert.hasText(url);

            for(WhilteRoll whilteRoll : whilteRolls){
                if(whilteRoll.getHttpMethod().equalsIgnoreCase(httpMethod) && url.indexOf(whilteRoll.getUrl()) >= 0){
                    return true;
                }
            }

            return false;
        }
    }

    //白名单
    public static class WhilteRoll{

        private String url;
        private String httpMethod;

        public WhilteRoll(String url, String httpMethod) {
            this.url = url;
            this.httpMethod = httpMethod;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getHttpMethod() {
            return httpMethod;
        }

        public void setHttpMethod(String httpMethod) {
            this.httpMethod = httpMethod;
        }
    }
}
