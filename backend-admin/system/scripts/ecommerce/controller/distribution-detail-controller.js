function DistributionDetailController() {
    this.init = init;
    this.updateDistributorCashBack = updateDistributorCashBack;
    function init() {
        /*if (window.location.search != "") {
         // get current module id
         var moduleId = LOGIC.Storage.get("current_module_id");
         LOGIC.Storage.set("current_module_id", moduleId);
         }*/

        createTable();
    }
    function updateDistributorCashBack (orderMasterId) {
    	var statusvalue = "";
    	var isStatusList = false;
    	LOGIC.Services.DistributionService.getMasterById({
    		async : false,
			data:{
				masterid:orderMasterId
			},
			success: function (data, textStatus, xhr) {
				if(xhr.getResponseHeader('status')==0||xhr.getResponseHeader('status')=="200, 0"){
					var statusList = ['_ES22','_ES23','_ES24','_ES25','_ES27'];
					var status = data.status;
					statusvalue = data.statusvalue;
					for(var i=0;i<statusList.length;i++){
						if(status == statusList[i]){
							isStatusList = true;
							break;
						}
					}
				}else{
    			
				}
			}, error: function (xhr) {

			}
		});
    	if(isStatusList){
    		LOGIC.Services.DistributionService.updateDistributorCashBack({
        		async : false,
        		data: {
        			"orderMasterId": orderMasterId
        		}, success: function (data, textStatus, xhr) {
        			if(xhr.getResponseHeader('status')==0||xhr.getResponseHeader('status')=="200, 0"){
        			}else{
        			}
        		}, error: function (xhr) {

        		}
        	});
    	}else{
    		var isCashBack=confirm('该订单状态为：[ '+statusvalue+' ]\n\n是否返现？');
    		if(isCashBack){
    			LOGIC.Services.DistributionService.updateDistributorCashBack({
            		async : false,
            		data: {
            			"orderMasterId": orderMasterId
            		}, success: function (data, textStatus, xhr) {
            			if(xhr.getResponseHeader('status')==0||xhr.getResponseHeader('status')=="200, 0"){
            			}else{
            			}
            		}, error: function (xhr) {

            		}
            	});
    		}else{
    			return;
    		}
    	}
    	$("#datatable_orders").DataTable().ajax.reload();
    }
    function createTable() {
        myTable = $("#datatable_orders").DataTable({
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

                    if(sharedCode==null || sharedCode==""){
                        alert("sharedCode is empty");
                        return ;
                    }

                    LOGIC.Services.DistributionService.getDistributionDTOList({
                        async : false ,
                        data: {
                            "pagingTool": {
                                "currentPage": 0,
                                "pageSize": 1
                            },
                            "queryCriterias": [
                                {
                                    "connection": "and",
                                    "key": "shared_code",
                                    "condition": "=",
                                    "value": sharedCode ,
                                    "isValueADigital": false
                                }
                            ]
                        }, success: function (data) {
                            if(data!=null){
                                var distributionLogDTO = data[0] ;
                                commission = distributionLogDTO.distributor.commission ;
                            }
                        }, error: function (xhr) {
                            console.log("get distributionLog list failed") ;
                        }
                    });

                    drawCallback(responseData);
                };

                request.error = function(data) {
                    error(data);
                };

                request.data = {
                    "pagingTool" : {
                        "currentPage" : request.start / request.length + 1,
                        "pageSize" : request.length
                    },
                    "queryCriterias": [
                        {
                            "connection": "and",
                            "key": "eshop_order_detail.shared_code",
                            "condition": "=",
                            "value": sharedCode ,
                            "isValueADigital": false
                        }
                    ],
                    "queryOrderBies" : [ {
                        "columnName" : "eshop_order_detail.id",
                        "orderType" : "asc"
                    } ]
                };
                
                return LOGIC.Services.OrderListService.getOrdersBySharedCode(request);
            },
            columns: [
                {
                    data: 'orderMasterId', title: '订单编号', searchable: false, orderable: false, sWidth: '5%'
                },
                {
                    data: 'price', title: '购买单价', searchable: false, orderable: false, sWidth: '8%'
                },
                {
                    data: 'qtyOrdered', title: '购买数量', searchable: false, orderable: false, sWidth: '3%'
                },
                {
                    data: 'userName', title: '用户名', searchable: false, orderable: false, sWidth: '3%'
                },
                {
                    data: '', title: '可返现(元)', searchable: false, orderable: false, sWidth: '8%',
                    render: function(data, type, full, meta){
                    	var result = '';
                        var productAtrbtValues = JSON.parse(full.productAtrbtValues);
                        if(productAtrbtValues != null){
                        	var detailDTOList=productAtrbtValues.detailDTOList;
                        	if(detailDTOList != null){
                        		var cost_price = null;
                        		for(var i=0;i<detailDTOList.length;i++){
                        			var detailDTO = detailDTOList[i];
                        			if(detailDTO != null && detailDTO.elementCode == 'cost_price'){
                        				cost_price = detailDTO.responseValue;
                        				break;
                        			}
                        		}
                        		if(cost_price!=null){
                        			result=(full.price-cost_price)*full.qtyOrdered*commission;
                        			result = parseFloat(result).toFixed(2);
                        		}
                        	}
                        }
                        return result;
                    }
                },
                {
                    data: '', title: '已返现(元)', searchable: false, orderable: false, sWidth: '8%',
                    render: function(data, type, full, meta){
                        return full.cashBack == null ? 0 : full.cashBack ;
                    }
                },
                {
                	sClass:"center",
                    data: '', title: '操作',
                    render: function (data, type, full, meta) {
                       var result='<a href="order_detail.html?id='+ full.orderMasterId +'" class="btn btn-xs default btn-editable" >' +
                            '<i class="fa fa-search"></i> 订单详情</a>';
                       if(full.cashBack == null){
                    	   result += '<a onclick="LOGIC.Controllers.DistributionDetailController.updateDistributorCashBack('+full.orderMasterId+')" class="btn btn-xs green btn-editable" >' +
                    	   '<i class="fa fa-money"></i>  返现</a>';
                       }else{
                    	   result += '<button class="btn btn-xs default btn-editable" disabled>' +
                    	   '<i class="fa fa-money"></i>  返现</button>';
                       }
                       
                       return result;
                    },
                    searchable: false, orderable: false, sWidth: '10%'
                }
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

}
