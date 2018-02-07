package com.logic.system.ws.dto;

import com.logic.system.domain.FormSection;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.SectionDTO;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class SectionConverter {

    public static FormSection fromDTOtoSection(SectionDTO sectionDTO) throws BusinessException {
        FormSection section = new FormSection();
        section.setId(SysUtil.getValidDtoInteger(sectionDTO.getId(), "SectionDTO id"));
        section.setName(sectionDTO.getName());
        return section;
    }

    public static SectionDTO fromSectionToDTO(FormSection section){
        SectionDTO dto = new SectionDTO();
        dto.setId(section.getId() == null ? null : section.getId().toString());
        dto.setName(section.getName());
        return dto;
    }
}
