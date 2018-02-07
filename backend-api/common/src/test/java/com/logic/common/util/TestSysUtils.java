package com.logic.common.util;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.util.Date;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TestSysUtils {

	@Before
	public void setup() {
		// nothing to do;
	}

	@After
	public void tearDown() {
		// nothing to do;
	}

	@Test
	public void testFormatDateString() {
		String src = "20160101111111";
		String expectedResult = "2016-01-01 11:11:11";
		String des = SysUtil.formatDateString(src);

		assertNotNull(des);
		assertTrue(des.equals(expectedResult));
	}

	@Test
	public void testCronUtil() {

		Date test = CronExpressionUtil.getNextExecDate("0 0 0 1 * ?");
		System.out.println(test);

	}
}
