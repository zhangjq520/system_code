package com.logic.system.service;

import java.util.List;

import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.system.domain.FormElement;

public interface IFormElementService extends ICRUDService {
	
	/***
	 * 通过element id list得到element list
	 * @param idList
	 * @return List<FormElement>
	 * @throws BusinessException
	 */
	List<FormElement> getFormElementByIds(List<Integer> idList) throws BusinessException;
	
	/***
	 * 通过code得到formElement
	 * @param code
	 * @return
	 * @throws BusinessException
	 */
	FormElement getElementByCode(String code) throws BusinessException;
	
	/***
	 * 获取所有的产品element
	 * @param code
	 * @return
	 * @throws BusinessException
	 */
	List<FormElement> getElement(QueryUtil queryUtil) throws BusinessException;
}
