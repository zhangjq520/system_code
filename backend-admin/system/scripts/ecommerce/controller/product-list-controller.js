function ProductListController() {
	this.init = init;
	this.moduleId = null;
	this.oTable = null;
	
	function init() {
		var userId = LOGIC.Storage.get("user_id");

		if(window.location.search != "") {
			// get current module id
			var moduleId = extractQueryString(window.location.search, "moduleId");
			LOGIC.Storage.set("current_module_id", moduleId);
			LOGIC.Controllers.ProductListController.moduleId = moduleId;
			LOGIC.ToshibaCommonTools.getUserInfo(userId);
			var org_ids = LOGIC.Storage.get('org_ids');

			// get permission by current user and module
			generateOrgTree(org_ids);
			getStoreIdsByUserId(userId);
			getModulePermission(userId, moduleId);
			ProductListController.prototype.generateTree();
		}

		/*$('#txtSearch').keypress(function(e) {
		 if(e.which == 13) {
		 LOGIC.Controllers.ProductListController.oTable.DataTable().ajax.reload();
		 }
		 });*/

		$("#btnSearch").click(function() {
			LOGIC.Controllers.ProductListController.oTable.DataTable().ajax.reload();
		});

		$("#list_btn_reset").click(function() {
			$("#txtName").val("");
			$("#txtSku").val("");
			$("#txtCategoryName").val("");
			$("#list_type_code").val("");
			$("#product_cost_price_from").val("");
			$("#product_cost_price_to").val("");
			$("#product_floor_price_from").val("");
			$("#product_floor_price_to").val("");
			$("#product_market_price_from").val("");
			$("#product_market_price_to").val("");
			$("#product_platform_price_from").val("");
			$("#product_platform_price_to").val("");
			$("#txtStock").val("");
			$("#list_status_code").val("");
		});
		
		$(".displayAttr").live("mouseover", function(){
			ProductListController.prototype.displayAttr(this);
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
						'	<a href="javascript:LOGIC.Controllers.ProductListController.displayAll();" class="btn blue btn-circle" style="margin-right:20px;">' +
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
				LOGIC.Controllers.ProductListController.createTable(data);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
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
				if(data.STATUS != -1 && data != null){
					if(data.storeId!=null){
						store_id = data.storeId;
					}else{
						store_id = data.childStoreIds;
					}
					org_id = data.orgId;
					org_type = data.orgType;
					curr_org_code = data.orgName;
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
            org_id = id;
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
						org_type = data.orgType;
					}
            		ProductListController.prototype.generateTreeRefresh();
    			},
    			error: function(jqXHR) {
    				LOGIC.ToastrPrompt.toastrError('error');
    			}
    		});
            
            event.stopPropagation();
        });

    }
}

var curr_org_code = '';
var store_id = '';
var org_id = '';
var org_type = '';
var _paginationStatus = 0; 
var _table_sInstance = '';
ProductListController.prototype.createTable = function(permission) {
	this.oTable = $('#datatable_products');

	var columns = [
		{
			data: "name", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var name = full.name ;
				if(name==null){
					name = "" ;
				} /*else if(name.length>12){
					name = name.substring(0,12) + "...";
				}*/
				return '<div attr-id='+full.id+' style="word-break:normal; width:auto; display:block; white-space:pre-wrap;word-wrap : break-word ;overflow: hidden ;" title="'+ full.name +'">'+ name +'</div>' ;
			}
		},
		{
			data: "sku", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var html = '<div class="displayAttr" style="word-break:normal; width:auto; display:block; white-space:pre-wrap; word-wrap:break-word; overflow:hidden;" data-id="'+ full.id +'">'+ full.sku +'</div>' ;
				return html ;
			}
		},
		{
			data: "category_name", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var categoryName = full.categoryDTO == null ? "" : full.categoryDTO.name ;
				if(categoryName==null){
					categoryName = "" ;
				}
				return '<div style="word-break:normal; width:auto; display:block; white-space:pre-wrap;word-wrap : break-word ;overflow: hidden ;">'+ categoryName +'</div>' ;
			}
		},
		{
			data: "product_type", searchable: false, orderable: true, render: function(data, type, full, meta) {
				return full.typeCode.codeDescZh;
			}
		},
		{
			data: "cost_price",searchable: false, orderable: true, render: function(data, type, full, meta) {
				var price = 0;
	
				if(full.typeCode.codeDescZh == "可配置产品" || full.costPrice==null || full.costPrice=="") {
					return "无";
				}
				
				if(jQuery.isEmptyObject(full.currencyCode)) {
					price = "¥" +  full.costPrice
				} else {
					price = full.currencyCode.codeDescEn + full.costPrice;
				}
	
				return price;
			}
		},
		{
			data: "floor_price", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var price = 0;
	
				if(full.typeCode.codeDescZh == "可配置产品" || full.floorPrice==null || full.floorPrice=="") {
					return "无";
				}
				
				if(jQuery.isEmptyObject(full.currencyCode)) {
					price = "¥" + full.floorPrice;
				} else {
					price = full.currencyCode.codeDescEn + full.floorPrice;
				}
	
				return price;
			}
		},
		{
			data: "market_price", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var price = 0;
	
				if(full.typeCode.codeDescZh == "可配置产品" || full.marketPrice==null || full.marketPrice=="") {
					return "无";
				}
				
				if(jQuery.isEmptyObject(full.currencyCode)) {
					price = "¥" +  full.marketPrice;
				} else {
					price = full.currencyCode.codeDescEn + full.marketPrice;
				}
	
				return price;
			}
		},
		{
			data: "platform_price", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var price = 0;
	
				if(full.typeCode.codeDescZh == "可配置产品" || full.platformPrice==null || full.platformPrice=="") {
					return "无";
				}
				
				if(jQuery.isEmptyObject(full.currencyCode)) {
					price = "¥" +  full.platformPrice;
				} else {
					price = full.currencyCode.codeDescEn + full.platformPrice;
				}
	
				return price;
			}
		},
		{
			data: "qty", searchable: false, orderable: true,render: function(data, type, full, meta) {
				if(full.typeCode.codeDescZh == "可配置产品" || full.qty==null || full.qty=="") {
					return "无";
				}
				
				return full.qty ;
			}
		},
		{
			data: "status", searchable: false, orderable: true, render: function(data, type, full, meta) {
				var html = "";
	
				if(full.typeCode.codeDescZh == "可配置产品") {
					html = '<span class="label label-sm label-primary"></span>';
				} else if(full.status == '_ES41') {
					html = '<span class="label label-sm label-primary">' +
						full.statusCode.codeDescZh + '</span>';
				} else if(full.status == '_ES42') {
					html = '<span class="label label-sm label-success">' +
						full.statusCode.codeDescZh + '</span>';
				} else if(full.status == '_ES43') {
					html = '<span class="label label-sm label-default">' +
						full.statusCode.codeDescZh + '</span>';
				}
				return html;
			}
		},
		{
			data: "", searchable: false, orderable: false, render: function(data, type, full, meta) {
				var editHtml = '';
				var deleteHtml = '', statusHtml;
	
				if(permission.p1 == '1' && full.typeCode.codeDescZh != "可配置产品"){
					editHtml = '<li><a class="godetail" onclick="go_detail('+LOGIC.Controllers.ProductListController.moduleId+','+full.id+')"><i class="fa fa-edit"></i>&nbsp;编辑</a></li>';
				}
				
				if(permission.p2 == '1'){
					if(full.typeCode.codeDescZh == "可配置产品"){
						LOGIC.Services.ProductService.getGroundingChildIds({
							async: false,
							data: {
								parentId: full.id
							},
							success: function(data, textStatus, xhr) {
								if(data == null || data == '' || data.length == 0){
									deleteHtml = '<li><a onclick="LOGIC.Controllers.ProductListController.deleteProductModel(' +
									'\'' + full.id + '\', ' +
									'\''+ full.typeCode.codeDescZh +'\'' +
									')"><i class="fa fa-trash-o"></i>&nbsp;删除</a></li>';
									editHtml = '<li><a href="product_detail.html?' +
									'moduleId=' + LOGIC.Controllers.ProductListController.moduleId +
									'&productId=' + full.id + '&action=edit' +
									'"><i class="fa fa-edit"></i>&nbsp;编辑</a></li>';
								}
							},
							error: function(jqXHR) {
								
							}
						});
					}else {
						if(full.status != '_ES42' && !full.isDefault){
							deleteHtml = '<li><a onclick="LOGIC.Controllers.ProductListController.deleteProductModel(' +
							'\'' + full.id + '\', ' +
							'\''+ full.typeCode.codeDescZh +'\'' +
							')"><i class="fa fa-trash-o"></i>&nbsp;删除</a></li>';
						}
					}
				} 
	
				if(full.typeCode.codeDescZh != "可配置产品"){
					if(full.status == '_ES41') {
						statusHtml = '<li><a onclick="LOGIC.Controllers.ProductListController.changeStatus(' +
							'\'' + full.id + '\', ' +
							'\'_ES42\'' +
							',this)"><i class="fa fa-arrow-circle-up"></i>&nbsp;上架</a></li>'
					} else if(full.status == '_ES42') {
						statusHtml = '<li><a onclick="LOGIC.Controllers.ProductListController.changeStatus(' +
							'\'' + full.id + '\', ' +
							'\'_ES43\'' +
							',this)"><i class="fa fa-arrow-circle-down"></i>&nbsp;下架</a></li>'
					} else if(full.status == '_ES43') {
						statusHtml = '<li><a onclick="LOGIC.Controllers.ProductListController.changeStatus(' +
							'\'' + full.id + '\', ' +
							'\'_ES42\'' +
							',this)"><i class="fa fa-arrow-circle-up"></i>&nbsp;上架</a></li>'
					}
				} else{
						statusHtml = '<li><a onclick="LOGIC.Controllers.ProductListController.changeFamilyStatus(' +
							'\'' + full.id + '\', ' +
							'\'_ES42\'' +
							')"><i class="fa fa-arrow-circle-up"></i>&nbsp;批量上架</a></li>' +
							'<li><a onclick="LOGIC.Controllers.ProductListController.changeFamilyStatus(' +
							'\'' + full.id + '\', ' +
							'\'_ES43\'' +
							')"><i class="fa fa-arrow-circle-down"></i>&nbsp;批量下架</a></li>'
				}
				
				if(curr_org_code == '其他' && full.store.name != '总公司'){
					editHtml = "";
					deleteHtml = "";
					statusHtml = "";
				}
				
				var html = '<div class="config-btn btn-group">' +
					'<a class="btn btn-xs btn-circle btn-custom-1" href="javascript:;" data-toggle="dropdown" data-close-others="true" aria-expanded="true">' +
					'<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>' +
					'</a>' +
					'<ul class="dropdown-menu pull-right">' +
					editHtml +
					deleteHtml +
					statusHtml +
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
		stateSave: true,
		stateSaveCallback: function(settings,data) {
		  _table_sInstance = 'DataTables_' + settings.sInstance;
		  localStorage.setItem( 'DataTables_' + settings.sInstance, JSON.stringify(data) )
		},
		stateLoadCallback: function(settings) {
		  var key = LOGIC.Storage.get('productEdit');
		  if (key){
			  return JSON.parse( localStorage.getItem( 'DataTables_' + settings.sInstance ) )
		  }
		},
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
				var _editId = LOGIC.Storage.get('_editId');
				var pId = LOGIC.Storage.get("productId") || _editId;
				if (pId) {
					var trList = $('#datatable_products').find('tr');
					$.each(trList, function(i, item){
						if($(item).find('td').eq(0).find('div').attr('attr-id') == pId) {
							$(item).css('background-color','rgba(152, 203, 4, 0.21');
						}
					});
				}
			};

			request.error = function(data) {
				error(data);
			};

			var queryOption = LOGIC.QueryTool.getDefaultQueryOption();
			queryOption.pagination.perPage = request.length;
			var prePage = LOGIC.Storage.get('productEdit');
			var proListCurrentPage = LOGIC.Storage.get('proListCurrentPage');
			console.log(_paginationStatus);
			console.log($('.pagination').find('li').length);
			if(prePage && proListCurrentPage && _paginationStatus === 0) {
				queryOption.pagination.current = proListCurrentPage;				
			} else {
				queryOption.pagination.current = request.start / request.length + 1;
			}
			queryOption.orderBy.type = request.order[0].dir;
			queryOption.orderBy.name = columns[request.order[0].column].data;
			/*queryOption.orderBy.type = 'desc';
			
			if(productParentId==null || productParentId==0){
				queryOption.orderBy.name = 'created_dtm' ;
			}else {
				queryOption.orderBy.name = 'product_type';
			}*/
			queryOption.flag = true;
			queryOption.queryCriterias = ProductListController.prototype.query_Criterias() ;

			request.data = {
				queryOption: queryOption
			};
			LOGIC.Storage.set("proListCurrentPage",queryOption.pagination.current);
			
			return LOGIC.Services.ProductService.queryProductList(request);
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
	
	$('#datatable_products').on('draw.dt',function() {
		_paginationStatus++;
     });
}

ProductListController.prototype.query_Criterias = function(){
	var queryCriterias=new Array();
	if(store_id !=null && store_id != ""){
		var queryCriteria=new Object();
		queryCriteria.connection="and";
		queryCriteria.key="store_id";
		queryCriteria.condition="in";
		queryCriteria.value=store_id;
		queryCriteria.isValueADigital=false;
		queryCriterias.push(queryCriteria);
	}	
	
	//产品类型
	/*if(true){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="product_type";
		queryCriteria.condition="=";
		queryCriteria.value="_ES31";
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}*/
	
	//产品名称
	var productName=$("#txtName").val();
	if(productName!=null&&productName!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="name";
		queryCriteria.condition="like";
		queryCriteria.value=productName;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//产品SKU
	var productSKU=$("#txtSku").val();
	if(productSKU!=null&&productSKU!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="sku";
		queryCriteria.condition="like";
		queryCriteria.value=productSKU;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//产品类型名称
	var categoryName=$("#txtCategoryName").val();
	if(categoryName!=null&&categoryName!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="category_name";
		queryCriteria.condition="like";
		queryCriteria.value=categoryName;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//产品类型
	var type=$("#list_type_code").val();
	if(type!=null&&type!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="product_type";
		queryCriteria.condition="like";
		queryCriteria.value=type;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	//产品成本价from
	var product_cost_price_from=$("#product_cost_price_from").val();
	if(product_cost_price_from!=null&&product_cost_price_from!=""){
		if(isNaN(product_cost_price_from)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="cost_price";
			queryCriteria.condition=">=";
			queryCriteria.value=product_cost_price_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品成本价to
	var product_cost_price_to=$("#product_cost_price_to").val();
	if(product_cost_price_to!=null&&product_cost_price_to!=""){
		if(isNaN(product_cost_price_to)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="cost_price";
			queryCriteria.condition="<=";
			queryCriteria.value=product_cost_price_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品团购价from
	var product_floor_price_from=$("#product_floor_price_from").val();
	if(product_floor_price_from!=null&&product_floor_price_from!=""){
		if(isNaN(product_floor_price_from)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="floor_price";
			queryCriteria.condition=">=";
			queryCriteria.value=product_floor_price_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品团购价to
	var product_floor_price_to=$("#product_floor_price_to").val();
	if(product_floor_price_to!=null&&product_floor_price_to!=""){
		if(isNaN(product_floor_price_to)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="floor_price";
			queryCriteria.condition="<=";
			queryCriteria.value=product_floor_price_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品市场价from
	var product_market_price_from=$("#product_market_price_from").val();
	if(product_market_price_from!=null&&product_market_price_from!=""){
		if(isNaN(product_market_price_from)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="market_price";
			queryCriteria.condition=">=";
			queryCriteria.value=product_market_price_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品市场价to
	var product_market_price_to=$("#product_market_price_to").val();
	if(product_market_price_to!=null&&product_market_price_to!=""){
		if(isNaN(product_market_price_to)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="market_price";
			queryCriteria.condition="<=";
			queryCriteria.value=product_market_price_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品平台价from
	var product_platform_price_from=$("#product_platform_price_from").val();
	if(product_platform_price_from!=null&&product_platform_price_from!=""){
		if(isNaN(product_platform_price_from)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="platform_price";
			queryCriteria.condition=">=";
			queryCriteria.value=product_platform_price_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品平台价to
	var product_platform_price_to=$("#product_platform_price_to").val();
	if(product_platform_price_to!=null&&product_platform_price_to!=""){
		if(isNaN(product_platform_price_to)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="platform_price";
			queryCriteria.condition="<=";
			queryCriteria.value=product_platform_price_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品库存
	var qty=$("#txtStock").val();
	if(qty!=null&&qty!=""){
		if(isNaN(qty)){
			alert("价格查询请输入数字");
		} else{
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="qty";
			queryCriteria.condition="=";
			queryCriteria.value=qty;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
	}
	
	//产品状态
	var status=$("#list_status_code").val();
	if(status!=null&&status!=""){
		var queryCriteria=new Object();
		
		queryCriteria.connection="and";
		queryCriteria.key="status";
		queryCriteria.condition="like";
		queryCriteria.value=status;
		queryCriteria.isValueADigital=false;
		
		queryCriterias.push(queryCriteria);
	}
	
	var productParentId = sessionStorage.getItem("productParentId");
	//某个配置产品下所有的子产品
	if(productParentId!=null && productParentId!=""){
		
		var queryCriteria=new Object();
		
		queryCriteria.connection = "and";
		queryCriteria.key = "parent_product_id";
		queryCriteria.condition = "=";
		queryCriteria.value = productParentId;
		queryCriteria.isValueADigital = true;
		
		queryCriterias.push(queryCriteria);
	}
	
	//某个配置产品
	if(productParentId!=null && productParentId!=""){
		
		var queryCriteria=new Object();
		
		queryCriteria.connection = "or";
		queryCriteria.key = "id";
		queryCriteria.condition = "=";
		queryCriteria.value = productParentId;
		queryCriteria.isValueADigital = true;
		
		queryCriterias.push(queryCriteria);
	}
	
	return queryCriterias;
}

ProductListController.prototype.displayAll = function(){
	sessionStorage.removeItem("productParentId");
	LOGIC.Controllers.ProductListController.oTable.DataTable().ajax.reload();
}

ProductListController.prototype.generateTree = function() {
	configProductTree = $("#configProductTree").jstree({
		'core': {
			'themes': {
				"responsive": false
			},
			// so that create works
			'check_callback': true,
			'data': {
				'url': function(node) {
					if(store_id != null && store_id != '' && org_type != "_A83"){
						return LOGIC.Configuration.serverUrl + 'system/rest/product/getConfigProductListForJSTree/' + store_id;
					}else if(org_id != null){
						return LOGIC.Configuration.serverUrl + 'system/rest/product/getConfigProductListForJSTreeByOrgId/' + org_id;
					}
					else {
						return LOGIC.Configuration.serverUrl + 'system/rest/product/getConfigProductListForJSTree/';
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
			'key': "categoryTree"
		},
		'plugins': [
			"contextmenu",
			"dnd",
			"search",
			"state",
			"types",
			"unique"
		],
		'search': {
			"show_only_matches": true
		},
		'contextmenu': {
			'select_node': !0,
			'show_at_node': !0,
			items: function() {
				
			}
		},
	});
	
	$("#configProductTree").on('click', 'a', function(event, data) {
		var productParentId = $(this).parent("li").attr("id") ;
		sessionStorage.setItem("productParentId" , productParentId);
		LOGIC.Controllers.ProductListController.oTable.DataTable().ajax.reload();
	});
	
	$("#search_configProduct").on('click', function() {
		$("#configProductTree").jstree(true).search($("#search_tree").val());
	});
	
}

ProductListController.prototype.generateTreeRefresh = function() {
	$("#configProductTree").jstree({
		'core': {
			'themes': {
				"responsive": false
			},
			// so that create works
			'check_callback': true,
			'data': {
				'url': function(node) {
					
				},
				'headers': {
					"Authorization": $.cookie("access_token")
				}
			}
		}
	}).refresh();
}

ProductListController.prototype.displayAttr = function(element){
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

ProductListController.prototype.deleteProductModel = function(productId, productType) {
	bootbox.confirm({
		size: 'small',
		message: '确定删除记录？',
		callback: function(result) {
			if(result == true) {
				var ids = productId;
				if(productType == "可配置产品"){
					LOGIC.Services.ProductService.getChildIds({
						async: false,
						data: {
							parentId: productId
						},
						success: function(data, textStatus, xhr) {
							for(var i=0; i<data.length; i++){
								ids = ids + "," + data[i].childProductId;
							}
						},
						error: function(jdXHR) {
							LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader("msg"));
						}
					});
				}
				LOGIC.Services.ProductService.deleteProduct({
					data: {
						ids: ids
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.ProductListController.oTable.DataTable().draw(false);
						LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader("msg"));
					}
				});
			}
		}
	});
}

ProductListController.prototype.changeStatus = function(productId, status, dom) {
	bootbox.setLocale("zh_CN");
	bootbox.confirm({
		size: 'small',
		message: '确定改变产品状态？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.ProductService.changeStatus({
					data: {
						productId: productId,
						status: status
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.ProductListController.oTable.DataTable().draw(false);
						LOGIC.ToastrPrompt.toastrSuccess("更新产品状态成功");
						LOGIC.Storage.set('_editId', productId);
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError("更新产品状态失败 !");
					}
				});
			}
		}
	});
}

ProductListController.prototype.changeFamilyStatus = function(productId, status) {
	bootbox.setLocale("zh_CN");
	bootbox.confirm({
		size: 'small',
		message: '是否确定改变配置产品及其子产品状态？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.ProductService.changeFamilyStatus({
					data: {
						productId: productId,
						status: status
					},
					success: function(data, textStatus, xhr) {
						LOGIC.Controllers.ProductListController.oTable.DataTable().draw(false);
						LOGIC.ToastrPrompt.toastrSuccess("更新配置产品及其子产品状态成功");
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError("更新配置产品及其子产品状态失败 !");
					}
				});
			}
		}
	});
}

function go_detail(mId,id){
	LOGIC.Storage.set('productId','');
	LOGIC.Storage.set('productEdit','');
	window.location.href = 'product_detail.html?moduleId='+mId+'&productId=' + id + '&action=edit';
}

$(window).unload(function(ev){
	LOGIC.Storage.set('_editId', '');
	LOGIC.Storage.set('productId','');
	LOGIC.Storage.set('productEdit','');
});
