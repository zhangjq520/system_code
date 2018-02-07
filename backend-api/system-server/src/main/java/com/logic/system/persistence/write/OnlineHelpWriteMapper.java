package com.logic.system.persistence.write;

import com.logic.system.domain.OnlineHelp;
import java.math.BigDecimal;

public interface OnlineHelpWriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OnlineHelp record);

    int insertSelective(OnlineHelp record);

    int updateByPrimaryKeySelective(OnlineHelp record);

    int updateByPrimaryKey(OnlineHelp record);
}