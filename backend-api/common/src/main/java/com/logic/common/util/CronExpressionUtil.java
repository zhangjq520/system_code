package com.logic.common.util;

import java.util.Date;
import java.util.TimeZone;

import org.springframework.scheduling.support.CronTrigger;
import org.springframework.scheduling.support.SimpleTriggerContext;

public class CronExpressionUtil {

//	public static Date getNextExecDate_(String cronExpression) throws ParseException {
//
//		CronExpression ec = new CronExpression(cronExpression);
//		
//		return ec.getNextValidTimeAfter(new Date());
//	}
	
	public static Date getNextExecDate(String cronExpression) {
		
		CronTrigger trigger = new CronTrigger(cronExpression, TimeZone.getDefault());
		SimpleTriggerContext triggerContext = new SimpleTriggerContext();
		triggerContext.update(null, null, new Date());
		Date nextFireAt = trigger.nextExecutionTime(triggerContext);
		
		return nextFireAt;
	}	
}