package com.logic.system.persistence.read;

import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.OnlineHelpDTO;
import com.logic.system.domain.OnlineHelp;

import java.util.List;

public interface OnlineHelpReadMapper {
    OnlineHelp selectByPrimaryKey(Integer id);

    List<OnlineHelp> selectAll();

    List<OnlineHelpDTO> queryOnlineHelps(QueryUtil queryUtil);
}