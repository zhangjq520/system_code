function UserService() {
    this.init = init;
    this.get = get;
    this.login = login;
    this.getInitData = getInitData;
    this.getUsers = getUsers;
    this.addNewUser = addNewUser;
    this.updateUser = updateUser;
    this.deleteUsers = deleteUsers;
    this.getUserById = getUserById;
    this.resetPwd = resetPwd;
    this.uploadAvatar = uploadAvatar;
    this.getUserByCorporateCode = getUserByCorporateCode;
    this.getUserByECode = getUserByECode;
    this.getAllCorporateCodes = getAllCorporateCodes;
    this.changePWD = changePWD;
    this.getChildCoporateIds = getChildCoporateIds;

    function init() {}

    function get(args) {

        args = _.pick(args, "success", "error");
        args.url = "/api/drivers";
        args.type = "GET";

        LOGIC.Transport.ajax(args);
    }

    function login(args) {
        //console.log(args)
        args = _.pick(args, "data", "success", "error");
        //console.log(args)
        
        //args.data = args.data;//_.pick(, "username, pasword");
        args.data = _.pick(args.data, "username", "password");
        args.data.grant_type = "password";
        args.data.scope = "read+write";
        args.data.client_secret = "mySecretOAuthSecret";
        args.data.client_id = "authserverapp";
        args.url = "system/oauth/token";
        args.type = "POST";

        LOGIC.Transport.ajax(args);
    }

    function getInitData(args) {
        args = _.pick(args, "success", "error");
        args.url = "system/rest/users/initData";
        args.type = "GET";

        LOGIC.Transport.ajax(args);
    }

    function getUsers(args) {
        //list', QueryService.assembleOptions(queryOption, 'login_id')
        args = _.pick(args, "data", "success", "error", "async");
        // TODO here needs some modifications and probably should get the info from controller

        args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, 'login_id');
        args.url = "system/rest/users/list";
        args.type = "POST";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function addNewUser(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/users";
        args.type = "POST";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function updateUser(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/users";
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function deleteUsers(args) {
        var usersToDelete = _.pick(args.data, "ids");
        args = _.pick(args, "success", "error");
        args.url = "system/rest/users/" + usersToDelete.ids;
        args.type = "DELETE";
        args.dataType = "json";
        args.contentType = "application/json";
        LOGIC.Transport.ajax(args);
    }

    function getUserById(args) {
        args = _.pick(args, "data", "success", "error");
        var userId = args.data.id;
        args.url = "system/rest/users/" + userId;
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "GET";
        args.async = false;
        //console.log(args.data)
        LOGIC.Transport.ajax(args);

    }

    function getUserByCorporateCode(args) {
        args = _.pick(args, "data", "success", "error");
        var deptIds = args.data.deptIds;
        args.url = "toshiba/rest/employee/list/" + deptIds;
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }

    function getUserByECode(args) {
        args = _.pick(args, "data", "success", "error");
        var ECode = args.data.ECode;
        args.url = "toshiba/rest/employee/" + ECode;
        args.type = "GET";
        args.contentType = "application/json";
        args.dataType = "json";
        LOGIC.Transport.ajax(args);

    }

    function uploadAvatar(args) {
        args = _.pick(args, "data", "success", "error", "headers");
        args.url = "/system/rest/users/avatar";
        // args.dataType = "form-data";
        args.type = "POST";
        //console.log(args);

        LOGIC.Transport.ajax(args);
    }

    function getAllCorporateCodes(args) {
        args = _.pick(args, "data", "success", "error");
        var corporateIds = args.data.corporateIds;
        args.url = "system/rest/corporates/" + corporateIds + "/codes";
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function changePWD(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/users/changePassword";
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }

    function getChildCoporateIds(args) {
        args = _.pick(args, "data", "success", "error", "async");
        var childCoporateIds = args.data.childCoporateIds;
        args.url = "system/rest/corporates/" + childCoporateIds + "/childCoporateIds";
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }
    
    function resetPwd(args) {

        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/users/resetPassword";
        args.type = "PUT";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

}
