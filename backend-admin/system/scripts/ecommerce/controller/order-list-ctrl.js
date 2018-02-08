function OrderListController() {
	this.init=init;
	this.createTable=createTable;
	
	function init() {
		var userId = LOGIC.Storage.get("user_id");
		if(window.location.search != "") {
            // get current module id
            var moduleId = extractQueryString(window.location.search, "moduleId");
            LOGIC.Storage.set("current_module_id", moduleId);
        }
		LOGIC.ToshibaCommonTools.getUserInfo(userId);
		var org_ids = LOGIC.Storage.get('org_ids');
		generateOrgTree(org_ids);
		getStoreIdsByUserId(userId);
		getStatus();
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
					curr_org_code = data.orgName;
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});

	}
	
	$("#orderlist_btn_query").click(function() {
		$("#datatable_orders").DataTable().ajax.reload();
	});
	
	$("#orderlist_btn_button_reset").click(function() {
		$("#orderlist_struts_code").attr("value","");
		$("#orderlist_invoice_title").attr("value","");
		$("#orderlist_paymentMethod").attr("value","");
		$("#order_detail_master_id").attr("value","");
		$("#order_detail_master_base_from").attr("value","");
		$("#order_detail_master_base_to").attr("value","");
		$("#order_detail_master_ship_from").attr("value","");
		$("#order_detail_master_ship_to").attr("value","");
		$("#order_detail_master_date_from").attr("value","");
		$("#order_detail_master_date_to").attr("value","");
		
		$("#order_detail_master_depositTotal_from").attr("value","");
		$("#order_detail_master_depositTotal_to").attr("value","");
		
		$("#datatable_orders").DataTable().ajax.reload();
	});
	
	function getStatus(){
		LOGIC.Services.OrderListService.getStatus({
			data:{
				code:"_ES2"
			},
			success: function (data, textStatus, xhr) {
				var html='<option value="">请选择</option>';
				for(var i=0;i<data.length;i++){
					html+='<option value="'+data[i].code+'">'+data[i].code_desc_zh+'</option>';
				}
				$("#orderlist_struts_code").html(html);
			}, error: function (xhr) {
				
			}
			
		});
	}
	
	function createTable() {
		$("#datatable_orders").DataTable({
			autoWidth: false,
			searching: false,
			serverSide: true,
			pageLength: 10,
			lengthMenu: [10, 20, 50, 100],

			ajax: function(request, drawCallback, settings) {
				var success = request.success || function() { };
				var error = request.error || function() { };

				request.success = function(data, textStatus, xhr) {
					var responseData = {
							draw: request.draw,
							recordsTotal: xhr.getResponseHeader("total_count"),
							recordsFiltered: xhr.getResponseHeader("total_count"),
							data : data
					};

					drawCallback(responseData);
				};

				request.error = function(data) {
					error(data);
				};
				var queryCriterias=query_Criterias();
				request.data = {
					"pagingTool" : {
						"currentPage" : request.start / request.length + 1,
						"pageSize" : request.length
					},
					"queryCriterias" : queryCriterias,
					"queryOrderBies" : [ {
						"columnName" : "id",
						"orderType" : "desc"
					} ]
				}

				return LOGIC.Services.OrderListService.getMaster(request);
			},
			columns: [
			          /*{
			        	  data: '', 
			        	  render: function (data, type, full, meta) {
			        		  return "<input type=\"checkbox\" name=\"id[]\" value=\""+full.id+"\">";
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },*/
			          {
			        	  data: 'id',
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: '',
			        	  render: function (data, type, full, meta) {
			        		  var shipping_address=full.consignee+" "+full.shippingProvince+" "+full.shippingCity+" "+full.shippingStreet+" "+full.shippingZip;
			        		  return shipping_address;
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: '',
			        	  render: function (data, type, full, meta) {
			        		  /*var bill_address=full.billingProvince+" "+full.billingCity+" "+full.billingStreet;*/
			        		  var invoiceTitle=full.invoiceTitle;
			        		  if(invoiceTitle==null||invoiceTitle==""){
			        			  return "不需要发票";
			        		  }else{
			        			  return "抬头:"+invoiceTitle;
			        		  }
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: '',
			        	  render: function (data, type, full, meta) {
			        		  var paymentMethod=full.paymentMethod;
			        		  if(paymentMethod=="deposit_payment"){
			        			  return "定金支付";
			        		  }else if(paymentMethod=="full_payment"){
			        			  return "全额支付";
			        		  }else{
			        			  return "";
			        		  }
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: '',
			        	  render: function (data, type, full, meta) {
			        		  var grandTotal="¥ "+full.grandTotal.toFixed(2);
			        		  return grandTotal;
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: '',
			        	  render: function (data, type, full, meta) {
			        		  var depositTotal="¥ ";
			        		  if(full.depositTotal!=null&&full.depositTotal!=""){
			        			  depositTotal+=full.depositTotal.toFixed(2);
			        		  }else{
			        			  depositTotal+="0.00";
			        		  }
			        		  return depositTotal;
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: 'statusvalue',
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: 'createdDtm',
			        	  render: function (data, type, full, meta) {
			        		  var createdDtm=new Date(full.createdDtm);
			        		  var date=createdDtm.getFullYear()+"."+(createdDtm.getMonth()+1)+"."+createdDtm.getDate()+
			        					"  "+createdDtm.getHours()+":"+createdDtm.getMinutes()+":"+createdDtm.getSeconds();
			        		  return date;
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          },
			          {
			        	  data: '',
			        	  render: function (data, type, full, meta) {
			        		  var question = "<a href=\"order_detail.html?id="+full.id+"\" class=\"btn btn-xs default btn-editable\">" +
			        		  		"<i class=\"fa fa-search\"><\/i> 详情<\/a>";
			        		  var editHtml = "";
//			        		  if(full.status=="_ES22"){
			        		  if(curr_org_code == '其他' && full.storeId != 1){
			        			  editHtml += "";
			        		  }else {
			        			  var shipping_address=full.consignee+" "+full.shippingProvince+" "+full.shippingCity+" "+full.shippingStreet+" "+full.shippingZip;
			        			  editHtml +="<a href=\"javascript:void(0)\" " +
			        			  "onclick=\"edit_es32("+full.id+",'"+shipping_address+"',"+full.grandTotal+",'"+full.status+"')\" " +
			        			  "class=\"btn btn-xs default btn-editable\" " +
			        			  "data-toggle=\"modal\" data-target=\"#myModal\">" +
			        			  "<i class=\"fa fa-search\"><\/i>编辑<\/a>";
			        		  }
//			        		  }
			        		  		
			        		  return question + editHtml;
			        	  },
			        	  searchable: false, orderable: false, sWidth: '2%'
			          }
			          ],
			          "order": [
			                    [0, null]

			                    ],
			                    oLanguage: {
			                    	"sInfoEmpty": "",
			                    	"sZeroRecords": "没有符合条件的记录",
			                    	sSearch: '<span id="sSearch">搜索:</span>',
			                    	sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
			                    	sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
			                    }
		});
	}
	
	function query_Criterias(){
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
		
		//状态
		var status=$("#orderlist_struts_code").val();
		if(status!=null&&status!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="status";
			queryCriteria.condition="=";
			queryCriteria.value=status;
			queryCriteria.isValueADigital=false;
			
			queryCriterias.push(queryCriteria);
		}
		//订单编号
		var master_id=$("#order_detail_master_id").val();
		if(master_id!=null&&master_id!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="id";
			queryCriteria.condition="=";
			queryCriteria.value=master_id;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		//定金金额from
		var depositTotal_from=$("#order_detail_master_depositTotal_from").val();
		if(depositTotal_from!=null&&depositTotal_from!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="deposit_total";
			queryCriteria.condition=">=";
			queryCriteria.value=depositTotal_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		//定金金额to
		var depositTotal_to=$("#order_detail_master_depositTotal_to").val();
		if(depositTotal_to!=null&&depositTotal_to!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="deposit_total";
			queryCriteria.condition="<=";
			queryCriteria.value=depositTotal_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		
		//订单金额from
		var grand_total_from=$("#order_detail_master_ship_from").val();
		if(grand_total_from!=null&&grand_total_from!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="grand_total";
			queryCriteria.condition=">=";
			queryCriteria.value=grand_total_from;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		//订单金额to
		var grand_total_to=$("#order_detail_master_ship_to").val();
		if(grand_total_to!=null&&grand_total_to!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="grand_total";
			queryCriteria.condition="<=";
			queryCriteria.value=grand_total_to;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		//下单时间from
		var createdDtm_from=$("#order_detail_master_date_from").val();
		if(createdDtm_from!=null&&createdDtm_from!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="TO_DAYS(om.created_dtm)-TO_DAYS(DATE_FORMAT('"+createdDtm_from+"','%Y/%m/%d'))";
			queryCriteria.condition=">=";
			queryCriteria.value=0;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		//下单时间to
		var createdDtm_to=$("#order_detail_master_date_to").val();
		if(createdDtm_to!=null&&createdDtm_to!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="TO_DAYS(om.created_dtm)-TO_DAYS(DATE_FORMAT('"+createdDtm_to+"','%Y/%m/%d'))";
			queryCriteria.condition="<=";
			queryCriteria.value=0;
			queryCriteria.isValueADigital=true;
			
			queryCriterias.push(queryCriteria);
		}
		
		//有无发票orderlist_invoice_title
		var invoice_title=$("#orderlist_invoice_title").val();
		if(invoice_title!=null&&invoice_title!=""){
			var queryCriteria=new Object();
			if(invoice_title=="yes"){
				queryCriteria.connection="and";
				queryCriteria.key="invoice_title";
				queryCriteria.condition="<>";
				queryCriteria.value="''";
				queryCriteria.isValueADigital=false;
			}else if(invoice_title=="no"){
				queryCriteria.connection="and";
				queryCriteria.key="invoice_title";
				queryCriteria.condition="is";
				queryCriteria.value="NULL";
				queryCriteria.isValueADigital=false;
			}
			
			queryCriterias.push(queryCriteria);
		}
		//支付方式orderlist_paymentMethod
		var paymentMethod=$("#orderlist_paymentMethod").val();
		if(paymentMethod!=null&&paymentMethod!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="payment_method";
			queryCriteria.condition="=";
			queryCriteria.value=paymentMethod;
			queryCriteria.isValueADigital=false;
			
			queryCriterias.push(queryCriteria);
		}
		return queryCriterias;
	}
	
}

var store_id = '';
var curr_org_code = '';
var ordermaster_id;
function edit_es32(id,address,price,status){
	$("#ordermaster_id").val(id);
	$("#ordermaster_shippingaddress").val(address);
	$("#ordermaster_price").val("¥"+price);
	ordermaster_id=id;
	LOGIC.Services.OrderListService.getStatus({
		data:{
			code:"_ES2"
		},
		success: function (data, textStatus, xhr) {
			var html="";
			for(var i=0;i<data.length;i++){
				if(data[i].code==status){
					html+='<option selected="selected" value="'+data[i].code+'">'+data[i].code_desc_zh+'</option>';
				}else{
					html+='<option value="'+data[i].code+'">'+data[i].code_desc_zh+'</option>';
				}
			}
			$("#ordermaster_state").html(html);
		}, error: function (xhr) {
			
		}
	});
}
function change_status(){
	var elementById=document.getElementById("ordermaster_state");
	var selectedIndex=elementById.selectedIndex;
	var status=elementById.options[selectedIndex].value;
	LOGIC.Services.OrderListService.updateOrders({
		data: {
			"id": ordermaster_id,
			"status": status
		}, success: function (data, textStatus, xhr) {
			if(xhr.getResponseHeader('status')==0){
				$('#myModal').modal('toggle');
				$("#datatable_orders").DataTable().ajax.reload();
			}else{
//				alert("更新订单状态失败");
			}
		}, error: function (xhr) {

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
					$("#datatable_orders").DataTable().ajax.reload();
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError('error');
			}
		});
        
        event.stopPropagation();
    });

}
