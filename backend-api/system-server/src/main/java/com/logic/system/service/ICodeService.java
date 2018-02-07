package com.logic.system.service;

import java.util.List;

import com.logic.common.domain.Code;
import com.logic.common.exception.BusinessException;
import com.logic.common.service.ICRUDService;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.CodeForJSTreeDTO;

public interface ICodeService extends ICRUDService {

  public Code getCode(String code) throws BusinessException;

  public List<Code> getChildCodes(String name);

  public List<CodeDTO> getHierarchyCodes(String code);

  public List<Code> getCodeAndChildren(String codes) throws BusinessException;

  public List<CodeForJSTreeDTO> getChildCodesForJSTree(String code);

  public CodeForJSTreeDTO getCodeForJSTree(String code);

  public List<Code> getCodeWithBlur(String valueOf);

  public List<Code> getCodeForDiag();
  
  public List<Code> getCodesByIds(String ids);

}
