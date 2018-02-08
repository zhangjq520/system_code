function RoleService() {

    this.init = init;
    this.get = get;
    this.getRoles = getRoles;
    this.updateRoles = updateRoles;
    this.addRoles = addRoles;
    this.deleteRoles = deleteRoles;
    this.getRolePermission = getRolePermission;
    this.saveRolePermission = saveRolePermission;

    function init() {}

    function get(args) {
        args = _.pick(args, "success", "data");
        args.url = "system/rest/roles";
        args.type = "GET";

        LOGIC.Transport.ajax(args);
    }

    function getRoles(args) {
        args = _.pick(args, "data", "success", "error", "async");
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'levels');
        args.url = "system/rest/roles/list";
        args.type = "POST";
        args.dataType = "json";
        args.contentType = "application/json";
        //console.log(args);

        LOGIC.Transport.ajax(args);
    }

    function updateRoles(args) {
        args = _.pick(args, "data", "success", "error");
        args.type = "PUT";
        args.url = "system/rest/roles";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function addRoles(args) {
        args = _.pick(args, "data", "success", "error");
        args.type = "POST";
        args.url = "system/rest/roles";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function deleteRoles(args) {
        var roleToDeleteIds = _.pick(args.data, "ids");
        args = _.pick(args, "success", "error");
        args.url = "system/rest/roles/" + roleToDeleteIds.ids;
        args.type = "DELETE";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function getRolePermission(args) {
        args = _.pick(args, "data", "success", "error");
        // args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'roleId');
        args.url = "system/rest/permissions/user/" + args.data.userId + "/role/" + args.data.roleId;
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function saveRolePermission(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/permissions"
        args.type = "POST";
        args.dataType = "json";
        args.contentType = "application/json";
        //console.log(args);

        LOGIC.Transport.ajax(args);
    }

};