package junit.com.logic;

public enum JunitTestRestEnum {

    USER_NAME("user_name"), PASSWORD("password"), 
    GRANT_TYPE("grant_type"), SCOPE("scope"), CLIENT_SECRET("client_secret"), CLIENT_ID("client_id"), 
    BASE_URL("base_url"), TOKEN_URL("token_url");

    private String code;

    private JunitTestRestEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}
