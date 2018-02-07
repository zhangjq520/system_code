package com.logic.common.ws.dto.system;

import com.logic.common.util.SysUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by albert on 16-3-9.
 */
public class TimeCriteriaDTO {
    Logger logger = LoggerFactory.getLogger(TimeCriteriaDTO.class);
    private Date start_date;
    private Date end_date;

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        logger.info("--- TimeCriteriaDTO (Before formate) -> " + start_date.getTime() );
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(start_date);
        calendar.set(Calendar.HOUR_OF_DAY,0);
        calendar.set(Calendar.MINUTE,0);
        calendar.set(calendar.SECOND,0);
        calendar.set(calendar.MILLISECOND,0);

        this.start_date = calendar.getTime();
        logger.info("--- TimeCriteriaDTO (After formate) -> " + this.start_date.getTime()  );
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(end_date);
        calendar.set(Calendar.HOUR_OF_DAY,0);
        calendar.set(Calendar.MINUTE,0);
        calendar.set(calendar.SECOND,0);
        calendar.set(calendar.MILLISECOND,0);

        this.end_date = calendar.getTime();
    }

}
