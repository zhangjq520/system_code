package com.logic.system;

import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * Author: omer 
 * Date  : 10-03-2016
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = SystemServerApplication.class)
@WebAppConfiguration
public class AbstractTest {
    protected static final Logger log = LoggerFactory.getLogger(AbstractTest.class);

}
