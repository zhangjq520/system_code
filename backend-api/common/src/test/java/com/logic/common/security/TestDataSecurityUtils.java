package com.logic.common.security;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TestDataSecurityUtils {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testHasOrgPermission() {
		assertTrue(DataSecurityUtils.hasOrgPermission("", ""));
		
		assertFalse(DataSecurityUtils.hasOrgPermission(null, null));
		
		assertFalse(DataSecurityUtils.hasOrgPermission(null, ""));
		
		assertFalse(DataSecurityUtils.hasOrgPermission("", null));
		
		assertFalse(DataSecurityUtils.hasOrgPermission("1", ""));
		
		assertFalse(DataSecurityUtils.hasOrgPermission("", "1"));
		
		assertTrue(DataSecurityUtils.hasOrgPermission("1", "1"));
		
		assertFalse(DataSecurityUtils.hasOrgPermission("1,2", "1,2,3"));
		
		assertTrue(DataSecurityUtils.hasOrgPermission("1,2", "1"));
		
		
	}
}
