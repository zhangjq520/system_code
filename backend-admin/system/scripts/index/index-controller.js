function IndexController() {
    this.init = init;

    var userId;
    var roleCode;
    var queryOption;
    var orgCode;

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "首页");
        userId = LOGIC.Storage.get('user_id');
        LOGIC.Storage.set("current_module_id", -1); //-1 means current page is home page
        LOGIC.ToshibaCommonTools.getUserInfo(userId);
    }

}
