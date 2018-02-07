package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.QueryUtil;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.configuration.UserEmployeeDTO;
import com.logic.common.ws.dto.system.UserDTO;
import com.logic.common.ws.dto.system.UserPassChangeDTO;
import com.logic.common.ws.dto.system.UserSearchDTO;
import com.logic.system.domain.Configuration;
import com.logic.system.domain.Mail;
import com.logic.system.domain.Organization;
import com.logic.system.domain.PersonalInfo;
import com.logic.system.domain.Role;
import com.logic.system.domain.User;
import com.logic.system.domain.UserOrg;
import com.logic.system.domain.UserOrgHierarchy;
import com.logic.system.domain.UserRole;
import com.logic.system.persistence.read.OrganizationReadMapper;
import com.logic.system.persistence.read.RoleReadMapper;
import com.logic.system.persistence.read.UserReadMapper;
import com.logic.system.persistence.write.UserWriteMapper;
import com.logic.system.service.IConfigurationService;
import com.logic.system.service.ICorporateService;
import com.logic.system.service.IIncentiveService;
import com.logic.system.service.ITaskService;
import com.logic.system.service.IUserOrgHierarchyService;
import com.logic.system.service.IUserService;
import com.logic.system.ws.dto.UserConverter;

/**
 * 
 * <p>
 * Title: UserService
 * </p>
 * 
 * <p>
 * Description: 用户管理服务
 * </p>
 * 
 * <p>
 * Company: Logicsolutions
 * </p>
 * 
 * @author gary.wang@logicsolutions.com.cn
 * @date 2014-8-6
 */
@Service
public class UserService implements IUserService, EnvironmentAware {

	private static final Logger logger = LoggerFactory.getLogger(UserService.class);

	private static final String USER_NAME_PREFIX = "TUSER-";
	private static final String LOGIC_PATH = "logic.";
	private static final String ENV_FILE_PATH = "logic.file.path.";
	private static final String LOCAL_PATH = "local";
	private static final String REMOTE_PATH = "remote";

	private static RelaxedPropertyResolver propertyResolver;
	private static RelaxedPropertyResolver propertyResolverLogic;

	@Autowired
	private UserReadMapper userReadMapper;

	@Autowired
	private UserWriteMapper userWriteMapper;

	@Autowired
	private PersonalInfoService personalInfoService;

	// @Autowired
	// private SystemClient systemClient;

	@Autowired
	private RoleReadMapper roleReadMapper;

	@Autowired
	private MailService mailService;
	
	@Autowired
	IIncentiveService incentiveServiceImpl;

	// TODO employee interface should be in configuration microservice,
	// currently we do not have one
	// will be added later
	// @Autowired
	// private IEmployeeService employeeService;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	ITaskService taskService;

	@Autowired
	IConfigurationService configurationService;

	@Autowired
	private ICorporateService corporateService;

	@Autowired
	private IUserOrgHierarchyService userOrgHierarchyService;

	/**
	 * Retrieve user object by user ID.
	 * 
	 * @param id
	 * @return
	 * @throws BusinessException
	 *             TODO
	 */
	public User get(Integer id) throws BusinessException {
		User user = userReadMapper.selectByPrimaryKey(id);

		if (user != null) {

			if (user.getPersonalInfoId() != null) {
				PersonalInfo personalInfo = personalInfoService.get(user.getPersonalInfoId());
				user.setPersonalInfo(personalInfo);
			}

			List<UserOrg> userOrgs = userReadMapper.selectOrgByUserId(id);
			if (userOrgs != null && userOrgs.size() != 0) {
				user.setUserOrgs(userOrgs);

			}

			if (user.getId() != null) {
				List<Role> roleList = roleReadMapper.getRolesByUserID(id);
				user.setRoleList(roleList);
			}
		}

		return user;
	}

	@Autowired
	private OrganizationReadMapper organizationReadMapper;

	@Override
	public List<Organization> getUserOrganizations(Integer userId) {
		Assert.notNull(userId);
		List<UserOrg> userOrgs = userReadMapper.selectOrgByUserId(userId);

		if (CollectionUtils.isEmpty(userOrgs))
			return null;

		List<Organization> organizations = new ArrayList<>();
		for (UserOrg userOrg : userOrgs) {
			Organization organization = organizationReadMapper.selectByPrimaryKey(userOrg.getOrgId());
			if (organization != null)
				organizations.add(organization);
		}

		return organizations;
	}

	@Override
	public User getByLoginId(String loginId) {
		// User user = (User)
		// SysCache.getInstance().getCacheItem(USER_NAME_PREFIX + loginId);
		// if (user == null){
		// user = userReadMapper.selectByLoginId(loginId);
		// }
		//
		// if (user != null){
		// SysCache.getInstance().setCacheItem(USER_NAME_PREFIX + loginId,
		// user);
		// }

		User user = userReadMapper.selectByLoginId(loginId);

		return user;
	}

	@Override
	public List<Role> getRolesByUserId(Integer userId) {
		return roleReadMapper.getRolesByUserID(userId);
	}

	@Override
	public List<UserRole> getUserRolesByUserId(Integer userId) {
		return userReadMapper.getUserRolesByUserId(userId);
	}

	@Transactional(rollbackFor = BusinessException.class)
	public int insert(Object obj) throws BusinessException {
		UserDTO userDTO = (UserDTO) obj;
		User user = UserConverter.fromDTOtoUser(userDTO);

		// change user login
		if (StringUtils.isNotBlank(user.getLoginId())) {
			user.setLoginId(user.getLoginId().toLowerCase());
		}

		Integer employeeId = null;
		if (null != userDTO.getEmployee_id() && !StringUtils.isEmpty(userDTO.getEmployee_id())) {
			employeeId = Integer.parseInt(userDTO.getEmployee_id());
		}

		boolean isValidUserForInsert = this.validateForInsert(user);
		if (isValidUserForInsert) {
			PersonalInfo personalInfo = user.getPersonalInfo();
			if (personalInfo != null) {
				Integer personalInfoId = personalInfoService.insert(personalInfo);
				user.setPersonalInfoId(personalInfoId);
			}

			user.setPassword(SysUtil.MD5Digest(user.getPassword()));

			if (canPWDExpired() && !StringUtils.isBlank(user.getPassword())) {
				user.setPwdExpiredDate(getPWDExpiredDate());
			}

			user.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			userWriteMapper.insertSelective(user);

			insertUserRoles(user);

			// TODO currently we do not have configuration microservice,
			// employee actions should be on configuration microservice
			// if (employeeId != null) {
			// Employee employee = (Employee) employeeService.get(employeeId);
			// if (employee.getUserId() != null) {
			// throw new
			// BusinessException(ErrorMessageEnum.User_CreateUser_Employee_Already_Bind_Other_User,
			// employeeId);
			// }
			// employeeService.bindUserAndEmployee(user.getId(), employeeId);
			// }

			List<UserOrg> orgUsers = user.getUserOrgs();
			if (orgUsers != null && orgUsers.size() != 0) {
				for (UserOrg orgUser : orgUsers) {
					orgUser.setUserId(user.getId());
					userWriteMapper.insertUserOrgSelective(orgUser);
				}
			}
			
			refreshOrgUserHierachy(user.getId(), orgUsers);
		}

		return user.getId();
	}

	@Override
	public String activateUser(Integer userId) {

		String result = "";
		String frontendLoginURL = propertyResolverLogic.getProperty("frontLogin", String.class, "");
		Object obj;

		try {
			obj = this.get(userId);
			User user = (User) obj;

			if (user != null) {

				if (user.getDisabled()) {
					user.setDisabled(false);
					String randonPwd = RandomStringUtils.randomAlphabetic(10);

					UserDTO dto = UserConverter.fromUserToDTO(user);
					dto.setPassword(randonPwd);
					this.update(dto);
					String url = frontendLoginURL + "?uid=" + user.getLoginId() + "&pwd=" + randonPwd;
					result = "<html><body onload=\"window.location.href='" + url + "'\"></body></html>";
					// result = "您好，"+user.getLoginId()+"
					// <br/><br/>您的账号已成功激活，临时密码为"+randonPwd+"
					// <br/><br/>请记录此密码用于ICS企业管理平台初次登录，登录后请立即至个人中心修改密码。
					// <br/><br/><a target=\"_blank\" href=\"" +
					// frontendLoginURL + "\">点击此处登陆</a>";

				} else {
					String url = frontendLoginURL + "?activated=1&uid=" + user.getLoginId();
					result = "<html><body onload=\"window.location.href='" + url + "'\"></body></html>";
				}
			}

		} catch (BusinessException e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}

		return result;
	}

	@Override
	public void sendNewCreationEmail(Integer userId) {
		// send email.

		try {
			User user = this.get(userId);
			if (user != null) {
				String emailAddress = user.getLoginId();
				StringBuffer sb = new StringBuffer();

				String activateUserAPIURL = propertyResolverLogic.getProperty("activateUser", String.class, "");
				String toAddress = emailAddress;
				String subject = "激活邮件";
				String newLine = "<br/><br/>";

				sb.append("尊敬的 ").append(emailAddress).append(" ， 你好！").append(newLine)
						.append("您的ICS企业管理平台账号已经开通，请激活账户以便您能登录使用ICS企业管理平台功能。").append(newLine)
						.append("请点击下方链接完成账户激活操作：").append(newLine)
						.append("<a href=" + activateUserAPIURL + userId + ">" + activateUserAPIURL + userId + "</a>")
						.append(newLine).append("（如您无法点击此链接，请将它复制到浏览器地址栏中访问）").append(newLine)
						.append("本邮件由ICS企业管理平台自动发出，请勿直接回复。  如有疑问或建议， 请联系邮箱 <a mailto:ics.service@99wuxian.com>ics.service@99wuxian.com</a> 。")
						.append(newLine).append("欢迎您的使用！").append(newLine).append(newLine).append("ICS企业管理平台")
						.append(newLine).append("<a href=http://b.jiliyun.com>http://b.jiliyun.com</a>")
						.append(newLine);

//				Mail mail = new Mail(toAddress, subject, sb.toString());
//				mailService.saveAndSendLogicMail(mail);
				incentiveServiceImpl.sendEmail(toAddress, subject, sb.toString());
				
			}
		} catch (BusinessException e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

	@Override
	public void sendResetPwdEmail(Integer userId, String newPwd) {
		// send email.
		try {

			User user = null;
			if (userId != null && userId > 0) {
				user = this.get(userId);
				if (user != null) {
					String emailAddress = user.getLoginId();
					StringBuffer sb = new StringBuffer();
					String toAddress = emailAddress;
					String subject = "密码重置邮件";
					String newLine = "<br/><br/>";

					sb.append("尊敬的 ").append(emailAddress).append(" , 你好！").append(newLine)
							.append("您的ICS企业管理平台账号已重置密码，重置后的密码为：").append(newPwd).append(" , 请在登录后及时修改密码。")
							.append(newLine)
							.append("本邮件由ICS企业管理平台自动发出，请勿直接回复。 如有疑问或建议，请联系邮箱 <a mailto:ics.service@99wuxian.com>ics.service@99wuxian.com</a> 。")
							.append(newLine).append(newLine).append("欢迎您的使用!").append(newLine).append(newLine)
							.append("ICS企业管理平台").append(newLine)
							.append("<a href=http://b.jiliyun.com>http://b.jiliyun.com</a>").append(newLine);

//					Mail mail = new Mail(toAddress, subject, sb.toString());
//					mailService.saveAndSendLogicMail(mail);
					incentiveServiceImpl.sendEmail(toAddress, subject, sb.toString());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

	private void insertUserRoles(User user) {
		List<Role> roles = user.getRoleList();
		if (roles != null && roles.size() > 0) {
			List<UserRole> userRoles = new ArrayList<UserRole>();
			for (int i = 0; i < roles.size(); i++) {
				UserRole userRole = new UserRole();
				userRole.setUserId(user.getId());

				int roleId = roles.get(i).getId();
				userRole.setRoleId(roleId);
				userRoles.add(userRole);
			}

			userWriteMapper.insertUserRoles(userRoles);
		}
	}

	@Transactional(rollbackFor = BusinessException.class)
	public void update(Object obj) throws BusinessException {
		UserDTO userDTO = (UserDTO) obj;
		User user = UserConverter.fromDTOtoUser(userDTO);

		if (validateForUpdate(user)) {
			Integer employeeId = null;
			if (null != userDTO.getEmployee_id() && !StringUtils.isEmpty(userDTO.getEmployee_id().toString())) {
				employeeId = Integer.parseInt(userDTO.getEmployee_id());
			}

			// Update User Object itself
			User systemUser = get(user.getId());
			if (systemUser == null) {
				throw new BusinessException(ErrorMessageEnum.User_UpdateUser_User_Not_Exist, user.getId());
			}

			// Update Personal Information
			PersonalInfo personalInfo = user.getPersonalInfo();
			if (personalInfo != null) {
				Integer personalInfoId = systemUser.getPersonalInfoId();
				if (personalInfoId == null) {
					personalInfoId = personalInfoService.insert(personalInfo);
					user.setPersonalInfoId(personalInfoId);
				} else {
					personalInfo.setId(personalInfoId);
					personalInfoService.update(personalInfo);
				}
			}

			if (user.getPassword() != null && !user.getPassword().equals("")) {
				user.setPassword(SysUtil.MD5Digest(user.getPassword()));
				if (canPWDExpired()) {
					user.setPwdExpiredDate(getPWDExpiredDate());
				}
			}

			user.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			userWriteMapper.updateByPrimaryKeySelective(user);

			List<UserOrg> userOrgs = user.getUserOrgs();
			if (userOrgs != null) {
				if (userOrgs.isEmpty()) {
					userWriteMapper.deleteUserOrgByUserId(user.getId());
				} else {
					userWriteMapper.deleteUserOrgByUserId(user.getId());
					for (UserOrg userOrg : userOrgs) {
						userOrg.setUserId(user.getId());
						userWriteMapper.insertUserOrgSelective(userOrg);
					}
				}
			}
			// Update the relationship between user and role
			if (null != user.getRoleList()) {
				userWriteMapper.deleteUserRoles(user.getId());
				if (!user.getRoleList().isEmpty()) {
					insertUserRoles(user);
				}
			}
			
			refreshOrgUserHierachy(user.getId(), userOrgs);

			// remove from cache
			// SysCache.getInstance().removeCacheItem(USER_NAME_PREFIX +
			// user.getLoginId());

			// TODO currently we do not have configuration microservice,
			// employee actions should be on configuration microservice
			// employeeService.unBindUser(user.getId());
			// if (employeeId != null) {
			// Employee employee = (Employee) employeeService.get(employeeId);
			// if (employee != null) {
			// if (employee.getUserId() != null &&
			// !employee.getUserId().equals(user.getId())) {
			// throw new
			// BusinessException(ErrorMessageEnum.User_UpdateUser_Employee_Already_Bind_Other_User,
			// employeeId);
			// }
			// employeeService.bindUserAndEmployee(user.getId(), employeeId);
			// }
			// }
		}

	}

	@Transactional
	public void delete(String ids) throws BusinessException {
		String[] idArr = ids.split(",");
		for (String id : idArr) {
			User systemUser = get(Integer.valueOf(id));
			if (systemUser == null) {
				throw new BusinessException(ErrorMessageEnum.User_DeleteUser_User_Not_Exist, Integer.valueOf(id));
			}
			userWriteMapper.deleteUserRoles(Integer.valueOf(id));
			User user = get(Integer.valueOf(id));
			PersonalInfo personalInfo = user.getPersonalInfo();

			if (personalInfo != null) {
				personalInfoService.deletePersonalInfo(personalInfo);
			}

			user.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			userWriteMapper.deleteByPrimaryKey(user);
			userWriteMapper.deleteUserOrgByUserId(user.getId());			
			userOrgHierarchyService.cleanupOrgIds(user.getId());
			
			// Clean the cache
			// SysCache.getInstance().removeCacheItem(USER_NAME_PREFIX +
			// user.getLoginId());

			// TODO currently we do not have configuration microservice,
			// employee actions should be on configuration microservice
			// employeeService.unBindUser(user.getId());
		}
	}

	public List<Object> query(QueryUtil queryUtil) {
		List<Object> list = new ArrayList<Object>();
		List<UserDTO> dtos = userReadMapper.selectUsers(queryUtil);
		String url = propertyResolver.getProperty(REMOTE_PATH, String.class, null);
		if (dtos != null) {
			for (UserDTO dto : dtos) {
				dto.setPassword("");
				dto.setLocked("1".equals(dto.getLocked()) ? "true" : "false");
				dto.setDisabled("1".equals(dto.getDisabled()) ? "true" : "false");

				if (dto.getAvatar() != null) {
					if (!dto.getAvatarFileName().contains("_")) {
						dto.setAvatar(url + "/" + dto.getAvatarFileName());
					} else {
						dto.setAvatar(
								url + "/" + dto.getAvatarFileName().substring(0, dto.getAvatarFileName().indexOf("_")));
					}
				}
				list.add(dto);
			}
		}
		return list;
	}

	public Boolean validateForInsert(Object obj) throws BusinessException {

		logger.debug("===========Start Valid User Object");

		boolean ret = validate(obj);
		User user = (User) obj;

		if (null != user.getId()) {
			throw new BusinessException(ErrorMessageEnum.User_CreateUser_Empty_ID);
		}

		if (StringUtils.isEmpty(user.getLoginId())) {
			throw new BusinessException(ErrorMessageEnum.User_CreateUser_Empty_LoginID);
		}

		if (StringUtils.isEmpty(user.getPassword())) {
			throw new BusinessException(ErrorMessageEnum.User_CreateUser_Empty_Password);
		}

		if (null == user.getDisabled()) {
			throw new BusinessException(ErrorMessageEnum.User_CreateUser_Empty_Disabled);
		}

		if (null == user.getLocked()) {
			throw new BusinessException(ErrorMessageEnum.User_CreateUser_Empty_Locked);
		}

		// if (StringUtils.isEmpty(user.getPersonalInfo().getEmailPrimary())) {
		// throw new
		// BusinessException(ErrorMessageEnum.User_CreateUser_Empty_Email);
		// }

		ret = true;

		logger.debug("===========End Valid User Object");

		return ret;
	}

	// We do not need login any further since we will be using OAuth2
	// public String login(LoginDTO dto) throws BusinessException {
	// String token = "";
	// String userName = dto.getUserName();
	// String password = dto.getPassword();
	//
	// if (StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)) {
	// throw new
	// BusinessException(ErrorMessageEnum.Permiss_Login_Empty_Username_Or_Password);
	// } else {
	// User user = userReadMapper.selectByLoginId(userName);
	// if (user != null) {
	// List<UserOrg> userOrgs = userReadMapper.selectOrgByUserId(user.getId());
	// List<String> orgIds = new ArrayList<String>();
	// if (userOrgs != null && userOrgs.size() != 0) {
	// user.setUserOrgs(userOrgs);
	// for (UserOrg userOrg : userOrgs) {
	// orgIds.add(userOrg.getOrgId().toString());
	// }
	// }
	// String pass = user.getPassword();
	// if (SysUtil.MD5Digest(password).equals(pass)) {
	// token = generateToken();
	//
	// UserCacheDTO userCacheDto = new UserCacheDTO();
	// userCacheDto.setUserId(user.getId());
	// userCacheDto.setDefaultLocale(user.getDefaultLocale());
	// userCacheDto.setExpirationTime(System.currentTimeMillis() + 30 * 60 *
	// 1000);
	// userCacheDto.setOrgId(SysUtil.listToSortedString(orgIds));
	//
	// Integer personalInfoId = user.getPersonalInfoId();
	// PersonalInfo personalInfo = (PersonalInfo)
	// personalInfoService.get(personalInfoId);
	// if (personalInfo != null) {
	// String firstName = personalInfo.getFirstName() == null ? "" :
	// personalInfo.getFirstName();
	// String lastName = personalInfo.getLastName() == null ? "" :
	// personalInfo.getLastName();
	// String name = firstName + " " + lastName;
	// userCacheDto.setUserName(name);
	// }
	//
	// ICache cache = CacheFactory.getCacheImpl();
	// cache.setSession(token, userCacheDto);
	//
	// } else {
	// throw new
	// BusinessException(ErrorMessageEnum.Permiss_Login_Password_Is_Wrong);
	// }
	// } else {
	// throw new
	// BusinessException(ErrorMessageEnum.Permiss_Login_Username_Not_Exist,
	// userName);
	// }
	// }
	// return token;
	// }

	private String generateToken() {
		String token = SysUtil.MD5Digest(UUID.randomUUID().toString());
		return token;
	}

	public List<UserDTO> quickFind(String name) {
		return userReadMapper.quickFind(name);
	}

	public List<UserEmployeeDTO> getUserEmployee(QueryUtil queryUtil) {
		List<UserEmployeeDTO> list = userReadMapper.getUserEmployee(queryUtil);
		return list;
	}

	public List<UserSearchDTO> getAllSearchUser() {
		return userReadMapper.getAllSearchUser();
	}

	public Boolean validate(Object obj) throws BusinessException {
		User user = (User) obj;
		Boolean ret = false;
		if (user == null) {
			throw new BusinessException(ErrorMessageEnum.User_Insert_Or_Update_Empty_Object);
		}

		if (null != user.getPersonalInfo()) {
			if (null != user.getPersonalInfo().getId()) {
				throw new BusinessException(ErrorMessageEnum.User_Insert_Or_Update_Personal_Info_ID_Not_Empty);
			}
		}

		// 判断roleList id存不存在
		if (null != user.getRoleList()) {
			for (int i = 0; i < user.getRoleList().size(); i++) {
				if (roleReadMapper.getRoleIdCount(user.getRoleList().get(i).getId()) == 0) {
					throw new BusinessException(ErrorMessageEnum.User_Insert_Or_Update_Role_Not_Exist,
							user.getRoleList().get(i).getId());
				}
			}
		}

		if (null != user.getLoginId() && !StringUtils.isEmpty(user.getLoginId().toString())) {

			// 更新
			if (null != user.getId() && !StringUtils.isEmpty(user.getId().toString())) {
				// 更新时，用loginId 查出的id 与 现有的id作对比
				User userInfo = userReadMapper.selectByLoginId(user.getLoginId());
				if (userInfo != null) {
					if (!userInfo.getId().equals(user.getId())) {
						throw new BusinessException(ErrorMessageEnum.User_CreateUser_LoginID_Already_Exist,
								user.getLoginId());
					}
				}

			} else {
				// 根据loginId 查询表里存在的数量
				int i = userReadMapper.checkLoginIdUnique(user.getLoginId());

				if (i > 0) {
					throw new BusinessException(ErrorMessageEnum.User_CreateUser_LoginID_Already_Exist,
							user.getLoginId());
				}

			}
		}

		ret = true;
		return ret;
	}

	public Boolean validateForUpdate(Object obj) throws BusinessException {

		Boolean ret = validate(obj);
		User user = (User) obj;

		if (user.getId() == null) {
			throw new BusinessException(ErrorMessageEnum.User_UpdateUser_Empty_User_ID);
		}

		if (null != user.getLoginId() && StringUtils.isEmpty(user.getLoginId())) {
			throw new BusinessException(ErrorMessageEnum.User_UpdateUser_Empty_LoginID);
		}

		if (null != user.getPassword() && StringUtils.isEmpty(user.getPassword())) {
			throw new BusinessException(ErrorMessageEnum.User_UpdateUser_Empty_Password);
		}

		if (null != user.getDisabled() && StringUtils.isEmpty(user.getDisabled().toString())) {
			throw new BusinessException(ErrorMessageEnum.User_UpdateUser_Empty_Disabled);
		}

		if (null != user.getLocked() && StringUtils.isEmpty(user.getLocked().toString())) {
			throw new BusinessException(ErrorMessageEnum.User_UpdateUser_Empty_Locked);
		}

		if (null != user.getPersonalInfo()) {
			if (null != user.getPersonalInfo().getEmailPrimary()
					&& StringUtils.isEmpty(user.getPersonalInfo().getEmailPrimary())) {
				throw new BusinessException(ErrorMessageEnum.User_CreateUser_Empty_Email);
			}
		}

		ret = true;
		return ret;

	}

	@Override
	public List<User> getAllUserByRoleId(Integer roleId) {
		return userReadMapper.selectAllUserByRoleId(roleId);
	}

	@Deprecated
	public Boolean validateForDelete(Object obj) throws BusinessException {
		return true;
	}

	@Override
	public void setEnvironment(Environment environment) {
		propertyResolver = new RelaxedPropertyResolver(environment, ENV_FILE_PATH);
		propertyResolverLogic = new RelaxedPropertyResolver(environment, LOGIC_PATH);
	}

	// current + the days of value SYS_PWD_CFG_D_PWD_EXP_DAYS
	private Date getPWDExpiredDate() {

		Double pwdExpDays = configurationService.getDoubleValue(ConfigurationService.SYS_PWD_CFG_D_PWD_EXP_DAYS);
		if (pwdExpDays == null) {
			pwdExpDays = 30 * 3.0;
		}

		return new Date(taskService.getCurrentTime().getTime() + (long) (1000 * 60 * 60 * 24 * pwdExpDays));
	}

	// SYS_PWD_CFG_C_PWD_EXP
	@Override
	public boolean canPWDExpired() {
		Configuration configuration = configurationService.get("SYS_PWD_CFG_C_PWD_EXP");

		if (configuration != null) {
			String canPWDExpired = configuration.getValue();
			if (!StringUtils.isBlank(canPWDExpired) && "Y".equalsIgnoreCase(canPWDExpired)) {
				return true;
			}
		}

		return false;
	}

	@Override
	public boolean isCurrentUserPwdExpired() {
		
		boolean result =false;
		
		try {
			User currentUser = (User) this.get(SecurityUtils.getCurrentLogin().getUserId());
			// 判断密码是否过期
			if (this.canPWDExpired()) {
				if(currentUser !=null){
					Date pwdExpiredDate = currentUser.getPwdExpiredDate();
					if (pwdExpiredDate != null) {
						Date now = taskService.getCurrentTime();
						if (now.compareTo(pwdExpiredDate) > 0) {
							logger.info("the user [" + currentUser.getLoginId() + "] password has expired!");
							result = true;
						}
					}
				}
			}
		} catch (BusinessException e) {

		}
		return result;
	}

	@Override
	public Boolean updatePassword(UserPassChangeDTO userPassChangeDTO) {
		Boolean ret = false;
		String old_password = userPassChangeDTO.getOld_password();
		String new_password = userPassChangeDTO.getNew_password();
		User user = userReadMapper.selectByPrimaryKey(userPassChangeDTO.getUser_id());
		String old_password_MD5 = user.getPassword();
		if (old_password != null) {
			if (SysUtil.MD5Digest(old_password).equals(old_password_MD5)) {
				user.updateCommonInfo(userPassChangeDTO.getUser_id());
				user.setPassword(SysUtil.MD5Digest(new_password));
				if (canPWDExpired()) {
					user.setPwdExpiredDate(getPWDExpiredDate());
				}
				int success = userWriteMapper.updateByPrimaryKeySelective(user);
				if (success == 1)
					ret = true;
			}
		}
		return ret;
	}

	@Override
	public void updateSecurityId(User user) {
		if (user != null && user.getId() > 0 && user.getSecurityId() > 0) {
			userWriteMapper.updateSecurityId(user);
		}
	}

	@Override
	public Integer getT2GUserId() {
		List<User> users = getUsersByRoleCode("_T2G");
		if (!CollectionUtils.isEmpty(users)) {
			return users.get(0).getId();
		}
		return null;
	}

	@Override
	public Integer getT2OUserId() {
		List<User> users = getUsersByRoleCode("_T2O");
		if (!CollectionUtils.isEmpty(users)) {
			return users.get(0).getId();
		}
		return null;
	}

	public List<User> getUsersByRoleCode(String code) {
		return userReadMapper.selectUsersByRoleCode(code);
	}

	@Override
	public Integer getFactoryManagerId(String installVendorId) {
		return userReadMapper.selectFactoryManagerId(installVendorId);
	}

	@Override
	public List<User> getAllUserByOrgID(Integer orgID) {
		return userReadMapper.getAllUserByOrgID(orgID);
	}

	@Override
	public Boolean resetPassword(UserPassChangeDTO userPassChangeDTO) {

		Boolean result = false;

		if (checkResetPwdParameters(userPassChangeDTO)) {
			User user = new User();
			user.setId(userPassChangeDTO.getUser_id());
			user.setPassword(SysUtil.MD5Digest(userPassChangeDTO.getNew_password()));

			int affected = userWriteMapper.updateByPrimaryKeySelective(user);

			if (affected > 0) {
				result = true;
			}
		}

		return result;
	}

	private Boolean checkResetPwdParameters(UserPassChangeDTO userPassChangeDTO) {
		Boolean checkResult = false;

		if (userPassChangeDTO != null) {
			if (userPassChangeDTO.getUser_id() > 0 && userPassChangeDTO.getNew_password() != null) {
				checkResult = true;
			}
		}

		return checkResult;
	}
	
	@Override
	public void refreshAllOrgUserHierarchy(){
		userOrgHierarchyService.cleanupAll();
		List<UserSearchDTO> users = userReadMapper.getAllSearchUser();
		
		if(users!=null){
			for(UserSearchDTO dto : users){
				if(dto!=null){
					refreshOrgUserHierachy(dto.getId(), userReadMapper.selectOrgByUserId(dto.getId()));
				}
			}
		}
	}

	/**
	 * Refresh the system_org_user_hierarchy table
	 * @param userId
	 * @param userCurrentOrgId
	 */
	private void refreshOrgUserHierachy(Integer userId, List<UserOrg> orgUsers) {

		try {
			
			Integer userCurrentOrgId = null;
			
			if(orgUsers!=null && orgUsers.size() ==1){
				UserOrg t = orgUsers.get(0);
				if(t!=null){
					userCurrentOrgId = t.getOrgId();
				}
			}

			if (userCurrentOrgId != null) {
				// cleanup all the org_ids associated with current user.
				userOrgHierarchyService.cleanupOrgIds(userId);

				// insert user's direct org_id first.
				UserOrgHierarchy userOrg = new UserOrgHierarchy();
				userOrg.setOrgId(userCurrentOrgId);
				userOrg.setUserId(userId);

				userOrgHierarchyService.insertSelective(userOrg);

				List<Organization> orgList = corporateService.getAllCorporateHierarchy(userCurrentOrgId);

				if (orgList != null) {
					for (Organization org : orgList) {
						if (org != null) {
							UserOrgHierarchy tempOrgUser = new UserOrgHierarchy();
							tempOrgUser.setOrgId(org.getId());
							tempOrgUser.setUserId(userId);
							userOrgHierarchyService.insertSelective(tempOrgUser);
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(SysUtil.getStackTraceElement(e));
		}
	}

	@Override
	public void sendResetPwdRequestEmail(Integer userId) {
		// send email.
				try {
					String resetPassUrl = propertyResolverLogic.getProperty("resetPassUrl", String.class, "");
					User user = null;
					if (userId != null && userId > 0) {
						user = this.get(userId);
						if (user != null) {
							String emailAddress = user.getLoginId();
							StringBuffer sb = new StringBuffer();
							String toAddress = emailAddress;
							String subject = "[企业管理平台]找回您的账户密码";
							String newLine = "<br/><br/>";

							sb.append("尊敬的 ").append(emailAddress).append(" , 你好！").append(newLine)
									.append("您在访问企业管理平台时点击了“忘记密码”链接，这是一封密码重置确认邮件。").append(newLine)
									.append("您可以通过点击以下链接重置帐户密码:").append(newLine)
									.append("<a href=" + resetPassUrl + "?userId=" + userId  + ">" + resetPassUrl + "?userId=" + userId  + "</a>")
									.append(newLine)
									.append("为保障您的帐号安全，请在24小时内点击该链接，您也可以将链接复制到浏览器地址栏访问。 若如果您并未尝试修改密码，请忽略本邮件，由此给您带来的不便请谅解。").append(newLine)
									.append("本邮件由ICS企业管理平台自动发出，请勿直接回复。 如有疑问或建议，请联系邮箱 <a mailto:ics.service@99wuxian.com>ics.service@99wuxian.com</a> 。")
									.append(newLine).append(newLine).append("欢迎您的使用!").append(newLine).append(newLine)
									.append("ICS企业管理平台").append(newLine)
									.append("<a href=http://b.jiliyun.com>http://b.jiliyun.com</a>").append(newLine);

//							Mail mail = new Mail(toAddress, subject, sb.toString());
//							mailService.saveAndSendLogicMail(mail);
							incentiveServiceImpl.sendEmail(toAddress, subject, sb.toString());
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
					logger.error(e.getMessage());
				}
		
	}
}
