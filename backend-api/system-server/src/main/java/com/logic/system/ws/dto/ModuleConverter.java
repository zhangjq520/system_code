package com.logic.system.ws.dto;

import com.logic.system.domain.Module;
import com.logic.system.domain.ModuleFunction;
import com.logic.common.exception.BusinessException;
import com.logic.common.util.SysUtil;
import com.logic.common.ws.dto.system.ModuleDTO;
import com.logic.common.ws.dto.system.ModuleFunctionDTO;

import java.util.ArrayList;
import java.util.List;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class ModuleConverter {
    public static Module fromDTOToModule(ModuleDTO moduleDTO) throws BusinessException {
        Module module = new Module();
        module.setId(SysUtil.getValidDtoInteger(moduleDTO.getId(), "ModuleDTO id"));
        module.setType(moduleDTO.getType());
        module.setCode(moduleDTO.getCode());
        module.setNameEn(moduleDTO.getName_en());
        module.setNameZh(moduleDTO.getName_zh());
        module.setUrl(moduleDTO.getUrl());
        module.setDescriptionsEn(moduleDTO.getDescriptions_en());
        module.setDescriptionsZh(moduleDTO.getDescriptions_zh());
        module.setParentId(SysUtil.getValidDtoInteger(moduleDTO.getParent_id(), "ModuleDTO parentId"));
        module.setPriority(SysUtil.getValidDtoInteger(moduleDTO.getPriority(), "ModuleDTO priority"));
        module.setPermissionString(SysUtil.getValidDtoInteger(moduleDTO.getPermission_string(), "ModuleDTO permission"));

        ModuleFunctionDTO moduleFunctionDto = moduleDTO.getModuleFunctionDto();
        if (moduleFunctionDto != null) {
            ModuleFunction moduleFunction = ModuleFunctionConverter.fromDTOToModuleFunction(moduleFunctionDto);
            module.setModuleFunction(moduleFunction);
        }
        return module;
    }

    public static ModuleDTO fromModuleToDTO(Module module){
        ModuleDTO moduleDto = new ModuleDTO();
        moduleDto.setId(module.getId() == null ? null : module.getId().toString());
        moduleDto.setType(module.getType());
        moduleDto.setCode(module.getCode());
        moduleDto.setName_en(module.getNameEn());
        moduleDto.setName_zh(module.getNameZh());
        moduleDto.setUrl(module.getUrl());
        moduleDto.setDescriptions_en(module.getDescriptionsEn());
        moduleDto.setDescriptions_zh(module.getDescriptionsZh());
        moduleDto.setParent_id(module.getParentId() == null ? null : module.getParentId().toString());
        moduleDto.setPriority(module.getPriority() == null ? null : module.getPriority().toString());
        moduleDto.setPermission_string(module.getPermissionString() == null ? null : module.getPermissionString()
                .toString());

        ModuleFunction moduleFunction = module.getModuleFunction();
        if (moduleFunction != null) {
            ModuleFunctionDTO moduleFunctionDto = ModuleFunctionConverter.fromModuleFunctionToDTO(moduleFunction);
            moduleDto.setModuleFunctionDto(moduleFunctionDto);
        }

        if (module.getChildModules() != null) {
            List<ModuleDTO> dtoList = new ArrayList<ModuleDTO>();
            for (Module childModule : module.getChildModules()) {
                ModuleDTO dto = fromModuleToDTO(childModule);
                dtoList.add(dto);
            }
            moduleDto.setChild_modules(dtoList);
        }
        return moduleDto;
    }
}
