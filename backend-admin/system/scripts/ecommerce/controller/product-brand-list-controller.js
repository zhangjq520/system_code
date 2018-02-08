function ProductBrandListController() {
	this.init = init;
	this.moduleId = null;
	this.oTable = null;
	
	function init() {
		var userId = LOGIC.Storage.get("user_id");

		if(window.location.search != "") {
			// get current module id
			var moduleId = extractQueryString(window.location.search, "moduleId");
			LOGIC.Storage.set("current_module_id", moduleId);
			LOGIC.Controllers.ProductBrandListController.moduleId = moduleId;
			// get permission by current user and module
			LOGIC.ToshibaCommonTools.getUserInfo(userId);
			var org_ids = LOGIC.Storage.get('org_ids');
			generateOrgTree(org_ids);
			getStoreIdsByUserId(userId);
			getCategoryList();
			getModulePermission(userId, moduleId);
//			ProductBrandListController.prototype.generateTree();
		}

		/*$('#txtSearch').keypress(function(e) {
		 if(e.which == 13) {
		 LOGIC.Controllers.ProductBrandListController.oTable.DataTable().ajax.reload();
		 }
		 });*/

		$("#btnSearch").click(function() {
			LOGIC.Controllers.ProductBrandListController.oTable.DataTable().ajax.reload();
		});

		$("#list_btn_reset").click(function() {
			$("#txtName").val("");
			$("#product_order_from").val("");
			$("#product_order_to").val("");
		});
		
		$(".displayAttr").live("mouseover", function(){
			ProductBrandListController.prototype.displayAttr(this);
		});

	}
	
	function getStoreIdsByUserId(userId) {
		var data = {
				userId: userId
			};
		LOGIC.Services.StoreService.selectIdByUserId({
			async: false,
			data: data,
			success: function(data, textStatus, xhr) {
				if(data.storeId!=null){
					store_id = data.storeId;
				}else{
					store_id = data.childStoreIds;
				}
				curr_org_code = data.orgName;
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});

	}

	function getModulePermission(userId, moduleId) {
		var data = {
			userId: userId,
			moduleId: moduleId
		}
		LOGIC.Services.PermissionService.getModulePermission({
			data: data,
			success: function(data, textStatus, xhr) {
				if (data.p0 == '1') {
					var actionHtml =
						'<div class="btn-group row">' +
						/*
						'	<div class="md-checkbox col-md-5" style="margin:3 -20 0 0px;width:135px;">' +
						'		<input type="checkbox" id="checkbox" class="md-check">' +
						'		<label for="checkbox" class="control-label col-md-10" style="width:105px;">' +
						'			<span class="inc"></span>' +
						'			<span class="check"></span>' +
						'			<span class="box"></span>显示首页' +
						'		</label>' +
						'	</div>' +
						*/
						'	<a href="javascript:LOGIC.Controllers.ProductBrandListController.displayAll();" class="btn blue btn-circle" style="margin-right:20px;">' +
						'		<span>显示所有产品 </span>' +
						'	</a>' +
						'	<a id="btn_config_add" class="btn blue btn-circle" href="product_configuration.html?action=add_config&moduleId=' + moduleId + '">' +
						'		<i class="fa fa-share"></i> ' +
						'		<span>添加产品 </span>' +
						'	</a>' +
							
						'</div>' ;

					$('#product-actions').html(actionHtml)
				}

				// create data table
				LOGIC.Controllers.ProductBrandListController.createTable(data);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});

	}
	
	function getCategoryList() {
		var queryUtil = {
				"pagingTool": {
					"currentPage": 0,
					"pageSize": -1
				},
				"queryOrderBies": [
				    {
						"columnName": "position",
						"orderType": "asc"
				    }
				]
		};
		LOGIC.Services.CategoryService.getCategoryList({
			async: false,
			data: queryUtil,
			success: function(data, textStatus, xhr) {
				var selDom = $("#txtCategoryName");
				for (var i=0;i<data.length;i++){
					if(i==0){
						txtCategoryNameFirst = data[i].name;
						txtCategoryIdsFirst = data[i].childIdStr
						selDom.append("<option selected = 'selected' value="+data[i].childIdStr+">"+data[i].name+"</option>");
					}else {
						selDom.append("<option value="+data[i].childIdStr+">"+data[i].name+"</option>");
					}

				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});

	}
	
	function _canSeeAllOrgs() {
        var result = false;
        var roles = LOGIC.Storage.get("userRoleDTOs");

        if(roles && roles.length>0){
            for(var i =0; i< roles.length; i++){
                if(roles[i] && (roles[i].code =="ROOT" || roles[i].code=="OPMG")){
                    result = true;
                    break;
                }
            }
        }

        return result;
    }
	
	function generateOrgTree(org_ids) {

        corporateTree = $("#corporate_tree").jstree({
            'core': {
                'themes': {
                    "responsive": false,
                    "icons" : true
                },
                // so that create works
                'check_callback': true,
                'data': {
                    'url': function(node) {
                        if(_canSeeAllOrgs() == true){
                            if (node.id == '#') {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/'+org_ids+'/organizationForJSTree';
                            } else {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/' + node.id + '/childrenForJSTree';
                            } 

                        } else{
                            if (node.id == '#') {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/' + org_ids + '/organizationForJSTree';
                            } else {
                                return LOGIC.Configuration.serverUrl + 'system/rest/corporates/' + node.id + '/childrenForJSTree';
                            }    
                        }                        
                    },
                    'headers': {
                        "Authorization": $.cookie("access_token")
                    }
                }
            },
            'types': {
                'default': {
                    'icon': "fa fa-folder icon-state-warning icon-lg"
                },
                'file': {
                    'icon': "fa fa-file icon-state-warning icon-lg"
                }
            },
            'state': {
                'key': "corporateTree"
            },
            'plugins': [
                "search",
                // "state",//保存点击状态，是页面刷新后，jstree任然有点击状态
                "types",
                "unique",
                "contextmenu"
            ],
            'search': {
                "show_only_matches": false
            },
            'contextmenu': {
                'select_node': !0,
                'show_at_node': !0,
                items: function() {}
            }
        });
        corporateTree.bind("delete_node.jstree", function(e, data) {
            var code = data.node.id;
        });

        corporateTree.bind("create_node.jstree", function(e, data) {
            var add_corporate = $('#add_corporate');
            parentId = data.node.parent;
            createTreeId = data.node.id;
            var parentName =data.node.original.parentName;
            $("#parentName").val(parentName);
            $("#add_corporate .inputEmpty").val("");
            $("#add_corporate option").eq(0).attr("selected",true);


            addFormValidate('_A8A');
            add_corporate.modal('show');
        });

        corporateTree.on('click', 'a', function(event) {
            var id = $(this).parent("li").attr("id");
            var data = {
    				orgId: id
    			};
            LOGIC.Services.StoreService.selectIdByParentOrgId({
    			async: false,
    			data: data,
    			success: function(data, textStatus, xhr) {
    				if(data.STATUS != -1 && data != null){
						if(data.storeId!=null){
							store_id = data.storeId;
						}else{
							store_id = data.childStoreIds;
						}
						org_code = data.orgName;
						LOGIC.Controllers.ProductBrandListController.oTable.DataTable().draw(false);
					}
    			},
    			error: function(jqXHR) {
    				LOGIC.ToastrPrompt.toastrError('error');
    			}
    		});
            
            event.stopPropagation();
        });

    }
}

var store_id = '';
var org_code = '';
curr_org_code = '';
var txtCategoryNameFirst = "";
var txtCategoryIdsFirst = "";

ProductBrandListController.prototype.createTable = function(permission) {
	this.oTable = $('#datatable_products');

	var columns = [
	     {
	    	 data: "number", searchable: false, orderable: false, render: function(data, type, full, meta) {
	    		 var number = full.number;
		
	    		 if(number==null) {
	    			 return "无";
	    		 }

	    		 return number;
	    	 }
	     },
	    {
	    	data: "orderNumber", searchable: false, orderable: true, render: function(data, type, full, meta) {
	    		var orderNumber = full.orderNumber;
	    		
				if(orderNumber==null) {
					return "无";
				}
	
				return orderNumber;
	    	}
	    },
		{
			data: "brandName", searchable: false, orderable: false, render: function(data, type, full, meta) {
				var brandName = full.brandName ;
				if(brandName==null){
					brandName = "" ;
				}
				return brandName;
			}
		},
		{
			data: "categoryName", searchable: false, orderable: false, render: function(data, type, full, meta) {
				var categoryName = full.categoryName ;
				if(categoryName==null){
					categoryName = "" ;
				}
				return categoryName;
			}
		},
		{
			data: "", searchable: false, orderable: false, render: function(data1, type, full, meta) {
				var topMoveHtml = '<li id="order_id'+full.orderId+'"><a onclick="LOGIC.Controllers.ProductBrandListController.topMove(' +
				'\'' + full.orderId + '\''+
				')"><i class="fa fa-arrow-circle-up"></i>&nbsp;置顶</a></li>';
				var upMoveHtml = '<li id="order_id'+full.orderId+'"><a onclick="LOGIC.Controllers.ProductBrandListController.upMove(' +
				'\'' + full.orderId + '\', ' +
				'\'' + full.beforeNumber + '\'' +
				')"><i class="fa fa-arrow-circle-up"></i>&nbsp;上移</a></li>';
				var downMoveHtml = '<li id="order_id'+full.orderId+'"><a onclick="LOGIC.Controllers.ProductBrandListController.downMove(' +
				'\'' + full.orderId + '\', ' +
				'\'' + full.afterNumber + '\'' +
				')"><i class="fa fa-arrow-circle-down"></i>&nbsp;下移</a></li>';
				if(full.isFirstElement){
					topMoveHtml = '';
					upMoveHtml = '';
				}
				if(full.isLastElement){
					downMoveHtml = '';
				}
				if(curr_org_code == '其他' && org_code != '其他'){
					topMoveHtml = "";
					upMoveHtml = "";
					downMoveHtml = "";
				}
				var html = '<div class="config-btn btn-group">' +
					'<a class="btn btn-xs btn-circle btn-custom-1" href="javascript:;" data-toggle="dropdown" data-close-others="true" aria-expanded="true">' +
					'<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>' +
					'</a>' +
					'<ul class="dropdown-menu pull-right">' +
					topMoveHtml +
					upMoveHtml +
					downMoveHtml +
					'</ul>' +
					'</div>';
				return html;
			}
		}
	];

	this.oTable.DataTable({
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
			var queryUtil = {
					"pagingTool": {
						"currentPage": request.start / request.length + 1,
						"pageSize": request.length
					},
					"queryOrderBies": [
					    {
							"columnName": "order_number",
							"orderType": "asc"
					    }
					]
			};
			queryUtil.queryCriterias = ProductBrandListController.prototype.query_Criterias() ;
			
			var map = {};
			//类型名称
			var categoryIds=$("#txtCategoryName").val();
			var categoryName = $("#txtCategoryName").find("option:selected").text();
			if(categoryIds!=null&&categoryIds!=""){
				var arr = categoryIds.split(",");
			    var array=new Array();
			    for(var i=0; i < arr.length; i++){
			    	array.push(arr[i]);
			    }
				map["categoryIds"] = array;
				map["categoryName"] = categoryName;
			}
			
			if(store_id!=null&&store_id!=""){
				map["storeId"] = store_id;
			}
			
			queryUtil.params = map;

			request.data = queryUtil;

			return LOGIC.Services.ProductService.getBrandList(request);
		},
		columns: columns,
		/*createdRow: function(row, data, dataIndex) {
			$(row).children('td').eq(3).attr('style', 'text-align: right;');
			$(row).children('td').eq(4).attr('style', 'text-align: right;');
			$(row).children('td').eq(5).attr('style', 'text-align: right;');
		},*/
		oLanguage: {
			"sInfoEmpty": "",
			"sZeroRecords": "没有符合条件的记录",
			sSearch: '<span id="sSearch">搜索:</span>',
			sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
			sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
		}
	});
}

ProductBrandListController.prototype.query_Criterias = function(){
	var queryCriterias=new Array();
	
	//序号from
	var product_order_from=$("#product_order_from").val();
	if(product_order_from!=null&&product_order_from!=""){
		if(isNaN(product_order_from)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="order_number";
			queryCriteria.condition=">=";
			queryCriteria.value=product_order_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//序号to
	var product_order_to=$("#product_order_to").val();
	if(product_order_to!=null&&product_order_to!=""){
		if(isNaN(product_order_to)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="order_number";
			queryCriteria.condition="<=";
			queryCriteria.value=product_order_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//名称
	var brandName=$("#txtName").val();
	if(brandName!=null&&brandName!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="brand_name";
		queryCriteria.condition="like";
		queryCriteria.value=brandName;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	return queryCriterias;
}

ProductBrandListController.prototype.displayAll = function(){
	sessionStorage.removeItem("productParentId");
	LOGIC.Controllers.ProductBrandListController.oTable.DataTable().ajax.reload();
}

ProductBrandListController.prototype.displayAttr = function(element){
	var productId = $(element).attr("data-id");
	
	LOGIC.Services.ProductService.getProductById({
		data: {
			productId: productId,
			showRelationProduct: false
		},
		success: function(data, textStatus, xhr) {
			if(data==null){
				return ;
			}
			
			if(data.detailDTOList) {
				var title = "" ;
				for(var i = 0; i < data.detailDTOList.length; i++) {
					var detail = data.detailDTOList[i];

					if(detail.sectionCode=="image_section" || detail.sectionCode=="default_section"){
						continue ;
					}
					if(detail.elementType=="ShortText"){
						title += detail.elementSubject + ": " + detail.responseValue + "  " ;
					} else{
						title += detail.responseValue + "  " ;
					}
				}
				$(element).attr("title" , title);
			}
		},
		error: function(jqXHR) {

		}
	});
}

ProductBrandListController.prototype.upMove = function(orderId, beforeNumber) {
	if(beforeNumber=='null'){
		beforeNumber = $("#order_id"+orderId).parent().parent().parent().parent().prev().find(".sorting_1").next().html().trim();
	}
	bootbox.setLocale("zh_CN");
	bootbox.confirm({
		size: 'small',
		message: '确定上移吗？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.ProductService.upMove({
					data: {
						orderIdFrom: orderId,
						orderNumber: beforeNumber
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.ProductBrandListController.oTable.DataTable().draw(false);
						LOGIC.ToastrPrompt.toastrSuccess("上移成功");
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError("上移失败 !");
					}
				});
			}
		}
	});
}

ProductBrandListController.prototype.downMove = function(orderId, afterNumber) {
	if(afterNumber=='null'){
		afterNumber = $("#order_id"+orderId).parent().parent().parent().parent().next().find(".sorting_1").next().html().trim();
	}
	bootbox.setLocale("zh_CN");
	bootbox.confirm({
		size: 'small',
		message: '确定下移吗？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.ProductService.downMove({
					data: {
						orderIdFrom: orderId,
						orderNumber: afterNumber
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.ProductBrandListController.oTable.DataTable().draw(false);
						LOGIC.ToastrPrompt.toastrSuccess("下移成功");
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError("下移失败 !");
					}
				});
			}
		}
	});
}

ProductBrandListController.prototype.topMove = function(orderId) {
	bootbox.setLocale("zh_CN");
	bootbox.confirm({
		size: 'small',
		message: '确定置顶吗？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.ProductService.topMove({
					data: {
						orderIdFrom: orderId
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.ProductBrandListController.oTable.DataTable().draw(false);
						LOGIC.ToastrPrompt.toastrSuccess("置顶成功");
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError("置顶失败 !");
					}
				});
			}
		}
	});
}