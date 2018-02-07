package junit.com.logic.system.ws;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ CodeRestTest.class, ConfigurationRestTest.class })
public class AllTests {

}
