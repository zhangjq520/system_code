package junit.com.logic.system.ws;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.core.MediaType;

import org.junit.Test;

import junit.com.logic.CommonConstants;

public class CodeRestTest {

    CommonConstants common = null;

    public CodeRestTest() throws Exception {
        super();
        common = new CommonConstants();
    }

    /**
     * createCode
     */
    @Test
    public void testCreateCode() {

        Map<String, Object> map = new HashMap<String, Object>();
        // 12345678
        map.put("code", "12345678");
        map.put("code_desc_en", "this is a test");
        map.put("code_desc_zh", "这是个测试");
        map.put("code_desc_tr", "测试");
        map.put("priority", "0");
        map.put("disabled", "false");
        map.put("parent_code", "");

        common.jerseyToPostByJson(common.BASE_URL + "codes", map, MediaType.APPLICATION_JSON);
        
        assert(true);

    }

    /**
     * getCode
     */
    @Test
    public void testGetCode() {
        common.jerseyToGetByPathParam(common.BASE_URL + "codes/_A1", MediaType.APPLICATION_JSON);
        assert(true);
    }

    /**
     * getChildCode
     */
    @Test
    public void testGetChildCode() {
        common.jerseyToGetByPathParam(common.BASE_URL + "codes/_A1/children", MediaType.APPLICATION_JSON);
        assert(true);
    }

    /**
     * updateCode
     */
    @Test
    public void testUpdateCode() {
        Map<String, Object> map = new HashMap<String, Object>();
        // 12345678
        map.put("code", "12345678");
        map.put("code_desc_en", "this is a test1");
        map.put("code_desc_zh", "这是个测试");
        map.put("code_desc_tr", "测试");
        map.put("priority", "0");
        map.put("disabled", "false");
        map.put("parent_code", "_A1");

        common.jerseyToPutByJson(common.BASE_URL + "codes", map, MediaType.APPLICATION_JSON);
        
        assert(true);
    }

    /**
     * deleteCode
     */
    @Test
    public void testDeleteCode() {
        String code = "12345678";
        common.jerseyToDeleteByPathParam(common.BASE_URL + "codes?code=" + code, MediaType.APPLICATION_JSON);
        
        assert(true);
    }

    /**
     * queryRootCodes
     */
//    @Test
    public void testQueryRootCodes() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("currentPage", "1");
        map.put("pageSize", "10");
        map.put("connection", "");// // AND / OR
        map.put("key", "");// column 数据库字段名称
        map.put("condition", "");// =, >, <, >=, <=, !=, like
        map.put("value", "");// search value
        map.put("isValueADigital", "");// the value whether is a digital
        map.put("columnName", "");// column
        map.put("orderType", "");// order by. e.g: asc/desc

        common.jerseyToPostByJsonPage(common.BASE_URL + "codes/list", map, MediaType.APPLICATION_JSON);
        
        assert(true);
    }

}