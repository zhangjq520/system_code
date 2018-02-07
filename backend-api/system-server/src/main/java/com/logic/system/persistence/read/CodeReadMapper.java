package com.logic.system.persistence.read;

import java.util.List;

import com.logic.common.domain.Code;
import com.logic.common.domain.OrgCode;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.CodeDTO;
import com.logic.common.ws.dto.system.CodeForJSTreeDTO;

public interface CodeReadMapper {

	Code selectByPrimaryKey(String code);

	List<CodeDTO> getRootCodes(QueryUtil queryUtil);

	List<Code> getChildCodes(String code);

	int checkCodeUnique(String code);

	List<OrgCode> selectOrgCodes(String code);

	List<CodeForJSTreeDTO> getChildCodesForJSTree(String code);

	CodeForJSTreeDTO getCodeForJSTree(String code);

	List<Code> getCodeWithBlur(String code);

	List<Code> selectCodeForDiag();

	List<Code> getCodesByIds(List<String> codeIdList);

}
