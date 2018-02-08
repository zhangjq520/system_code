function CorporateService() {
    this.init = init;
    this.getCorp = getCorp;
    this.getCorporates = getCorporates;
    this.getCorporateById = getCorporateById;
    this.updateCorporate = updateCorporate;
    this.getOrgProfile = getOrgProfile;
    this.createOrgProfile = createOrgProfile;
    this.deleteOrgProfile = deleteOrgProfile;
    this.createCoroporate = createCoroporate;
    this.deleteCorporate = deleteCorporate;
    this.updateOrgProfile = updateOrgProfile;
    this.getCorporateChildren = getCorporateChildren;
    this.getChildCorporations = getChildCorporations;


    function init() {}

    function getCorp(args) {
        args = _.pick(args, "data", "success", "error");
        var id = args.data.id;
        args.url = "system/rest/corporates/" + id;
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);
    }

    function getCorporates(args) {
        args = _.pick(args, "data", "success", "error", "async");
        args.url = "system/rest/corporates/list/table";
        args.dataType = "json";
        args.contentType = "application/json"
        args.type = "POST";
        args.data = LOGIC.QueryTool.getQueryObjectConnectionOr(args.data.queryOption, 'id');

        LOGIC.Transport.ajax(args);

    }

    function getCorporateById(args) {
        args = _.pick(args, "data", "success", "error");
        var corporateId = args.data.id;
        args.url = "system/rest/corporates/" + corporateId;
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "GET";

        LOGIC.Transport.ajax(args);

    }

    function updateCorporate(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/corporates";
        args.dataType = "json";
        args.contentType = "application/json";
        args.type = "PUT";

        LOGIC.Transport.ajax(args);
    }

    function getOrgProfile(args) {
        args = _.pick(args, "data", "success", "error");
        var orgId = args.data.id;
        args.url = "system/rest/orgprofile/" + orgId;
        args.type = "GET";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);
    }

    function createOrgProfile(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/orgprofile";
        args.type = "POST";
        args.contentType = "application/json";
        args.dataType = "json";


        LOGIC.Transport.ajax(args);

    }

    function deleteOrgProfile(args) {
        args = _.pick(args, "data", "success", "error");
        var orgId = args.data.id;
        args.url = "system/rest/orgprofile?orgId=" + orgId;
        args.type = "DELETE";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);

    }

    function createCoroporate(args) {
        args = _.pick(args, "data", "success", "error");
        args.url = "system/rest/corporates";
        args.type = "POST";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);

    }

    function deleteCorporate(args){
        args = _.pick(args,"data","success","error");
        var id = args.data.id;
        args.url = "system/rest/corporates?corporateId="+id;
        args.type = "DELETE";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);

    }

    function updateOrgProfile(args){
        args = _.pick(args,"data","success","error");
        args.url = "system/rest/orgprofile";
        args.type = "PUT";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);

    }

    function getCorporateChildren(args){
        args = _.pick(args,"data","success","error");
        var id = args.data.id;
        args.url = "system/rest/corporates/"+id+"/children";
        args.type = "GET";
        args.contentType = "application/json";
        args.dataType = "json";

        LOGIC.Transport.ajax(args);

    }

    function getChildCorporations(args) {
        args = _.pick(args, "data", "success", "error", "async");
        var childCoporateIds = args.data.childCoporateIds;
        args.url = "system/rest/corporates/" + childCoporateIds + "/childCoporateIds";
        args.type = "GET";
        args.dataType = "json";
        args.contentType = "application/json";

        LOGIC.Transport.ajax(args);

    }
}
