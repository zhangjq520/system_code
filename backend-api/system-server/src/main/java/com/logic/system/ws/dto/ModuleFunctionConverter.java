package com.logic.system.ws.dto;

import com.logic.system.domain.ModuleFunction;
import com.logic.common.ws.dto.system.ModuleFunctionDTO;

/*************************************************************************
 * Author: omer
 * Date  : 10/27/15
 */
public class ModuleFunctionConverter {

    public static ModuleFunction fromDTOToModuleFunction(ModuleFunctionDTO moduleFunctionDTO) {
        ModuleFunction moduleFunction = new ModuleFunction();
        moduleFunction.setId(moduleFunctionDTO.getId());
        moduleFunction.setModuleId(moduleFunctionDTO.getModule_id());
        moduleFunction.setFunctionNewEnabled(moduleFunctionDTO.getFunction_new_enabled());
        moduleFunction.setFunctionNewLabelEn(moduleFunctionDTO.getFunction_new_label_en());
        moduleFunction.setFunctionNewLabelZh(moduleFunctionDTO.getFunction_new_label_zh());
        moduleFunction.setFunctionUpdateEnabled(moduleFunctionDTO.getFunction_update_enabled());
        moduleFunction.setFunctionUpdateLabelEn(moduleFunctionDTO.getFunction_update_label_en());
        moduleFunction.setFunctionUpdateLabelZh(moduleFunctionDTO.getFunction_update_label_zh());
        moduleFunction.setFunctionDeleteEnabled(moduleFunctionDTO.getFunction_delete_enabled());
        moduleFunction.setFunctionDeleteLabelEn(moduleFunctionDTO.getFunction_delete_label_en());
        moduleFunction.setFunctionDeleteLabelZh(moduleFunctionDTO.getFunction_delete_label_zh());
        moduleFunction.setFunctionQueryEnabled(moduleFunctionDTO.getFunction_query_enabled());
        moduleFunction.setFunctionQueryLabelEn(moduleFunctionDTO.getFunction_query_label_en());
        moduleFunction.setFunctionQueryLabelZh(moduleFunctionDTO.getFunction_query_label_zh());
        moduleFunction.setFunctionOther1Enabled(moduleFunctionDTO.getFunction_other1_enabled());
        moduleFunction.setFunctionOther1LabelEn(moduleFunctionDTO.getFunction_other1_label_en());
        moduleFunction.setFunctionOther1LabelZh(moduleFunctionDTO.getFunction_other1_label_zh());
        moduleFunction.setFunctionOther2Enabled(moduleFunctionDTO.getFunction_other2_enabled());
        moduleFunction.setFunctionOther2LabelEn(moduleFunctionDTO.getFunction_other2_label_en());
        moduleFunction.setFunctionOther2LabelZh(moduleFunctionDTO.getFunction_other2_label_zh());
        moduleFunction.setFunctionOther3Enabled(moduleFunctionDTO.getFunction_other3_enabled());
        moduleFunction.setFunctionOther3LabelEn(moduleFunctionDTO.getFunction_other3_label_en());
        moduleFunction.setFunctionOther3LabelZh(moduleFunctionDTO.getFunction_other3_label_zh());
        moduleFunction.setFunctionOther4Enabled(moduleFunctionDTO.getFunction_other4_enabled());
        moduleFunction.setFunctionOther4LabelEn(moduleFunctionDTO.getFunction_other4_label_en());
        moduleFunction.setFunctionOther4LabelZh(moduleFunctionDTO.getFunction_other4_label_zh());
        moduleFunction.setFunctionOther5Enabled(moduleFunctionDTO.getFunction_other5_enabled());
        moduleFunction.setFunctionOther5LabelEn(moduleFunctionDTO.getFunction_other5_label_en());
        moduleFunction.setFunctionOther5LabelZh(moduleFunctionDTO.getFunction_other5_label_zh());
        moduleFunction.setFunctionOther6Enabled(moduleFunctionDTO.getFunction_other6_enabled());
        moduleFunction.setFunctionOther6LabelEn(moduleFunctionDTO.getFunction_other6_label_en());
        moduleFunction.setFunctionOther6LabelZh(moduleFunctionDTO.getFunction_other6_label_zh());
        moduleFunction.setFunctionOther7Enabled(moduleFunctionDTO.getFunction_other7_enabled());
        moduleFunction.setFunctionOther7LabelEn(moduleFunctionDTO.getFunction_other7_label_en());
        moduleFunction.setFunctionOther7LabelZh(moduleFunctionDTO.getFunction_other7_label_zh());
        moduleFunction.setFunctionOther8Enabled(moduleFunctionDTO.getFunction_other8_enabled());
        moduleFunction.setFunctionOther8LabelEn(moduleFunctionDTO.getFunction_other8_label_en());
        moduleFunction.setFunctionOther8LabelZh(moduleFunctionDTO.getFunction_other8_label_zh());
        moduleFunction.setFunctionOther9Enabled(moduleFunctionDTO.getFunction_other9_enabled());
        moduleFunction.setFunctionOther9LabelEn(moduleFunctionDTO.getFunction_other9_label_en());
        moduleFunction.setFunctionOther9LabelZh(moduleFunctionDTO.getFunction_other9_label_zh());
        moduleFunction.setFunctionOther10Enabled(moduleFunctionDTO.getFunction_other10_enabled());
        moduleFunction.setFunctionOther10LabelEn(moduleFunctionDTO.getFunction_other10_label_en());
        moduleFunction.setFunctionOther10LabelZh(moduleFunctionDTO.getFunction_other10_label_zh());
        moduleFunction.setFunctionOther11Enabled(moduleFunctionDTO.getFunction_other11_enabled());
        moduleFunction.setFunctionOther11LabelEn(moduleFunctionDTO.getFunction_other11_label_en());
        moduleFunction.setFunctionOther11LabelZh(moduleFunctionDTO.getFunction_other11_label_zh());
        moduleFunction.setFunctionOther12Enabled(moduleFunctionDTO.getFunction_other12_enabled());
        moduleFunction.setFunctionOther12LabelEn(moduleFunctionDTO.getFunction_other12_label_en());
        moduleFunction.setFunctionOther12LabelZh(moduleFunctionDTO.getFunction_other12_label_zh());
        return moduleFunction;
    }

    public static ModuleFunctionDTO fromModuleFunctionToDTO(ModuleFunction moduleFunction){
        ModuleFunctionDTO moduleFunctionDto = new ModuleFunctionDTO();
        moduleFunctionDto.setId(moduleFunction.getId());
        moduleFunctionDto.setModule_id(moduleFunction.getModuleId());
        moduleFunctionDto.setFunction_new_enabled(moduleFunction.getFunctionNewEnabled());
        moduleFunctionDto.setFunction_new_label_en(moduleFunction.getFunctionNewLabelEn());
        moduleFunctionDto.setFunction_new_label_zh(moduleFunction.getFunctionNewLabelZh());
        moduleFunctionDto.setFunction_update_enabled(moduleFunction.getFunctionUpdateEnabled());
        moduleFunctionDto.setFunction_update_label_en(moduleFunction.getFunctionUpdateLabelEn());
        moduleFunctionDto.setFunction_update_label_zh(moduleFunction.getFunctionUpdateLabelZh());
        moduleFunctionDto.setFunction_delete_enabled(moduleFunction.getFunctionDeleteEnabled());
        moduleFunctionDto.setFunction_delete_label_en(moduleFunction.getFunctionDeleteLabelEn());
        moduleFunctionDto.setFunction_delete_label_zh(moduleFunction.getFunctionDeleteLabelZh());
        moduleFunctionDto.setFunction_query_enabled(moduleFunction.getFunctionQueryEnabled());
        moduleFunctionDto.setFunction_query_label_en(moduleFunction.getFunctionQueryLabelEn());
        moduleFunctionDto.setFunction_query_label_zh(moduleFunction.getFunctionQueryLabelZh());
        moduleFunctionDto.setFunction_other1_enabled(moduleFunction.getFunctionOther1Enabled());
        moduleFunctionDto.setFunction_other1_label_en(moduleFunction.getFunctionOther1LabelEn());
        moduleFunctionDto.setFunction_other1_label_zh(moduleFunction.getFunctionOther1LabelZh());
        moduleFunctionDto.setFunction_other2_enabled(moduleFunction.getFunctionOther2Enabled());
        moduleFunctionDto.setFunction_other2_label_en(moduleFunction.getFunctionOther2LabelEn());
        moduleFunctionDto.setFunction_other2_label_zh(moduleFunction.getFunctionOther2LabelZh());
        moduleFunctionDto.setFunction_other3_enabled(moduleFunction.getFunctionOther3Enabled());
        moduleFunctionDto.setFunction_other3_label_en(moduleFunction.getFunctionOther3LabelEn());
        moduleFunctionDto.setFunction_other3_label_zh(moduleFunction.getFunctionOther3LabelZh());
        moduleFunctionDto.setFunction_other4_enabled(moduleFunction.getFunctionOther4Enabled());
        moduleFunctionDto.setFunction_other4_label_en(moduleFunction.getFunctionOther4LabelEn());
        moduleFunctionDto.setFunction_other4_label_zh(moduleFunction.getFunctionOther4LabelZh());
        moduleFunctionDto.setFunction_other5_enabled(moduleFunction.getFunctionOther5Enabled());
        moduleFunctionDto.setFunction_other5_label_en(moduleFunction.getFunctionOther5LabelEn());
        moduleFunctionDto.setFunction_other5_label_zh(moduleFunction.getFunctionOther5LabelZh());
        moduleFunctionDto.setFunction_other6_enabled(moduleFunction.getFunctionOther6Enabled());
        moduleFunctionDto.setFunction_other6_label_en(moduleFunction.getFunctionOther6LabelEn());
        moduleFunctionDto.setFunction_other6_label_zh(moduleFunction.getFunctionOther6LabelZh());
        moduleFunctionDto.setFunction_other7_enabled(moduleFunction.getFunctionOther7Enabled());
        moduleFunctionDto.setFunction_other7_label_en(moduleFunction.getFunctionOther7LabelEn());
        moduleFunctionDto.setFunction_other7_label_zh(moduleFunction.getFunctionOther7LabelZh());
        moduleFunctionDto.setFunction_other8_enabled(moduleFunction.getFunctionOther8Enabled());
        moduleFunctionDto.setFunction_other8_label_en(moduleFunction.getFunctionOther8LabelEn());
        moduleFunctionDto.setFunction_other8_label_zh(moduleFunction.getFunctionOther8LabelZh());
        moduleFunctionDto.setFunction_other9_enabled(moduleFunction.getFunctionOther9Enabled());
        moduleFunctionDto.setFunction_other9_label_en(moduleFunction.getFunctionOther9LabelEn());
        moduleFunctionDto.setFunction_other9_label_zh(moduleFunction.getFunctionOther9LabelZh());
        moduleFunctionDto.setFunction_other10_enabled(moduleFunction.getFunctionOther10Enabled());
        moduleFunctionDto.setFunction_other10_label_en(moduleFunction.getFunctionOther10LabelEn());
        moduleFunctionDto.setFunction_other10_label_zh(moduleFunction.getFunctionOther10LabelZh());
        moduleFunctionDto.setFunction_other11_enabled(moduleFunction.getFunctionOther11Enabled());
        moduleFunctionDto.setFunction_other11_label_en(moduleFunction.getFunctionOther11LabelEn());
        moduleFunctionDto.setFunction_other11_label_zh(moduleFunction.getFunctionOther11LabelZh());
        moduleFunctionDto.setFunction_other12_enabled(moduleFunction.getFunctionOther12Enabled());
        moduleFunctionDto.setFunction_other12_label_en(moduleFunction.getFunctionOther12LabelEn());
        moduleFunctionDto.setFunction_other12_label_zh(moduleFunction.getFunctionOther12LabelZh());
        return moduleFunctionDto;
    }
}
