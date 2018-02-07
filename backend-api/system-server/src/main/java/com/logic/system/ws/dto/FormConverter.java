package com.logic.system.ws.dto;

import com.logic.system.domain.Form;
import com.logic.system.domain.OrgForm;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.FormDTO;

import java.util.ArrayList;
import java.util.List;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class FormConverter {
    public static Form fromDTOToForm(FormDTO formDTO) throws BusinessException {
        Form form = new Form();
        form.setId(SysUtil.getValidDtoInteger(formDTO.getId(), "Form DTO id"));
        form.setCode(formDTO.getCode());
        form.setShortDesc(formDTO.getForm_name());
        form.setLongDesc(formDTO.getForm_description());
        form.setStatus(formDTO.getStatus());
        form.setStyle(formDTO.getStyle());

        form.setOther1(formDTO.getMachine_type());
        form.setOther2(formDTO.getApply_type());

        if(formDTO.getOrg_ids() != null) {
            List<OrgForm> orgFormList = new ArrayList<OrgForm>();
            if(!formDTO.getOrg_ids().trim().equals("")) {
                String[] arr = formDTO.getOrg_ids().split(",");
                for(String orgId : arr) {
                    OrgForm orgForm = new OrgForm();
                    orgForm.setOrgId(Integer.valueOf(orgId));
                    orgFormList.add(orgForm);
                }
            }
            form.setOrgForms(orgFormList);
        }



        return form;
    }

    public static FormDTO fromFormToDTO(Form form){
        FormDTO dto = new FormDTO();
        dto.setId(form.getId() == null ? null : form.getId().toString());
        dto.setCode(form.getCode());
        dto.setForm_name(form.getShortDesc());
        dto.setForm_description(form.getLongDesc());
        dto.setStatus(form.getStatus());
        dto.setStyle(form.getStyle());

        dto.setMachine_type(form.getOther1());
        dto.setApply_type(form.getOther2());

        List<OrgForm> orgFormList = form.getOrgForms();
        if(orgFormList != null && orgFormList.size() > 0) {
            String orgIds = "";
            for(OrgForm orgForm : orgFormList) {
                Integer orgId = orgForm.getOrgId();
                orgIds += orgId + ",";
            }
            if(orgIds.length() > 0) {
                orgIds = orgIds.substring(0, orgIds.length() - 1);
            }
            dto.setOrg_ids(orgIds);
        }

        return dto;
    }
}
