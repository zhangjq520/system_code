package com.logic.system.security;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.logic.common.enums.LoginAuthStrategy;
import com.logic.common.security.LogicUserDetails;
import com.logic.system.domain.User;
import com.logic.system.service.IUserService;
import com.logic.system.service.impl.LogService;

import net.sf.json.JsonConfig;
import net.sf.json.processors.DefaultValueProcessor;

/**
 * Authenticate a user from the database.
 */
@Component("userDetailsService")
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService, EnvironmentAware {

	private String loginStrategy;
    private final Logger log = LoggerFactory.getLogger(UserDetailsService.class);

    @Autowired
    private IUserService userService;
        
    @Autowired
    private LogService logService;
    
    @Autowired
    private HttpServletRequest request;

	private RelaxedPropertyResolver propertyResolver;

	private static JsonConfig config = null;

	static {
		config = new JsonConfig();
		config.registerDefaultValueProcessor(Integer.class, new DefaultValueProcessor() {
			@Override
			public Object getDefaultValue(Class type) {
				return null;
			}
		});
	}
	
    @Override
    @Transactional
    public LogicUserDetails loadUserByUsername(final String loginId) {
        log.info("Authenticating {}", loginId);
        String lowercaseLogin = loginId.toLowerCase();
        User user = userService.getByLoginId(lowercaseLogin);;
                
        if (user == null){
            return null;
        }

        // TODO throw exception if userFromDatabase is null

        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        // TODO get real roles here this is just test
        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));        
        
        LogicUserDetails logicUserDetails = new LogicUserDetails(user.getLoginId(), user.getPassword(), authorities);        
        
        logicUserDetails.setUserId(user.getId());
        logicUserDetails.setDefaultLocale(user.getDefaultLocale());
        logicUserDetails.setUserName(user.getLoginId());

        //logService.info(this.getClass(),  request.getRemoteAddr(), user.getId(), "Login the system server", "LOGIN");

        return logicUserDetails;
    }

	@Override
	public void setEnvironment(Environment environment) {
		propertyResolver = new RelaxedPropertyResolver(environment, "logic.");
		loginStrategy = propertyResolver.getProperty("loginstrategy", String.class, "");		
	}
}
