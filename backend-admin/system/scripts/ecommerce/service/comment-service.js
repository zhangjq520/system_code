function CommentService() {
    this.init = init;
    this.getCommentList = getCommentList ;
    this.deleteComment = deleteComment ;

    function init() {}

    function getCommentList(args) {
    	args.data = LOGIC.QueryTool.getQueryObjectConditionIn(args.data.queryOption, null);
    	
        args.url = "system/rest/productComment/list" ;
        args.type = "POST";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }
    
    function updateComment(args) {
        args.url = "system/rest/productComment" ;
        args.type = "PUT";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }
    
    function deleteComment(args) {
        args.url = "system/rest/productComment?ids=" + args.data.ids ;
        args.type = "Delete";
        args.dataType="JSON";
        args.contentType="application/json";
        LOGIC.Transport.ajax(args);
    }

}
