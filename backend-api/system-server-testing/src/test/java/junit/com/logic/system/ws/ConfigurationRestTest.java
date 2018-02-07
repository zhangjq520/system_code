package junit.com.logic.system.ws;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.core.MediaType;

import org.junit.Test;

import com.sun.jersey.test.framework.JerseyTest;

import junit.com.logic.CommonConstants;

public class ConfigurationRestTest extends JerseyTest {

    CommonConstants common = null;

    public ConfigurationRestTest() throws Exception {
        super();
        common = new CommonConstants();
    }

    /**
     * createRole
     */

    public void testCreateRole() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("key_name", "123456");
        map.put("value", "123");
        map.put("description", "456");

        common.jerseyToPostByJson(common.BASE_URL + "configurations", map, MediaType.APPLICATION_JSON);
    }

    /**
     * getConfiguration
     */
    public void testGetConfiguration() {
        common.jerseyToGetByPathParam(common.BASE_URL + "configurations/123456", MediaType.APPLICATION_JSON);
    }

    /**
     * updateConfiguration
     */
    public void testUpdateConfiguration() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("key_name", "123456");
        map.put("value", "1231");
        map.put("description", "456");

        common.jerseyToPutByJson(common.BASE_URL + "configurations", map, MediaType.APPLICATION_JSON);
    }

    /**
     * deleteConfiguration
     */
    public void testDeleteConfiguration() {
        common.jerseyToDeleteByPathParam(common.BASE_URL + "configurations/123456", MediaType.APPLICATION_JSON);
    }

    /**
     * queryConfigurations
     */
    @Test
    public void testQueryConfigurations() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("currentPage", "1");
        map.put("pageSize", "10");
        map.put("connection", "and");// // AND / OR
        map.put("key", "key_name");// column 数据库字段名称
        map.put("condition", "=");// =, >, <, >=, <=, !=, like
        map.put("value", "");// search value
        map.put("isValueADigital", "");// the value whether is a digital
        map.put("columnName", "key_name");// column
        map.put("orderType", "");// order by. e.g: asc/desc

        common.jerseyToPostByJsonPage(common.BASE_URL + "configurations/list", map, MediaType.APPLICATION_JSON);
    }
}