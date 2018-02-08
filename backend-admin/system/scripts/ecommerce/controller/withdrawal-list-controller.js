function WithdrawalListController() {

	this.init = init;
	this.editWithdrawal = editWithdrawal;
	this.updateWithdrawal1 = updateWithdrawal1;
	this.updateWithdrawal2 = updateWithdrawal2;


	function init() {
		if (window.location.search != "") {
			// get current module id
			var moduleId = extractQueryString(window.location.search,
					"moduleId");
			LOGIC.Storage.set("current_module_id", moduleId);
		}
		createTable();
		
		$("body").on("click", "#btnSearch", function() {
			changeQueryConditions();
			myTable.DataTable().ajax.reload();
		});
		
		$("#list_btn_reset").click(function() {
			$("#datatable_members").find(".filter input").val("");
			$("#searchStatus").attr("value","");
//			$("#order_detail_master_id").attr("value","");
//			$("#order_detail_master_base_from").attr("value","");
//			$("#order_detail_master_base_to").attr("value","");
//			$("#order_detail_master_ship_from").attr("value","");
//			$("#order_detail_master_ship_to").attr("value","");
//			$("#order_detail_master_date_from").attr("value","");
//			$("#order_detail_master_date_to").attr("value","");
//			
//			$("#datatable_orders").DataTable().ajax.reload();
		});
	}

	function createTable() {

		var columns = [
				{
					data : 'withdrawal.id',
					searchable : false,
					orderable : true,
					sWidth : '5%',
					columnName:"t1.id"
				},
				{
					data : 'distributor.name',
					searchable : false,
					orderable : true,
					sWidth : '8%',
					columnName:"t2.name"
				},
				{
					data : 'withdrawal.amount',
					searchable : false,
					orderable : true,
					sWidth : '8%',
					columnName:"t1.amount"
				},
				{
					data : '',
					searchable : false,
					orderable : true,
					sWidth : '13%',
					render : function(data, type, full, meta) {
						var withdrawalDate = full.withdrawal.withdrawDate;
						if (withdrawalDate == null) {
							return "";
						}
						return formatDate(new Date(withdrawalDate));
					},
					columnName:"t1.withdraw_date"
				},
				{
					data : '',
					searchable : false,
					orderable : true,
					sWidth : '7%',
					render : function(data, type, full, meta) {
						var status = full.withdrawal.status;
						switch (status) {
						case "_ES11":
							status = "<span class=\"label label-sm label-primary\">申请中<\/span>";
							break;
						case "_ES12":
							status = "<span class=\"label label-sm label-success\">提现成功<\/span>";
							break;
						case "_ES13":
							status = "<span class=\"label label-sm label-info\">提现失败<\/span>";
							break;
						default:
							status = "<span class=\"label label-sm label-danger\">状态异常<\/span>";
							break;
						}
						return status;
					},
					columnName:"t1.status"
				},
				{
					data : '',
					render : function(data, type, full, meta) {
						var button;
						if (full.withdrawal.status == "_ES11") {
							button = '<button onclick="LOGIC.Controllers.WithdrawalListController.editWithdrawal('
									+ full.withdrawal.id
									+ ')" class="btn btn-xs default btn-editable" data-toggle="modal" data-target="#myModal" >'
									+ '<i class="fa fa-search"></i> 审核</button>';
						} else {
							button = '<button onclick="LOGIC.Controllers.WithdrawalListController.editWithdrawal('
									+ full.withdrawal.id
									+ ')" class="btn btn-xs default btn-editable" data-toggle="modal" data-target="#myModal" >'
									+ '<i class="fa fa-search"></i> 编辑</button>';
						}
						return button;
					},
					searchable : false,
					orderable : false,
					sWidth : '2%'
				} ];

		myTable = $("#datatable_members").dataTable(
				{
					autoWidth : false,
					searching : false,
					serverSide : true,
					pageLength : 10,
					lengthMenu : [ 10, 20, 50, 100 ],

					ajax : function(request, drawCallback, settings) {
						var success = request.success || function() {
						};
						var error = request.error || function() {
						};

						request.success = function(data, textStatus, xhr) {
							var responseData = {
								draw : request.draw,
								recordsTotal : xhr
										.getResponseHeader("total_count"),
								recordsFiltered : xhr
										.getResponseHeader("total_count"),
								data : data
							};

							drawCallback(responseData);
						};

						request.error = function(data) {
							error(data);
						};

//						request.data = {
//							"pagingTool" : {
//								"currentPage" : request.start / request.length
//										+ 1,
//								"pageSize" : request.length
//							},
//							"queryCriterias" : [ {
//								connection : "and",
//								key : "t2.name",
//								condition : "like",
//								value : "%" + $('#txtSearch').val() + "%",
//								isValueADigital : false
//							} ],
//							"queryOrderBies" : [ {
//								"columnName" : "t1.withdraw_date",
//								"orderType" : "asc"
//							} ]
//						};
						
						var queryOption = LOGIC.QueryTool.getDefaultQueryOption();

			            queryOption.pagination.perPage = request.length;
		                queryOption.pagination.current = request.start / request.length + 1;

		                queryOption.orderBy.type = request.order[0].dir;
		                queryOption.orderBy.name = columns[request.order[0].column].columnName;
		                queryOption.flag = true;
		                queryOption.queryCriterias = getQueryConditions();
		                request.data = {
		                    queryOption: queryOption
		                };
						

						return LOGIC.Services.WithdrawalService
								.getWithdrawalDTOList(request);
					},
					columns : columns,
					// columns: [
					// /*{
					// data: '',
					// render: function (data, type, full, meta) {
					// return "<input type=\"checkbox\" name=\"id[]\"
					// value=\""+full.id+"\">";
					// },
					// searchable: false, orderable: false, sWidth: '2%'
					// },*/
					// {
					// data: 'withdrawal.id', title: '编号', searchable: false,
					// orderable: true, sWidth: '5%'
					// },
					// {
					// data: 'distributor.name', title: '分销商', searchable:
					// false, orderable: true, sWidth: '8%'
					// },
					// {
					// data: 'withdrawal.amount', title: '提现金额(元)', searchable:
					// false, orderable: true, sWidth: '8%'
					// },
					// {
					// data: '', title: '申请日期', searchable: false, orderable:
					// true, sWidth: '13%',
					// render: function (data, type, full, meta) {
					// var withdrawalDate = full.withdrawal.withdrawDate ;
					// if(withdrawalDate==null){
					// return "" ;
					// }
					// return formatDate(new Date(withdrawalDate)) ;
					// }
					// },
					// {
					// data: '', title: '状态', searchable: false, orderable:
					// true, sWidth: '7%',
					// render: function (data, type, full, meta) {
					// var status = full.withdrawal.status ;
					// switch (status){
					// case "_ES11":
					// status = "<span class=\"label label-sm
					// label-primary\">申请中<\/span>" ;
					// break;
					// case "_ES12":
					// status = "<span class=\"label label-sm
					// label-success\">提现成功<\/span>" ;
					// break;
					// case "_ES13":
					// status = "<span class=\"label label-sm
					// label-info\">提现失败<\/span>" ;
					// break;
					// default:
					// status = "<span class=\"label label-sm
					// label-danger\">状态异常<\/span>" ;
					// break;
					// }
					// return status ;
					// }
					// },
					// {
					// data: '',
					// render: function (data, type, full, meta) {
					// var button ;
					// if(full.withdrawal.status == "_ES11"){
					// button = '<button
					// onclick="LOGIC.Controllers.WithdrawalListController.editWithdrawal('+
					// full.withdrawal.id +')" class="btn btn-xs default
					// btn-editable" data-toggle="modal" data-target="#myModal"
					// >' +
					// '<i class="fa fa-search"></i> 审核</button>';
					// }else {
					// button = '<button
					// onclick="LOGIC.Controllers.WithdrawalListController.editWithdrawal('+
					// full.withdrawal.id +')" class="btn btn-xs default
					// btn-editable" data-toggle="modal" data-target="#myModal"
					// >' +
					// '<i class="fa fa-search"></i> 编辑</button>';
					// }
					// return button;
					// },
					// searchable: false, orderable: false, sWidth: '2%'
					// }
					// ],

					oLanguage : {
						"sInfoEmpty" : "",
						"sZeroRecords" : "没有符合条件的记录",
						sSearch : '<span id="sSearch">搜索:</span>',
						sInfo : '<span id="msg_show">显示</span>' + " _START_ "
								+ '<span id="msg_to">到</span>' + " _END_ "
								+ '<span id="msg_of">共</span>' + " _TOTAL_ "
								+ '<span id="msg_entries">条记录 </span>',
						sLengthMenu : "_MENU_ "
								+ '<span id="recordsId">记录</span>'
					}
				});
	}

	function editWithdrawal(withdrawalId) {
		if (withdrawalId == null || withdrawalId == 0) {
			alert("withdrawal id is empty");
			return;
		}
		LOGIC.Services.WithdrawalService
				.getWithdrawalDTOList({
					data : {
						"pagingTool" : {
							"currentPage" : 0,
							"pageSize" : 1
						},
						"queryCriterias" : [ {
							"connection" : "and",
							"key" : "t1.id",
							"condition" : "=",
							"value" : withdrawalId,
							"isValueADigital" : true
						} ]
					},
					success : function(data) {
						var withdrawalDTO = data[0];
						$("#distributorName").attr("value",
								withdrawalDTO.distributor.name);
						$("#realName").attr("value",
								withdrawalDTO.withdrawal.realName);
						$("#contactInfo").attr("value",
								withdrawalDTO.withdrawal.contactInfo);
						$("#withdrawalWay").attr("value",
								withdrawalDTO.withdrawal.withdrawWay);
						$("#withdrawalAccount").attr("value",
								withdrawalDTO.withdrawal.withdrawAccounts);
						$("#amount").attr("value",
								withdrawalDTO.withdrawal.amount);
						$("#withdrawalDate").attr(
								"value",
								new Date(withdrawalDTO.withdrawal.withdrawDate)
										.format("yyyy-MM-dd hh:mm:ss"));
						$("#withdrawalNotes").attr("value",
								withdrawalDTO.withdrawal.notes);

						if (withdrawalDTO.withdrawal.status == "_ES11") {
							document.getElementById("statusDiv").style.display = "none";
							$("#yes").text("批准");
							$("#no").text("拒绝");
							$("#yes").attr(
									"onclick",
									"LOGIC.Controllers.WithdrawalListController.updateWithdrawal1("
											+ withdrawalId + " , '_ES12')");
							$("#no").attr(
									"onclick",
									"LOGIC.Controllers.WithdrawalListController.updateWithdrawal1("
											+ withdrawalId + " , '_ES13')");
						} else {
							$("#yes").text("保存");
							$("#no").text("取消");
							$("#withdrawalStatus").attr("value",
									withdrawalDTO.withdrawal.status);
							document.getElementById("statusDiv").style.display = "block";
							$("#yes").attr(
									"onclick",
									"LOGIC.Controllers.WithdrawalListController.updateWithdrawal2("
											+ withdrawalId + ")");
							$("#no").attr("onclick", "");
						}
					},
					error : function(xhr) {
						console.log("get withdrawalDTO by id failed");
					}
				});
	}

	function updateWithdrawal1(withdrawalId, status) {
		if (withdrawalId == null || withdrawalId == 0 || status == null) {
			alert("withdrawal id or status is error");
			return;
		}
		$('#myModal').modal('toggle');
		var notes = $("#withdrawalNotes").val();
		if(notes == null || notes == ''){
			alert("必填信息不能为空");
			return;
		}
		LOGIC.Services.WithdrawalService.updateWithdrawal({
			data : {
				id : withdrawalId,
				status : status,
				notes : notes
			},
			success : function(data) {
				console.log(data);
				myTable.DataTable().ajax.reload();
				console.log("update withdrawal id and status success");
			},
			error : function(xhr) {
				console.log("update withdrawal id and status failed");
			}
		});
	}

	function updateWithdrawal2(withdrawalId) {

		if (withdrawalId == null || withdrawalId == 0) {
			alert("withdrawal id or status is error");
			return;
		}

		var realName = document.getElementById("realName").value;
		var contactInfo = document.getElementById("contactInfo").value;
		var withdrawalWay = document.getElementById("withdrawalWay").value;
		var withdrawalAccount = document.getElementById("withdrawalAccount").value;
		var amount = parseFloat(document.getElementById("amount").value);
		var status = document.getElementById("withdrawalStatus").value;
		var notes = document.getElementById("withdrawalNotes").value;
		if (realName == null || realName == "" || contactInfo == null
				|| contactInfo == "" || withdrawalWay == null
				|| withdrawalWay == "" || withdrawalAccount == null
				|| withdrawalAccount == "" || amount == null || amount == ""
				|| notes == "" || notes == null) {
			alert("必填信息不能为空");
			return;
		}

		if (isNaN(amount) || amount <= 0) {
			alert("提现金额错误");
			return;
		}

		$('#myModal').modal('toggle');

		LOGIC.Services.WithdrawalService.updateWithdrawal({
			data : {
				"id" : withdrawalId,
				"realName" : realName,
				"contactInfo" : contactInfo,
				"withdrawWay" : withdrawalWay,
				"withdrawAccounts" : withdrawalAccount,
				"amount" : amount,
				"status" : status,
				"notes" : notes
			},
			success : function(data) {
				if (data.STATUS == -2) {
					alert("更新数据失败");
					return;
				} else {
					myTable.DataTable().ajax.reload();
					console.log("update withdrawal id and status success");
				}
			},
			error : function(xhr) {
				console.log("update withdrawal id and status failed");
			}
		});
	}
	
	
	var _listQueryCriterias = new Array(); // 查询条件集合
	// 过滤检索
	function changeQueryConditions() {
		_listQueryCriterias = new Array(); // 重设检索条件
		// 编号
		var withdrawal_Id = $("#withdrawal_Id").val();
		if (withdrawal_Id != null && withdrawal_Id != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "t1.id";
			queryCriteria.condition = "=";
			queryCriteria.value = withdrawal_Id;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}

		// 分销商名字
		var distributor_Name = $("#distributor_Name").val();
		if (distributor_Name != null && distributor_Name != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "t2.name";
			queryCriteria.condition = "like";
			queryCriteria.value = distributor_Name;
			queryCriteria.isValueADigital = false;

			_listQueryCriterias.push(queryCriteria);
		}

		//返点
		var min_amount = $("#min_amount").val();
		if (min_amount != null && min_amount != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "t1.amount";
			queryCriteria.condition = ">=";
			queryCriteria.value = min_amount;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}
		var max_amount = $("#max_amount").val();
		if (max_amount != null && max_amount != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "t1.amount";
			queryCriteria.condition = "<=";
			queryCriteria.value = max_amount;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}
		
		
		//时间from
		var min_date=$("#min_date").val();
		if(min_date!=null&&min_date!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="TO_DAYS(t1.withdraw_date)-TO_DAYS(DATE_FORMAT('"+min_date+"','%Y/%m/%d'))";
			queryCriteria.condition=">=";
			queryCriteria.value=0;
			queryCriteria.isValueADigital=true;
			
			_listQueryCriterias.push(queryCriteria);
		}
		//时间to
		var max_date=$("#max_date").val();
		if(max_date!=null&&max_date!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="TO_DAYS(t1.withdraw_date)-TO_DAYS(DATE_FORMAT('"+max_date+"','%Y/%m/%d'))";
			queryCriteria.condition="<=";
			queryCriteria.value=0;
			queryCriteria.isValueADigital=true;
			
			_listQueryCriterias.push(queryCriteria);
		}
		
		//状态
		var withdraw_status=$("#searchStatus").val();
		if(withdraw_status!=null&&withdraw_status!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="t1.status";
			queryCriteria.condition="=";
			queryCriteria.value=withdraw_status;
			queryCriteria.isValueADigital=false;
			
			_listQueryCriterias.push(queryCriteria);
		}
	}
	
	function getQueryConditions(){
		return _listQueryCriterias;
	}

}

var formatDate = function(date) {
	var y = date.getFullYear();
	var m = date.getMonth() + 1;
	m = m < 10 ? '0' + m : m;
	var d = date.getDate();
	d = d < 10 ? ('0' + d) : d;
	return y + '-' + m + '-' + d;
};

Date.prototype.format = function(fmt) {
	var o = {
		"M+" : this.getMonth() + 1, // 月份
		"d+" : this.getDate(), // 日
		"h+" : this.getHours(), // 小时
		"m+" : this.getMinutes(), // 分
		"s+" : this.getSeconds(), // 秒
		"q+" : Math.floor((this.getMonth() + 3) / 3), // 季度
		"S" : this.getMilliseconds()
	// 毫秒
	};
	if (/(y+)/.test(fmt)) {
		fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
	}
	for ( var k in o) {
		if (new RegExp("(" + k + ")").test(fmt)) {
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
					: (("00" + o[k]).substr(("" + o[k]).length)));
		}
	}
	return fmt;
}