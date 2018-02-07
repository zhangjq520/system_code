package com.logic.system.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.logic.common.ErrorMessageEnum;
import com.logic.common.domain.Code;
import com.logic.common.domain.OrgCode;
import com.logic.common.exception.BusinessException;
import com.logic.common.security.SecurityUtils;
import com.logic.common.util.CacheFactory;
import com.logic.common.util.ICache;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.CodeForJSTreeDTO;
import com.logic.system.persistence.read.CodeReadMapper;
import com.logic.system.persistence.write.CodeWriteMapper;
import com.logic.system.service.ICodeService;
import com.logic.system.ws.dto.CodeConverter;

@Service
public class CodeService implements ICodeService {

	@Autowired
	private CodeReadMapper codeReadMapper;

	@Autowired
	private CodeWriteMapper codeWriteMapper;

	public List<Object> query(QueryUtil queryUtil) {
		List<Object> list = new ArrayList<Object>();
		List<CodeDTO> codeList = codeReadMapper.getRootCodes(queryUtil);
		if (codeList != null) {
			for (CodeDTO code : codeList) {
				list.add(code);
			}
		}
		return list;
	}

	/**
	 * code table doesn't have id, so return 1 or 0
	 * 
	 * @param obj
	 * @return 1 for success, 0 for failure
	 */
	public int insert(Object obj) throws BusinessException {
		Code code = (Code) obj;
		Boolean isValidCodeForInsert = this.validateForInsert(code);

		int result = 0;
		if (isValidCodeForInsert) {
			code.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			codeWriteMapper.insertSelective(code);

			ICache cache = CacheFactory.getCacheImpl();
			cache.removeChildCodes(code.getParentCode() == null ? code.getCode() : code.getParentCode());

			if (code.getOrgCodes() != null && code.getOrgCodes().size() > 0) {
				for (OrgCode orgCode : code.getOrgCodes()) {
					orgCode.setCode(code.getCode());
				}
				codeWriteMapper.insertOrgCodes(code.getOrgCodes());
			}

			result = 1;
		}

		return result;

	}

	public Code getCode(String codeID) throws BusinessException {

		Code code = codeReadMapper.selectByPrimaryKey(codeID);
		if (code == null) {
			throw new BusinessException(ErrorMessageEnum.Code_Get_Not_Exist, codeID);
		} else {
			code.setOrgCodes(codeReadMapper.selectOrgCodes(codeID));
		}
		return code;
	}

	/**
	 * Return a list of codes based on the parent code string. The following
	 * logic will first try to get Code from cache, if there is nothing found in
	 * cache, we will try to retrieve database and set the value to cache.
	 * 
	 * @param codeID
	 * @return A list of Child Codes
	 */
	public List<Code> getChildCodes(String codeID) {

		ICache cache = CacheFactory.getCacheImpl();

		List<Code> childCodeList = cache.getChildCodes(codeID);

		if (childCodeList == null) {
			childCodeList = codeReadMapper.getChildCodes(codeID);
			if (childCodeList != null && childCodeList.size() != 0) {
				for (Code code : childCodeList) {
					code.setOrgCodes(codeReadMapper.selectOrgCodes(code.getCode()));
				}
				
				cache.setChildCodes(codeID, childCodeList);				
			}
		}

		return childCodeList;

	}

	public List<Code> getCodeAndChildren(String codes) throws BusinessException {
		List<Code> codeList = new ArrayList<Code>();
		String[] codeArr = codes.split(",");
		for (String strCode : codeArr) {
			Code code = getCode(strCode);
			List<Code> childCodeList = getChildCodes(code.getCode());
			code.setChildCodes(childCodeList);
			codeList.add(code);
		}
		return codeList;

	}

	public void update(Object obj) throws BusinessException {
		Code code = (Code) obj;
		Boolean isValidCodeForUpdate = this.validateForUpdate(code);

		if (isValidCodeForUpdate) {
			code.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			codeWriteMapper.updateByPrimaryKeySelective(code);

			if (code.getOrgCodes() != null) {
				if (code.getOrgCodes().size() > 0) {
					codeWriteMapper.deleteOrgCodes(code.getCode());
					for (OrgCode orgCode : code.getOrgCodes()) {
						orgCode.setCode(code.getCode());
					}
					codeWriteMapper.insertOrgCodes(code.getOrgCodes());
				} else {
					codeWriteMapper.deleteOrgCodes(code.getCode());
				}
			}

			code = getCode(code.getCode());

			ICache cache = CacheFactory.getCacheImpl();
			cache.removeChildCodes(code.getParentCode() == null ? code.getCode() : code.getParentCode());
		}
	}

	/**
	 * Update the value of is_delete in records to true based on the passed in
	 * parameters.
	 * 
	 * @param codes
	 * @throws BusinessException
	 */
	@Transactional(rollbackFor = BusinessException.class)
	public void delete(String codes) throws BusinessException {
		String[] codeArr = codes.split(",");
		for (String code : codeArr) {
			Code systemCode = getCode(code);
			if (systemCode == null) {
				throw new BusinessException(ErrorMessageEnum.Code_DeleteCode_Code_Not_Exist, code);
			}
			List<Code> childCodeList = codeReadMapper.getChildCodes(code);
			if (childCodeList != null && childCodeList.size() > 0) {
				throw new BusinessException(ErrorMessageEnum.Code_DeleteCode_Need_Delete_Children, code);
			}
			if (code.startsWith("_")) {
				throw new BusinessException(ErrorMessageEnum.Code_DeleteCode_Default_Cannot_Deleted, code);
			}
			systemCode.updateCommonInfo(SecurityUtils.getCurrentLogin().getUserId());
			codeWriteMapper.deleteByPrimaryKey(systemCode);
			codeWriteMapper.deleteOrgCodes(code);

			ICache cache = CacheFactory.getCacheImpl();
			cache.removeChildCodes(
					systemCode.getParentCode() == null ? systemCode.getCode() : systemCode.getParentCode());
		}
	}

	public Boolean validateForInsert(Object obj) throws BusinessException {

		Code code = (Code) obj;
		Boolean ret = validate(code);

		// 新增必填项 disableId
		if (null == code.getDisabled() || StringUtils.isEmpty(code.getDisabled().toString())) {
			throw new BusinessException(ErrorMessageEnum.Code_CreateCode_Empty_Disabled);
		}

		// 新增必填项 code
		if (StringUtils.isEmpty(code.getCode())) {
			throw new BusinessException(ErrorMessageEnum.Code_CreateCode_Code_Not_Empty);
		}

		/*if (code.getCode().startsWith("_")) {
			throw new BusinessException(ErrorMessageEnum.Code_CreateCode_Code_Underline);
		}*/

		// code 唯一性验证
		Integer count = codeReadMapper.checkCodeUnique(code.getCode());
		if (count > 0) {
			throw new BusinessException(ErrorMessageEnum.Code_CreateCode_Code_Already_Exist, code.getCode());
		}

		ret = true;
		return ret;
	}

	public List<CodeDTO> getHierarchyCodes(String code) {
		List<CodeDTO> returnList = new ArrayList<CodeDTO>();

		List<Code> childCodesList = getChildCodes(code);
		if (childCodesList != null && childCodesList.size() > 0) {
			for (Code childCode : childCodesList) {
				CodeDTO childCodeDto = CodeConverter.fromCodeToCodeDTO(childCode);
				List<Code> list = getChildCodes(childCodeDto.getCode());
				if (list != null && list.size() > 0) {
					childCodeDto.setHas_children(new Boolean(true).toString());
				} else {
					childCodeDto.setHas_children(new Boolean(false).toString());
				}
				returnList.add(childCodeDto);
			}

			for (CodeDTO childCodeDto : returnList) {
				List<CodeDTO> list = getChildHierarchy(childCodeDto.getCode());
				childCodeDto.setChildCodes(list);
			}
		}
		return returnList;
	}

	private List<CodeDTO> getChildHierarchy(String code) {
		List<CodeDTO> returnList = new ArrayList<CodeDTO>();

		List<Code> childCodesList = getChildCodes(code);
		if (childCodesList != null && childCodesList.size() > 0) {
			for (Code childCode : childCodesList) {
				CodeDTO childCodeDto = CodeConverter.fromCodeToCodeDTO(childCode);
				List<Code> list = getChildCodes(childCodeDto.getCode());
				if (list != null && list.size() > 0) {
					childCodeDto.setHas_children(new Boolean(true).toString());
				} else {
					childCodeDto.setHas_children(new Boolean(false).toString());
				}
				returnList.add(childCodeDto);
			}

			for (CodeDTO childCodeDto : returnList) {
				List<CodeDTO> list = getChildHierarchy(childCodeDto.getCode());
				childCodeDto.setChildCodes(list);
			}
		}
		return returnList;
	}

	@Override
	public Object get(Integer id) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean validate(Object obj) throws BusinessException {
		Code code = (Code) obj;
		Boolean ret = false;
		if (code == null) {
			throw new BusinessException(ErrorMessageEnum.Code_Insert_Or_Update_Empty_Object);
		}

		// 新增或者更新，parentCode = "" 情况下进行判断
		if (null != code.getParentCode() && code.getParentCode().length() == 0) {
			throw new BusinessException(ErrorMessageEnum.Code_Insert_Or_Update_Empty_Parent_Code);
		}

		// 新增或者更新，parentCode 验证，在system_code 表中 有 code 与之对应
		if (null != code.getParentCode() && !StringUtils.isEmpty(code.getParentCode())) {
			Integer parentCodeCount = codeReadMapper.checkCodeUnique(code.getParentCode());
			if (parentCodeCount == 0) {
				throw new BusinessException(ErrorMessageEnum.Code_Insert_Or_Update_Parnet_Code_Not_Exsit);
			}
		}

		ret = true;

		return ret;
	}

	@Override
	public Boolean validateForUpdate(Object obj) throws BusinessException {
		Code code = (Code) obj;
		Boolean ret = validate(code);

		// 更新code 不为空验证
		if (null == code.getCode() || StringUtils.isEmpty(code.getCode())) {
			throw new BusinessException(ErrorMessageEnum.Code_UpdateCode_Empty_Code);
		}

		// 更新 disableId为必填字段
		if (null != code.getDisabled() && StringUtils.isEmpty(code.getDisabled().toString())) {
			throw new BusinessException(ErrorMessageEnum.Code_UpdateCode_Empty_Disabled);
		}

		if (code.getCode().equals(code.getParentCode())) {
			throw new BusinessException(ErrorMessageEnum.Code_UpdateCode_ParentCode_Cannot_Be_Self);
		}

		Integer count = codeReadMapper.checkCodeUnique(code.getCode());
		if (count == 0) {
			throw new BusinessException(ErrorMessageEnum.Code_UpdateCode_Code_Not_Exist, code.getCode());
		}

		ret = true;

		return ret;
	}

	@Override
	public Boolean validateForDelete(Object obj) throws BusinessException {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public List<CodeForJSTreeDTO> getChildCodesForJSTree(String code) {
		return codeReadMapper.getChildCodesForJSTree(code);
	}

	@Override
	public CodeForJSTreeDTO getCodeForJSTree(String code) {
		return codeReadMapper.getCodeForJSTree(code);
	}

	public List<Code> getCodeWithBlur(String code) {
		return codeReadMapper.getCodeWithBlur(code);
	}

	@Override
	public List<Code> getCodeForDiag() {
		return codeReadMapper.selectCodeForDiag();
	}

	@Override
	public List<Code> getCodesByIds(String ids) {
		String[] codeIdString = ids.split(",");
		List<Code> codeList = new ArrayList<Code>();
		List<String> codeIdList = new ArrayList<String>();
		for (String codeId : codeIdString) {
			codeIdList.add(codeId);
		}
		if(codeIdList.size() > 0)
			codeList = codeReadMapper.getCodesByIds(codeIdList);
		return codeList;
	}
}
