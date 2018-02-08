function DistributionListController() {

	this.init = init;
	this.editDistribution = editDistribution;
	this.updateDistribution = updateDistribution;

	var mytable=null;
	
	function init() {
		if (window.location.search != "") {
			// get current module id
			var moduleId = extractQueryString(window.location.search,
					"moduleId");
			LOGIC.Storage.set("current_module_id", moduleId);
		}
		createTable();

		// 检索条件
		$("body").on("click", "#btnSearch", function() {
			changeQueryConditions();
			myTable.DataTable().ajax.reload();
		});
		
		
		$("body").on("click","#list_btn_reset",function(){
			$("#datatable_members").find(".filter input").val("");
//			$("#dis_Min_date").attr("value","");
//			$("#dis_Max_date").attr("value","");
			changeQueryConditions();
		})
	}

	function createTable() {
		
		var columns= [
			{
				data : 'distributionLog.id',
				searchable : false,
				orderable : true,
				columnName:"id"
			},
			{
				data : 'distributor.name',
				searchable : false,
				orderable : false,
				columnName:"distributorName"
			},
			{
				data : 'productList.name',
				searchable : false,
				orderable : false,
				columnName:"productName"
			},
			{
				data : 'productList.sku',
				searchable : false,
				orderable : false,
				columnName:"sku"
			},
			{
				data : 'distributionLog.successCount',
				searchable : false,
				orderable : false,
				columnName:"discount"
			},
			{
				data : 'distributionLog.totalAmount',
				searchable : false,
				orderable : false,
				columnName:"total_amount"
			},
			{
				data : '',
				searchable : false,
				orderable : false,
				render : function(data, type, full,
						meta) {
					var sharedDate = full.distributionLog.sharedDate;
					if (sharedDate == null) {
						return "";
					}
					return formatDate(new Date(
							sharedDate));
				},
				columnName:null
			},
			{
				data : '',
				render : function(data, type, full,
						meta) {
					/*
					 * return '<button
					 * onclick="LOGIC.Controllers.DistributionListController.editDistribution('+
					 * full.distributionLog.id +')"
					 * class="btn btn-xs default
					 * btn-editable" data-toggle="modal"
					 * data-target="#myModal" >' + '<i
					 * class="fa fa-search"></i> 编辑</button>';
					 */

					var editHtml = '<li><a onclick="LOGIC.Controllers.DistributionListController.editDistribution('
							+ full.distributionLog.id
							+ ')" data-toggle="modal" data-target="#myModal" >'
							+ '<i class="fa fa-search"></i> 编辑</a></li>';
					var detailHtml = '<li><a href="distribution_detail_list.html?sharedCode='
							+ full.distributionLog.sharedCode
							+ '" >'
							+ '<i class="fa fa-search"></i> 分销详情</a></li>';

					var html = '<div class="config-btn btn-group">'
							+ '<a class="btn btn-xs btn-circle btn-custom-1" href="javascript:;" data-toggle="dropdown" data-close-others="true">'
							+ '<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>'
							+ '</a>'
							+ '<ul class="dropdown-menu pull-right">'
							+ editHtml
							+ detailHtml
							+ '</ul>' + '</div>';

					return html;
				},
				searchable : false,
				orderable : false,
				columnName:null
			} ];
		myTable = $("#datatable_members")
				.dataTable(
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

								request.success = function(data, textStatus,
										xhr) {
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

//								request.data = {
//									"pagingTool" : {
//										"currentPage" : request.start
//												/ request.length + 1,
//										"pageSize" : request.length
//									},
//									"queryCriterias" : [ {
//										connection : "and",
//										key : "t2.name",
//										condition : "like",
//										value : "%" + $('#txtSearch').val()
//												+ "%",
//										isValueADigital : false
//									} ],
//									"queryOrderBies" : [ {
//										"columnName" : "t1.shared_date",
//										"orderType" : "asc"
//									} ]
//								};

								var queryOption = LOGIC.QueryTool.getDefaultQueryOption();

					            queryOption.pagination.perPage = request.length;
				                queryOption.pagination.current = request.start / request.length + 1;

				                queryOption.orderBy.type = request.order[0].dir;
				                queryOption.orderBy.name = columns[request.order[0].column].columnName;
				                queryOption.flag = true;
				                queryOption.queryCriterias = getQueryConditions();
				                request.data = {
				                    queryOption: queryOption
				                }
								
								return LOGIC.Services.DistributionService
										.getDistributionDTOList(request);
							},

							// columns: [
							// {
							// data: 'distributionLog.id', title: '编号',
							// searchable: false, orderable: false, sWidth: '5%'
							// },
							// {
							// data: 'distributor.name', title: '分销商',
							// searchable: false, orderable: false, sWidth: '8%'
							// },
							// {
							// data: 'productList.name', title: '分销产品',
							// searchable: false, orderable: false, sWidth:
							// '10%'
							// },
							// {
							// data: 'productList.sku', title: '分销产品SKU',
							// searchable: false, orderable: false, sWidth: '8%'
							// },
							// {
							// data: 'distributionLog.successCount', title:
							// '分销数', searchable: false, orderable: false,
							// sWidth: '8%'
							// },
							// {
							// data: 'distributionLog.totalAmount', title:
							// '返点总额(元)', searchable: false, orderable: false,
							// sWidth: '8%'
							// },
							// {
							// data: '', title: '分销日期', searchable: false,
							// orderable: false, sWidth: '8%',
							// render: function (data, type, full, meta) {
							// var sharedDate = full.distributionLog.sharedDate
							// ;
							// if(sharedDate==null){
							// return "" ;
							// }
							// return formatDate(new Date(sharedDate)) ;
							// }
							// },
							// {
							// data: '', title: '操作',
							// render: function (data, type, full, meta) {
							// /*return '<button
							// onclick="LOGIC.Controllers.DistributionListController.editDistribution('+
							// full.distributionLog.id +')" class="btn btn-xs
							// default btn-editable" data-toggle="modal"
							// data-target="#myModal" >' +
							// '<i class="fa fa-search"></i> 编辑</button>';*/
							//
							// var editHtml = '<li><a
							// onclick="LOGIC.Controllers.DistributionListController.editDistribution('+
							// full.distributionLog.id +')" data-toggle="modal"
							// data-target="#myModal" >' +
							// '<i class="fa fa-search"></i> 编辑</a></li>' ;
							// var detailHtml = '<li><a
							// href="distribution_detail_list.html?sharedCode='+
							// full.distributionLog.sharedCode + '" >' +
							// '<i class="fa fa-search"></i> 分销详情</a></li>' ;
							//
							// var html = '<div class="config-btn btn-group">' +
							// '<a class="btn btn-xs btn-circle btn-custom-1"
							// href="javascript:;" data-toggle="dropdown"
							// data-close-others="true">' +
							// '<i class="fa fa-cog"></i><i class="fa
							// fa-angle-down"></i>' +
							// '</a>' +
							// '<ul class="dropdown-menu pull-right">' +
							// editHtml +
							// detailHtml +
							// '</ul>' +
							// '</div>';
							//
							// return html;
							// },
							// searchable: false, orderable: false, sWidth: '2%'
							// }
							// ],

							columns :columns,

							oLanguage : {
								"sInfoEmpty" : "",
								"sZeroRecords" : "没有符合条件的记录",
								sSearch : '<span id="sSearch">搜索:</span>',
								sInfo : '<span id="msg_show">显示</span>'
										+ " _START_ "
										+ '<span id="msg_to">到</span>'
										+ " _END_ "
										+ '<span id="msg_of">共</span>'
										+ " _TOTAL_ "
										+ '<span id="msg_entries">条记录 </span>',
								sLengthMenu : "_MENU_ "
										+ '<span id="recordsId">记录</span>'
							}
						});
	}

	function editDistribution(distributionId) {
		if (distributionId == null || distributionId == 0) {
			alert("distributionId is empty");
			return;
		}
		LOGIC.Services.DistributionService.getDistributionDTOList({
			data : {
				"pagingTool" : {
					"currentPage" : 0,
					"pageSize" : 1
				},
				"queryCriterias" : [ {
					"connection" : "and",
					"key" : "id",
					"condition" : "=",
					"value" : distributionId,
					"isValueADigital" : true
				} ]
			},
			success : function(data) {
				if (data == null) {
					console.log("distributionLogDTO is not exist");
					return;
				}

				var distributionDTO = data[0];
				$("#distribution_distributor_name").attr("value",
						distributionDTO.distributor.name);
				$("#distribution_product_name").attr("value",
						distributionDTO.productList.name);
				$("#distribution_product_sku").attr("value",
						distributionDTO.productList.sku);
				$("#distribution_shareCode").attr(
						"value",
						LOGIC.Configuration.serverUrl
								+ "store/product-detail.jsp?id="
								+ distributionDTO.productList.id
								+ "&sharedCode="
								+ distributionDTO.distributionLog.sharedCode);
				$("#distribution_shareDate").attr(
						"value",
						new Date(distributionDTO.distributionLog.sharedDate)
								.format("yyyy-MM-dd hh:mm:ss"));
				$("#distribution_count").attr("value",
						distributionDTO.distributionLog.successCount);
				$("#distribution_total").attr("value",
						distributionDTO.distributionLog.totalAmount);

				$("#yes").attr(
						"onclick",
						"LOGIC.Controllers.DistributionListController.updateDistribution("
								+ distributionDTO.distributionLog.id + ")");
			},
			error : function(xhr) {
				console.log("get distributionLogDTO failed");
			}
		});
	}

	function updateDistribution(distributionId) {
		if (distributionId == null || distributionId == 0) {
			alert("distributionId is empty");
			return;
		}

		// var pushMoney =
		// document.getElementById("distribution_pushMoney").value ;
		var count = parseInt(document.getElementById("distribution_count").value);
		var totalAmount = parseFloat(document
				.getElementById("distribution_total").value);

		var re = /^[0-9]+.?[0-9]*$/; // 判断是否为数字
		var re2 = /^[0-9]+[0-9]*]*$/; // 判断是否为整数

		if (count == null || !re2.test(count) || isNaN(count)) {
			alert("输入的分销数量格式有误");
			return;
		}

		if (totalAmount == null || !re.test(totalAmount) || isNaN(totalAmount)) {
			alert("输入的总返点格式有误");
			return;
		}

		$('#myModal').modal('toggle');

		LOGIC.Services.DistributionService.updateDistribution({
			data : {
				id : distributionId,
				successCount : count,
				totalAmount : totalAmount
			},
			success : function(data) {
				if (data.STATUS == -2) {
					alert("更新数据失败");
					return;
				} else {
					myTable.ajax.reload();
					console.log("update distributionLog success");
				}
			},
			error : function(xhr) {
				console.log("update distributionLog failed");
			}
		});
	}

	var _listQueryCriterias = new Array(); // 查询条件集合
	// 过滤检索
	function changeQueryConditions() {
		_listQueryCriterias = new Array(); // 重设检索条件
		// 编号
		var disId = $("#dis_Id").val();
		if (disId != null && disId != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "id";
			queryCriteria.condition = "=";
			queryCriteria.value = disId;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}

		// 分销商名字
		var disName = $("#dis_Name").val();
		if (disName != null && disName != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "distributorName";
			queryCriteria.condition = "like";
			queryCriteria.value = disName;
			queryCriteria.isValueADigital = false;

			_listQueryCriterias.push(queryCriteria);
		}

		// 分销产品
		var disProduct = $("#dis_Product").val();
		if (disProduct != null && disProduct != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "productName";
			queryCriteria.condition = "like";
			queryCriteria.value = disProduct;
			queryCriteria.isValueADigital = false;

			_listQueryCriterias.push(queryCriteria);
		}

		// 分销产品SKU
		var disProductSKU = $("#dis_ProductSKU").val();
		if (disProductSKU != null && disProductSKU != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "sku";
			queryCriteria.condition = "like";
			queryCriteria.value = disProductSKU;
			queryCriteria.isValueADigital = false;

			_listQueryCriterias.push(queryCriteria);
		}

		// 分销数
		var disMinCount = $("#dis_Min_Count").val();
		if (disMinCount != null && disMinCount != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "discount";
			queryCriteria.condition = ">=";
			queryCriteria.value = disMinCount;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}
		var disMaxCount = $("#dis_Max_Count").val();
		if (disMaxCount != null && disMaxCount != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "discount";
			queryCriteria.condition = "<=";
			queryCriteria.value = disMaxCount;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}
		
		//返点
		var disMinReturn = $("#dis_Min_Return").val();
		if (disMinReturn != null && disMinReturn != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "total_amount";
			queryCriteria.condition = ">=";
			queryCriteria.value = disMinReturn;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}
		var disMaxReturn = $("#dis_Max_Return").val();
		if (disMaxReturn != null && disMaxReturn != "") {
			var queryCriteria = new Object();

			queryCriteria.connection = "and";
			queryCriteria.key = "total_amount";
			queryCriteria.condition = "<=";
			queryCriteria.value = disMaxReturn;
			queryCriteria.isValueADigital = true;

			_listQueryCriterias.push(queryCriteria);
		}
		
		
		//下单时间from
		var dis_Min_date=$("#dis_Min_date").val();
		if(dis_Min_date!=null&&dis_Min_date!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="TO_DAYS(shared_date)-TO_DAYS(DATE_FORMAT('"+dis_Min_date+"','%Y/%m/%d'))";
			queryCriteria.condition=">=";
			queryCriteria.value=0;
			queryCriteria.isValueADigital=true;
			
			_listQueryCriterias.push(queryCriteria);
		}
		//下单时间to
		var dis_Max_date=$("#dis_Max_date").val();
		if(dis_Max_date!=null&&dis_Max_date!=""){
			var queryCriteria=new Object();
			
			queryCriteria.connection="and";
			queryCriteria.key="TO_DAYS(shared_date)-TO_DAYS(DATE_FORMAT('"+dis_Max_date+"','%Y/%m/%d'))";
			queryCriteria.condition="<=";
			queryCriteria.value=0;
			queryCriteria.isValueADigital=true;
			
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