package com.logic.system.service;

import com.logic.common.service.ICRUDService;
import com.logic.common.util.QueryUtil;
import com.logic.common.ws.dto.system.OnlineHelpDTO;
import com.logic.system.domain.OnlineHelp;

import java.util.List;

/**
 * Created by albert on 16-2-23.
 */
public interface IOnlineHelpService extends ICRUDService {
    List<OnlineHelp> getAllOnlineHelp();

    List<OnlineHelpDTO> queryOnlineHelps(QueryUtil queryUtil);
}
