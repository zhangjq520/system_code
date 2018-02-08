function CommentListController() {
    this.init = init ;
    this.oTable = null;

    function init(){
        if(window.location.search != "") {
            // get current module id
            var moduleId = extractQueryString(window.location.search, "moduleId");
            LOGIC.Storage.set("current_module_id", moduleId);

            createTable();
            initSPU();
        }
        
        $("#commentList_btn_search").click(function() {
			LOGIC.Controllers.CommentListController.oTable.DataTable().ajax.reload();
		});

		$("#commentList_btn_reset").click(function() {
			$("#txtID").val("");
			$("#txtSpuName").val("");
			$("#txtSkuName").html("");
			$("#txtComment").val("");
			$("#txtImages").val("");
			$("#txtCommentLevel").val("");
			$("#txtCustomer").val("");
			$("#comment_date_from").val("");
			$("#comment_date_to").val("");
		});
    }

    function initSPU() {
    	ProductService.prototype.getProductList({
    		data : {
    			"pagingTool": {
            	    "currentPage": 0,
            	    "pageSize": -1
            	 },
             	"queryCriterias": [
	          	    {
	          	    	"connection": "and",
	          	        "key": "product_type",
	          	        "condition": "=",
	          	        "value": "_ES32" ,
	          	        "isValueADigital": false
	          	    }
	          	]
    		}, success: function (data) {
    			var html = '<option value="">请选择配置产品</option>' ;
    			
    			for(var i=0; i<data.length; i++){
    				html += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
    			}
    			
    			$("#txtSpuName").html(html);
            }, error: function (xhr) {
            	console.log("get distributionLog list failed") ;
            }
    	});
    	
    	$("#txtSpuName").live("change" , function(){
    		var productId = $(this).val();
    		if(productId==null || productId==""){
    			$("#txtSkuName").html("");
    			return;
    		}
    		
    		ProductService.prototype.getProductById({
        		data : {
        			productId: productId ,
        			showRelationProduct: true
        		}, success: function (data) {
        			var html = '<option value="">请选择简单产品</option>' ;
        			
        			for(var i=0; i<data.relationProductList.length; i++){
        				var product = data.relationProductList[i] ;
        				html += '<option value="' + product.id + '">' + product.elementList[0].name + '</option>';
        			}
        			
        			$("#txtSkuName").html(html);
                }, error: function (xhr) {
                	console.log("get distributionLog list failed") ;
                }
        	});
    	});
    } 
    
    function createTable() {
    	LOGIC.Controllers.CommentListController.oTable = $('#datatable_comments');
    	
    	var columns = [
		                {
		                    data: 'order_master_id', searchable: false, orderable: true ,
		                    render: function (data, type, full, meta) {
		                    	return full.orderMasterId ;
		                    }
		                },
		                {
		                    data: 'product_name', searchable: false, orderable: true ,
		                    render: function (data, type, full, meta) {
		                    	return full.productName ;
		                    }
		                },
		                {
		                    data: 'comment', searchable: false, orderable: true
		                },
		                {
		                    data: 'comment_images', searchable: false, orderable: true ,
		                    render: function (data, type, full, meta) {
		                    	if(full.commentImagesValue==null || full.commentImagesValue==""){
		                    		return "无" ;
		                    	}
		                    	
		                    	var html = "" ;
		                    	var arr = full.commentImagesValue.split(",");
		                    	
		                    	html += '<div class="m-imgshow f-imgshow">' ;
		                    	for(var i=0; i<arr.length; i++){
		                    		html += '<img src="'+ arr[i] +'" style="width:50px; height:50px;" />' ;
		                    	}
		                    	html += "</div>" ;
		                    	
		                    	return html ;
		                    }
		                },
		                {
		                	data: 'comment_level', searchable: false, orderable: true ,
		                    render: function (data, type, full, meta) {
		                    	var level = parseInt(full.commentLevel) * 20 ;
		                    	return '<div class="rating-box"><div class="rating" style="width: '+ level +'%;"></div></div>' ;
		                    }
		                },
		                {
		                	data: 'uname', searchable: false, orderable: true
		                },
		                {
		                	data: 'comment_date', searchable: false, orderable: true , 
		                	render: function (data, type, full, meta) {
		                        var commentDate = full.commentDate ;
		                        if(commentDate==null){
		                            return "" ;
		                        }
		                        return formatDate(new Date(commentDate)) ;
		                    }
		                },
		                {
		                    data: '',
		                    render: function (data, type, full, meta) {
		                        /*var editHtml = '<li><a onclick="" data-toggle="modal" data-target="#myModal" >' +
		                        '<i class="fa fa-search"></i> 编辑</a></li>';
		                        var deleteHtml ;
	
	                            deleteHtml = '<li><a onclick="LOGIC.Controllers.CommentListController.deleteComment(' +
	                                '\'' + parseInt(full.id) + '\'' +
	                                ')"><i class="fa fa-trash-o"></i> 删除</a></li>';

	                            var html = '<div class="config-btn btn-group">' +
	                            '<a class="btn btn-xs btn-circle btn-custom-1" href="javascript:;" data-toggle="dropdown" data-close-others="true">' +
	                            '<i class="fa fa-cog"></i> <i class="fa fa-angle-down"></i>' +
	                            '</a>' +
	                            '<ul class="dropdown-menu pull-right">' +
	                            editHtml +
	                            deleteHtml +
	                            '</ul>' +
	                            '</div>';
	
		                        return html;*/
		                        
		                        return '<a class="btn btn-xs btn-circle red" onclick="LOGIC.Controllers.CommentListController.deleteComment(' + parseInt(full.id) +')"><i class="fa fa-trash-o"></i> 删除</a>' ;
		                    },
		                    searchable: false, orderable: false
		                }
    	            ] ;
    	
    	LOGIC.Controllers.CommentListController.oTable.DataTable({
            autoWidth: false,
            searching: false,
            serverSide: true,
            pageLength: 10,
            lengthMenu: [10, 20, 50, 100],

            ajax: function(request, drawCallback, setting) {
    			var success = request.success || function() { };
    			var error = request.error || function() { };

    			request.success = function(data, textStatus, xhr) {
    				var responseData = {
    					draw: request.draw,
    					recordsTotal: xhr.getResponseHeader("total_count"),
    					recordsFiltered: xhr.getResponseHeader("total_count"),
    					data : data
    				}

    				drawCallback(responseData);
    			};

    			request.error = function(data) {
    				error(data);
    			};

    			var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
    			queryOption.pagination.perPage = request.length;
    			queryOption.pagination.current = request.start / request.length + 1;
    			queryOption.orderBy.type = request.order[0].dir;
    			queryOption.orderBy.name = columns[request.order[0].column].data;
    			queryOption.flag = true;
    			queryOption.queryCriterias = CommentListController.prototype.query_Criterias() ;

    			request.data = {
    				queryOption: queryOption
    			};

    			return LOGIC.Services.CommentService.getCommentList(request);
    		},
            columns: columns,

            oLanguage: {
                "sInfoEmpty": "",
                "sZeroRecords": "没有符合条件的记录",
                sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            }
        });
    }
}

CommentListController.prototype.query_Criterias = function (){
	var queryCriterias=new Array();
	
	//编号
	var txtID=$("#txtID").val();
	if(txtID!=null && txtID!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="id";
		queryCriteria.condition="=";
		queryCriteria.value=txtID;
		queryCriteria.isValueADigital=true;
		
		queryCriterias.push(queryCriteria);
	}
	
	//配置产品名称
	var txtSpuName=$("#txtSpuName").val();
	if(txtSpuName!=null&&txtSpuName!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="parent_product_id";
		queryCriteria.condition="=";
		queryCriteria.value=txtSpuName;
		queryCriteria.isValueADigital=true;
		
		queryCriterias.push(queryCriteria);
	}
	
	//简单产品名称
	var txtSkuName=$("#txtSkuName").val();
	if(txtSkuName!=null&&txtSkuName!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="product_id";
		queryCriteria.condition="=";
		queryCriteria.value=txtSkuName;
		queryCriteria.isValueADigital=true;
		
		queryCriterias.push(queryCriteria);
	}
	
	//评论
	var txtComment=$("#txtComment").val();
	if(txtComment!=null&&txtComment!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="comment";
		queryCriteria.condition="like";
		queryCriteria.value=txtComment;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//评论等级
	var txtCommentLevel=$("#txtCommentLevel").val();
	if(txtCommentLevel!=null&&txtCommentLevel!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="comment_level";
		queryCriteria.condition="like";
		queryCriteria.value=txtCommentLevel;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//评论人
	var txtCustomer=$("#txtCustomer").val();
	if(txtCustomer!=null&&txtCustomer!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="uname";
		queryCriteria.condition="like";
		queryCriteria.value=txtCustomer;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//评论时间from
	var comment_date_from=$("#comment_date_from").val();
	if(comment_date_from!=null&&comment_date_from!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="TO_DAYS(comment_date)-TO_DAYS(DATE_FORMAT('"+comment_date_from+"','%Y/%m/%d'))";
		queryCriteria.condition=">=";
		queryCriteria.value=0;
		queryCriteria.isValueADigital=true;
		
		queryCriterias.push(queryCriteria);
	}
	//评论时间to
	var comment_date_to=$("#comment_date_to").val();
	if(comment_date_to!=null&&comment_date_to!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="TO_DAYS(comment_date)-TO_DAYS(DATE_FORMAT('"+comment_date_to+"','%Y/%m/%d'))";
		queryCriteria.condition="<=";
		queryCriteria.value=0;
		queryCriteria.isValueADigital=true;
		
		queryCriterias.push(queryCriteria);
	}
	
	return queryCriterias;
}

CommentListController.prototype.deleteComment = function (commentId){
	if(!confirm("是否确认删除？")){
		return ;
	}
	
	if(commentId==null || commentId==""){
		return ;
	}
	
	LOGIC.Services.CommentService.deleteComment({
		data : {
			"ids": commentId
		}, success: function (data) {
			LOGIC.Controllers.CommentListController.oTable.DataTable().ajax.reload();
        }, error: function (xhr) {
        	console.log("delelte comment failed") ;
        }
	});
}

var formatDate = function (date) {
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    m = m < 10 ? '0' + m : m;
    var d = date.getDate();
    d = d < 10 ? ('0' + d) : d;
    return y + '-' + m + '-' + d;
};

Date.prototype.format = function(fmt) {
    var o = {
        "M+" : this.getMonth()+1,                 //月份
        "d+" : this.getDate(),                    //日
        "h+" : this.getHours(),                   //小时
        "m+" : this.getMinutes(),                 //分
        "s+" : this.getSeconds(),                 //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S"  : this.getMilliseconds()             //毫秒
    };
    if(/(y+)/.test(fmt)) {
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    }
    for(var k in o) {
        if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
    return fmt;
}