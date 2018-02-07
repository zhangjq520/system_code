package com.logic.system.ws.dto;

import com.logic.common.ws.dto.system.OnlineHelpDTO;
import com.logic.system.domain.OnlineHelp;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by albert on 16-3-7.
 */
public class OnlineHelpConverter {
    public static OnlineHelp converterDtoToPojo(OnlineHelpDTO dto) {
        OnlineHelp pojo = new OnlineHelp();

        pojo.setId(dto.getId());
        pojo.setQuesSubject(dto.getQuestion_subject());
        pojo.setQuesAnswer(dto.getQuestion_answer());
        pojo.setPublishStatus(dto.getPublish_status());
        pojo.setRelatedModules(dto.getRelated_modules());

        return pojo;
    }

    public static OnlineHelpDTO converterPojoToDto(OnlineHelp pojo) {
        OnlineHelpDTO dto = new OnlineHelpDTO();

        dto.setId(pojo.getId());
        dto.setQuestion_subject(pojo.getQuesSubject());
        dto.setQuestion_answer(pojo.getQuesAnswer());
        dto.setPublish_status(pojo.getPublishStatus());
        dto.setRelated_modules(pojo.getRelatedModules());

        return dto;
    }

    public static List<OnlineHelpDTO> converterPojosToDtos(List<OnlineHelp> pojos) {
        if (pojos == null || pojos.isEmpty()) {
            return null;
        }

        List<OnlineHelpDTO> dtos = new ArrayList<OnlineHelpDTO>();

        for (OnlineHelp pojo : pojos) {
            dtos.add(converterPojoToDto(pojo));
        }

        return dtos;
    }
}