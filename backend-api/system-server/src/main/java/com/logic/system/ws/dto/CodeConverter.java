package com.logic.system.ws.dto;

import com.logic.common.domain.Code;
import com.logic.common.domain.OrgCode;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.CodeDTO;

import java.util.ArrayList;
import java.util.List;

public class CodeConverter{
    public static Code fromCodeDTOToCode(Code originalCode, CodeDTO codeDto) throws BusinessException {
        originalCode.setCode(codeDto.getCode());
        originalCode.setCodeDescEn(codeDto.getCode_desc_en());
        originalCode.setCodeDescZh(codeDto.getCode_desc_zh());
        originalCode.setCodeDescTr(codeDto.getCode_desc_tr());
        originalCode.setPriority(SysUtil.getValidDtoInteger(codeDto.getPriority(), "CodeDTO priority"));
        originalCode.setDisabled(SysUtil.getValidDtoBoolean(codeDto.getDisabled(), "CodeDTO disabled"));
        originalCode.setParentCode(codeDto.getParent_code());
        if(codeDto.getOrg_ids() != null) {
            List<OrgCode> orgCodeList = new ArrayList<OrgCode>();
            if(!codeDto.getOrg_ids().trim().equals("")) {
                String[] arr = codeDto.getOrg_ids().split(",");
                for(String orgId : arr) {
                    OrgCode orgCode = new OrgCode();
                    orgCode.setOrgId(Integer.valueOf(orgId));
                    orgCodeList.add(orgCode);
                }
            }
            originalCode.setOrgCodes(orgCodeList);
        }
        return originalCode;
    }

    public static CodeDTO fromCodeToCodeDTO(Code code) {
        CodeDTO codeDto = new CodeDTO();
        codeDto.setCode(code.getCode());
        codeDto.setCode_desc_en(code.getCodeDescEn());
        codeDto.setCode_desc_zh(code.getCodeDescZh());
        codeDto.setCode_desc_tr(code.getCodeDescTr());
        codeDto.setPriority(code.getPriority() == null ? null : code.getPriority().toString());
        codeDto.setDisabled(code.getDisabled() == null ? null : code.getDisabled().toString());
        codeDto.setParent_code(code.getParentCode());
        codeDto.setOther_9(code.getOther9());

        List<OrgCode> orgCodeList = code.getOrgCodes();
        if(orgCodeList != null && orgCodeList.size() > 0) {
            String orgIds = "";
            for(OrgCode orgCode : orgCodeList) {
                Integer orgId =  orgCode.getOrgId();
                orgIds += orgId + ",";
            }
            if(orgIds.length() > 0) {
                orgIds = orgIds.substring(0, orgIds.length() - 1);
            }
            codeDto.setOrg_ids(orgIds);
        }

        return codeDto;
    }

    public static List<CodeDTO> fromCodeListToDTOList(List<Code> codeList){
        List<CodeDTO> codeDTOs = new ArrayList<CodeDTO>();
        for (Code code : codeList) {
            CodeDTO codeDTO = fromCodeToCodeDTO(code);
            codeDTOs.add(codeDTO);
        }
        return codeDTOs;
    }
}
