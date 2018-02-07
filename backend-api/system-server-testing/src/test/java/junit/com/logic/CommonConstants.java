package junit.com.logic;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Properties;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.test.framework.JerseyTest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class CommonConstants extends JerseyTest {

    // 声明一个全局的客户端和token
    Client c = null;
    String token_type = "";
    String access_token = "";
    String authorization = "";
    public String BASE_URL = "";
    public String TOKEN_URL = "";

    public CommonConstants() throws Exception {
        super();
        c = Client.create();
        getPermission();
    }

    public final static String TEST_PERMISSION_PATH = "/junit_config.properties";

    /**
     * jersey 传递参数，json格式 post方法
     * 
     * @param resource
     *            (实例)
     * @param map
     *            （传递参数map转换成json）
     * @param returnType
     *            （返回数据类型）
     * @sample
     * 
     */
    private void login(String url) throws Exception {

        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        // add reuqest header
        con.setRequestMethod("POST");
        con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");

        // Send post request
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.flush();
        wr.close();

        int responseCode = con.getResponseCode();

        if (responseCode == 200) {
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();

            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            // print result
            JSONObject tokenJson = JSONObject.fromObject(response.toString());
            access_token = tokenJson.getString("access_token");
            token_type = tokenJson.getString("token_type");
            authorization = token_type + " " + access_token;

            System.out.println(authorization);
        } else {
            System.out.println("Failed get authorization!!! PLEASE CHECK YOUR CONFIGURATION.");
        }
        
    }

    /**
     * jersey 传递参数，json格式 post方法
     * 
     * @param resource
     *            (实例)
     * @param map
     *            （传递参数map转换成json）
     * @param returnType
     *            （返回数据类型）
     */
    public void jerseyToPostByJson(String url, Map<String, Object> map, String returnType) {
        WebResource resource = c.resource(url);
        JSONObject json = JSONObject.fromObject(map);

        String response = resource.type(returnType).header("Authorization", authorization).post(String.class,
                json.toString());
        System.out.println(response);

    }

    /**
     * jersey 传递参数，连接地址后直接加参数get方法
     * 
     * @param url
     * @param map
     * @param returnType
     */
    public void jerseyToGetByPathParam(String url, String returnType) {
        WebResource resource = c.resource(url);
        String response = resource.accept(returnType).header("Authorization", authorization).get(String.class);
        System.out.println(response);
    }

    /**
     * jersey 传递参数，连接地址后直接加参数post方法
     * 
     * @param url
     * @param map
     * @param returnType
     */
    public void jerseyToPostByPathParam(String url, String returnType) {
        WebResource resource = c.resource(url);
        String response = resource.accept(returnType).header("Authorization", authorization).post(String.class);
        System.out.println(response);
    }

    /**
     * jersey 传递参数，json格式 put方法
     * 
     * @param resource
     *            (实例)
     * @param map
     *            （传递参数map转换成json）
     * @param returnType
     *            （返回数据类型）
     */
    public void jerseyToPutByJson(String url, Map<String, Object> map, String returnType) {
        WebResource resource = c.resource(url);
        JSONObject json = JSONObject.fromObject(map);

        String response = resource.type(returnType).header("Authorization", authorization).put(String.class, json.toString());
        System.out.println(response);

    }

    /**
     * jersey 传递参数，连接地址后直接加参数delete方法
     * 
     * @param url
     * @param map
     * @param returnType
     */
    public void jerseyToDeleteByPathParam(String url, String returnType) {
        WebResource resource = c.resource(url);
        String response = resource.accept(returnType).header("Authorization", authorization).delete(String.class);
        System.out.println(response);
    }

    /**
     * 查询列表 jersey 传递参数，json格式 post方法
     * 
     * @param resource
     *            (实例)
     * @param map
     *            （传递参数map转换成json）
     * @param returnType
     *            （返回数据类型）
     */
    public void jerseyToPostByJsonPage(String url, Map<String, Object> map, String returnType) {
        WebResource resource = c.resource(url);
        // JSONObject json = JSONObject.fromObject(map);

        // 最外层jsonObj
        JSONObject jsObj = new JSONObject();

        // 第一个子 jsonObj
        JSONObject pagingTool = new JSONObject();
        pagingTool.put("currentPage", map.get("currentPage"));
        pagingTool.put("pageSize", map.get("pageSize"));

        // 第二个子jsonObj
        JSONArray queryCriterias = new JSONArray();
        JSONObject jsObj_two_child = new JSONObject();
        jsObj_two_child.put("connection", map.get("connection"));
        jsObj_two_child.put("key", map.get("key"));
        jsObj_two_child.put("condition", map.get("condition"));
        jsObj_two_child.put("value", map.get("value"));
        jsObj_two_child.put("isValueADigital", false);
        queryCriterias.add(jsObj_two_child);

        // 第三个jsonObj
        JSONArray queryOrderBies = new JSONArray();
        JSONObject jsObj_three_child = new JSONObject();
        jsObj_three_child.put("columnName", map.get("columnName"));
        jsObj_three_child.put("orderType", map.get("orderType"));
        queryOrderBies.add(jsObj_three_child);

        jsObj.put("pagingTool", pagingTool);
        jsObj.put("queryCriterias", queryCriterias);
        jsObj.put("queryOrderBies", queryOrderBies);

        System.out.println(jsObj);

        String response = resource.type(returnType).header("Authorization", authorization).post(String.class, jsObj.toString());
        System.out.println(response);

    }

    /**
     * jersey 传递参数，json格式 post方法
     * 
     * @param resource
     *            (实例)
     * @param map
     *            （直接传送json）
     * @param returnType
     *            （返回数据类型）
     */
    public void jerseyToPostByJson(String url, String str, String returnType) {
        WebResource resource = c.resource(url);
        String response = resource.type(returnType).header("Authorization", authorization).post(String.class, str);
        System.out.println(response);

    }

    /**
     * jersey 传递参数，json格式 put方法
     * 
     * @param resource
     *            (实例)
     * @param map
     *            （传递参数string）
     * @param returnType
     *            （返回数据类型）
     */
    public void jerseyToPutByJson(String url, String str, String returnType) {
        WebResource resource = c.resource(url);
        String response = resource.type(returnType).header("Authorization", authorization).put(String.class, str);
        System.out.println(response);

    }

    /**
     * 获取用户授权
     */
    public void getPermission() {

        try {
            getParameters();
            login(TOKEN_URL);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 读取配置文件获取用户名和密码
     * 
     * @return
     */
    public void getParameters() {
        try {
            InputStream in = getClass().getResourceAsStream(TEST_PERMISSION_PATH);
            Properties prop = new Properties();
            prop.load(in);

            BASE_URL = prop.getProperty(JunitTestRestEnum.BASE_URL.getCode());
            TOKEN_URL = prop.getProperty(JunitTestRestEnum.TOKEN_URL.getCode());

            in.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}