function DistributorListController() {

    this.init = init ;
    this.updateDistributor1 = updateDistributor1 ;
    this.edit = edit;
    this.updateDistributor2 = updateDistributor2 ;

    function init(){
        if(window.location.search != "") {
            // get current module id
            var moduleId = extractQueryString(window.location.search, "moduleId");
            LOGIC.Storage.set("current_module_id", moduleId);
        }
        createTable();
    }

    function createTable() {
    	var columnList = [{
    		"columnName":"id"
        }, {
            "columnName":"name"
        }, {
            "columnName":"phoneNumber"
        }, {
            "columnName":"idNumber"
        }, {
            "columnName":"commission"
        }, {
            "columnName":null
        },{
            "columnName":"disabled"
        },{
            "columnName":null
        }];
    	
        myTable = $("#datatable_distributors").DataTable({
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

//                request.data = {
//                    "pagingTool" : {
//                        "currentPage" : request.start / request.length + 1,
//                        "pageSize" : request.length
//                    },
//                    "queryCriterias": getQueryConditions(),
//                    "queryOrderBies" : [ {
//                        "columnName" : "id",
//                        "orderType" : "asc"
//                    } ]
//                };
                
                var queryOption = LOGIC.QueryTool.getDefaultQueryOption();

                queryOption.pagination.perPage = request.length;
                queryOption.pagination.current = request.start / request.length + 1;

                queryOption.orderBy.type = request.order[0].dir;
                queryOption.orderBy.name = columnList[request.order[0].column].columnName;
                queryOption.flag = true;
                queryOption.queryCriterias = getQueryConditions();
                request.data = {
                    queryOption: queryOption
                }
                
                return LOGIC.Services.DistributorService.get(request);
            },
            columns: [
                {
                    data: 'id', title: '编号', searchable: false, orderable: true, sWidth: '5%'
                },
                {
                    data: 'name', title: '姓名', searchable: false, orderable: true, sWidth: '8%'
                },
                {
                    data: 'phoneNumber', title: '手机号', searchable: false, orderable: true, sWidth: '12%'
                },
                /*{
                    data: 'idNumber', title: '身份证', searchable: false, orderable: true, sWidth: '15%'
                },*/
                {
                    data: 'commission', title: '提成', searchable: false, orderable: true, sWidth: '8%'
                },
                {
                    data: '', title: '期限', searchable: false, orderable: true, sWidth: '8%',
                    render: function (data, type, full, meta) {
                        var expiredDate = full.expiredDate ;
                        if(expiredDate == null){
                            return null ;
                        }
                        expiredDate = formatDate(new Date(expiredDate)) ;
                        return expiredDate ;
                    }
                },
                {
                    data: '', title: '状态', searchable: false, orderable: true, sWidth: '7%',
                    render: function (data, type, full, meta) {
                        var status = full.status ;

                        if(status=="_ES72"){
                            var expiredDate = new Date(full.expiredDate) ;
                            var now = new Date($.ajax({async: false}).getResponseHeader("Date"));
                            /*$.ajax({async: false,type:"OPTIONS",url:"/",complete:function(x){now = x.getResponseHeader("Date");}});*/
                            if(expiredDate!=null && now > expiredDate){
                                status = "_ES74" ;
                                //update distributor
                                $.cookie("distributor_id" , full.id);
                                LOGIC.Controllers.DistributorListController.updateDistributor1(status , null);
                            }
                        }

                        switch (status){
                            case "_ES71":
                                status = "<span class=\"label label-sm label-primary\">申请中<\/span>" ;
                                break;
                            case "_ES72":
                                status = "<span class=\"label label-sm label-success\">审核通过<\/span>" ;
                                break;
                            case "_ES73":
                                status = "<span class=\"label label-sm label-info\">审核失败<\/span>" ;
                                break;
                            case "_ES74":
                                status = "<span class=\"label label-sm label-default\">已过期<\/span>" ;
                                break;
                            default:
                                status = "<span class=\"label label-sm label-danger\">状态异常<\/span>" ;
                                break;
                        }
                        return status ;
                    }
                },
                {
                    data: '', title: '操作', searchable: false, orderable: true, sWidth: '10%',
                    render: function (data, type, full, meta) {
                        var button ;
                        if(full.status == "_ES71"){
                            button = '<button class="btn btn-xs default btn-editable" onclick="LOGIC.Controllers.DistributorListController.edit('+ full.id +')"  data-toggle="modal" data-target="#myModal"><i class=\"fa fa-pencil\"><\/i> 审核</button>' ;
                        }else {
                            button = '<button class="btn btn-xs default btn-editable" onclick="LOGIC.Controllers.DistributorListController.edit('+ full.id +')"  data-toggle="modal" data-target="#myModal"><i class=\"fa fa-pencil\"><\/i> 编辑</button>' ;
                        }
                        return button;
                    }
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

    function edit (distributorId){
        if(distributorId==null || distributorId==0){
            alert("distributor id is empty");
            return ;
        }
        $.cookie("distributor_id" , distributorId);
        LOGIC.Services.DistributorService.getDistributor({
            data: {
                id : distributorId
            }, success: function (data) {
                var customerId = data.customerId ;
                sessionStorage.setItem("distributor_status", data.status);

                $("#distributor_name").attr("value",data.name);
                $("#distributor_phone").attr("value",data.phoneNumber);
//                $("#distributor_id").attr("value",data.idNumber);
                $("#distributor_profession").attr("value",data.profession);
                $("#distributor_advantage").attr("value",data.advantage);

                LOGIC.Services.CustomerService.getCustomerDTO({
                    data: {
                        id : customerId
                    }, success: function (customerDTO) {
                        $("#user_loginId").attr("value",customerDTO.user == null ? "" : customerDTO.user.loginId);
                    }, error: function (xhr) {
                        console.log("get customerDTO by customer id failed") ;
                    }
                });

                if(data.status == "_ES71"){
                    //显示是否批准，及设置截止日期
                    document.getElementById("status").style.display = "none";
                    $("#distributor_commission").attr("value","");
                    document.getElementById("commission").style.display = "none";

                    if(document.getElementById("none").style.display == "block"){
                        document.getElementById("none").style.display = "none";
                        document.getElementById("fenxiao").style.display = "none";
                        document.getElementById("refuse").style.display = "inline-block";
                        document.getElementById("agree").style.display = "inline-block";
                    }

                    var html = '设置分销商截至日期<span class="required"> *  </span><input id="expired_year" type="text" style="border:1px solid lightgray;width:45px;"> 年 <input id="expired_month" type="text" style="border:1px solid lightgray;width:27px;"> 月 <input id="expired_date" type="text" style="border:1px solid lightgray;width:27px;"> 日 ' ;
                    /*var html = '<div class="form-group" ><label class="col-md-3 control-label" style="line-height: 32px; font-weight:bold;">设置截至日期<span class="required"> *  </span></label>' +
				                	'<div class="input-group date date-picker" data-date-format="yyyy/mm/dd">' + 
				                    	'<input type="text" id="max_date" class="form-control form-filter input-sm" readonly name="product_created_to " placeholder="To">' + 
			                    		'<span class="input-group-btn">' +
											'<button class="btn btn-sm default" type="button">' +
												'<i class="fa fa-calendar"></i>' +
											'</button>' +
										'</span>' +
									'</div>' +
								'</div>' ;*/
                    
                    $("#fenxiao").html(html) ;
                } else{
                    //显示可以设置的状态和截止日期
                    if(data.expiredDate==null){
                        var html = '设置分销商截至日期<span class="required"> *  </span><input id="expired_year" type="text" style="border:1px solid lightgray;width:45px;"> 年 <input id="expired_month" type="text" style="border:1px solid lightgray;width:27px;"> 月 <input id="expired_date" type="text" style="border:1px solid lightgray;width:27px;"> 日 ' ;
                    }else {
                        var expiredDate = new Date(data.expiredDate) ;
                        var y = expiredDate.getFullYear();
                        var m = expiredDate.getMonth() + 1;
                        m = m < 10 ? '0' + m : m;
                        var d = expiredDate.getDate();
                        d = d < 10 ? ('0' + d) : d;
                        var html = '设置分销商截至日期<span class="required"> * </span><input id="expired_year" type="text" style="border:1px solid lightgray;width:45px;" value="'+ y +'"> 年 <input id="expired_month" type="text" style="border:1px solid lightgray;width:27px;" value="'+ m +'"> 月 <input id="expired_date" type="text" style="border:1px solid lightgray;width:27px;" value="'+ d +'"> 日 ' ;
                    }
                    document.getElementById("status").style.display = "block";
                    $("#distributor_commission").attr("value",data.commission);
                    $("#fenxiao").html(html) ;
                    $("#distributor_status").val(data.status);
                    agree();
                }

            }, error: function (xhr) {
                console.log("get distributor by id failed") ;
            }
        });

    }

    function updateDistributor1 (status , expiredDate) {
        if(status==null || status==""){
            alert("status is empty");
            return ;
        }
        var distributorId = $.cookie("distributor_id") ;
        if(distributorId==null){
            alert("distributorId is null ") ;
            return ;
        }
        LOGIC.Services.DistributorService.updateDistributor({
            data: {
                id : distributorId ,
                status : status ,
                expiredDate : expiredDate
            }, success: function (data) {
                console.log("update distributor success");
                myTable.ajax.reload();
            }, error: function (xhr) {
                console.log("update distributor failed") ;
            }
        });
    }

    function updateDistributor2 () {
        var distributorId = $.cookie("distributor_id") ;
        var distributorStatus = sessionStorage.getItem("distributor_status") ;
        if(distributorId==null || distributorStatus==null){
            alert("distributor id is null or distributor status is null ") ;
            return ;
        }

        var distributor_name = document.getElementById("distributor_name").value ;
        var distributor_phone = document.getElementById("distributor_phone").value ;
//        var distributor_id = document.getElementById("distributor_id").value ;
        var distributor_profession = document.getElementById("distributor_profession").value ;
        var distributor_advantage = document.getElementById("distributor_advantage").value ;
        var distributor_commission = document.getElementById("distributor_commission").value ;
        var expired_year = document.getElementById("expired_year").value ;
        var expired_month = document.getElementById("expired_month").value ;
        var expired_date = document.getElementById("expired_date").value ;
        var distributor_status ;

        if(distributorStatus == "_ES71"){
            distributor_status = "_ES72" ;
        }else {
            distributor_status = $("#distributor_status option:selected").val() ;
        }

        if(distributor_name==null || distributor_name=="" || distributor_phone==null || distributor_phone=="" || distributorStatus==null || distributorStatus=="" ){
            alert("必填信息不能为空！");
            return ;
        }

        var expiredDate = null ;

        if(distributor_status!="_ES73" && distributor_status!="_ES71"){
            if( expired_year==null || expired_year=="" || expired_month==null || expired_month=="" || expired_date==null || expired_date==""){
                alert("期限不能为空！");
                return ;
            }
            var re = /^[0-9]+.?[0-9]*$/ ; //判断是否为数字
            if(distributor_commission==null || !re.test(distributor_commission) || isNaN(distributor_commission)){
                alert("输入的提成格式错误");
                return ;
            }

            if(distributor_commission>1 || distributor_commission<0){
                alert("请输入大于等于0且小于等于1的提成数");
                return ;
            }

            if(isNaN(expired_year) || isNaN(expired_month) || isNaN(expired_date) || expired_year<=0 || expired_month<=0 || expired_month>12 || expired_date<=0 || expired_date>31){
                alert("日期格式错误！");
                return ;
            }

            expiredDate = new Date(Date.parse(expired_year + "-" + expired_month + "-" + expired_date + " 23:59:59")) ;
        }

        $('#myModal').modal('toggle');
        LOGIC.Services.DistributorService.updateDistributor({
            data: {
                id : distributorId ,
                name : distributor_name ,
                phoneNumber : distributor_phone ,
                profession : distributor_profession ,
                advantage : distributor_advantage ,
                status : distributor_status ,
                expiredDate : expiredDate ,
                commission : distributor_commission
            }, success: function (data) {
                myTable.ajax.reload();
                console.log("update distributor success");
            }, error: function (xhr) {
                console.log("update distributor failed") ;
                alert("update error ！");
            }
        });
    }

    
    function getQueryConditions(){
    	var listQueryCriterias=new Array();
    	var name=$('#txtSearch').val();
    	if(name!=null && name!=""){
    		var queryCriteria=new Object();
    		
    		queryCriteria.connection="and";
    		queryCriteria.key="name";
    		queryCriteria.condition="like";
    		queryCriteria.value=name;
    		queryCriteria.isValueADigital=false;
    		
    		listQueryCriterias.push(queryCriteria);
    	}
    	return listQueryCriterias;
    }

    $("body").on("keypress","#txtSearch",function(e){
    	if (e.which == 13) {
    		myTable.ajax.reload();
          return false;
        }
    })
}

var formatDate = function (date) {
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    m = m < 10 ? '0' + m : m;
    var d = date.getDate();
    d = d < 10 ? ('0' + d) : d;
    return y + '-' + m + '-' + d;
};

