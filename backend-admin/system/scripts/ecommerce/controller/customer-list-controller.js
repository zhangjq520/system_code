function CustomerListController() {

    this.init = init ;
    this.editCustomer = editCustomer ;
    this.updateCustomer = updateCustomer ;
    this.updateCustomer2 = updateCustomer2 ;

    function init(){
        if(window.location.search != "") {
            // get current module id
            var moduleId = extractQueryString(window.location.search, "moduleId");
            LOGIC.Storage.set("current_module_id", moduleId);
        }
        createTable();
    }

    function createTable() {
        myTable = $("#datatable_members").DataTable({
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

                request.data = {
                    "pagingTool" : {
                        "currentPage" : request.start / request.length + 1,
                        "pageSize" : request.length
                    },
                    "queryCriterias": [
                        {
                            connection: "and",
                            key: "t2.login_id",
                            condition: "like",
                            value: "%" + $('#txtSearch').val() + "%" ,
                            isValueADigital: false
                        }
                    ]
                };
                //return ;
                return LOGIC.Services.CustomerService.getCustomerDTOList(request);
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
                    data: 'customer.id', title: '编号', searchable: false, orderable: true, sWidth: '5%'
                },
                {
                    data: 'user.loginId', title: '用户名', searchable: false, orderable: true, sWidth: '8%'
                },
                {
                    data: '', title: '姓名', searchable: false, orderable: true, sWidth: '8%',
                    render: function (data, type, full, meta) {
                        var firstName = full.personalInfo.firstName == null ? "" : full.personalInfo.firstName ;
                        var lastName = full.personalInfo.lastName == null ? "" : full.personalInfo.lastName ;
                        return lastName + " " + firstName ;
                    }

                },
                {
                    data: '', title: '开通日期', searchable: false, orderable: true, sWidth: '13%',
                    render: function (data, type, full, meta) {
                        var createdDtm = full.customer.createdDtm ;
                        if(createdDtm==null){
                            return "" ;
                        }
                        return formatDate(new Date(createdDtm)) ;
                    }
                },
                {
                    data: '', title: '状态', searchable: false, orderable: true, sWidth: '7%',
                    render: function (data, type, full, meta) {
                        if(full.customer.deleted){
                            return "<span class=\"label label-sm label-default\">已禁用<\/span>" ;
                        }else {
                            return "<span class=\"label label-sm label-success\">正常<\/span>" ;
                        }
                    }
                },
                {
                    data: '',
                    render: function (data, type, full, meta) {
                        var editHtml = '<li><a onclick="LOGIC.Controllers.CustomerListController.editCustomer('+ full.customer.id +')" data-toggle="modal" data-target="#myModal" >' +
                        '<i class="fa fa-search"></i> 详情</a></li>';
                        var deleteHtml ;

                        if(full.customer.deleted){
                            deleteHtml = '<li><a onclick="LOGIC.Controllers.CustomerListController.updateCustomer2(' +
                                '\'' + parseInt(full.customer.id) + '\'' +
                                ' , 0)"><i class="fa fa-trash-o"></i> 解除禁用</a></li>';
                        }else {
                            deleteHtml = '<li><a onclick="LOGIC.Controllers.CustomerListController.updateCustomer2(' +
                                '\'' + parseInt(full.customer.id) + '\'' +
                                ' , 1 )"><i class="fa fa-trash-o"></i> 禁用</a></li>';
                        }
                        var html = '<div class="config-btn btn-group">' +
                            '<a class="btn btn-xs btn-circle btn-custom-1" href="javascript:;" data-toggle="dropdown" data-close-others="true">' +
                            '<i class="fa fa-cog"></i><i class="fa fa-angle-down"></i>' +
                            '</a>' +
                            '<ul class="dropdown-menu pull-right">' +
                            editHtml +
                            deleteHtml +
                            '</ul>' +
                            '</div>';

                        return html;
                    },
                    searchable: false, orderable: false, sWidth: '2%'
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

    function editCustomer(customerId){
        if(customerId==null || customerId==0){
            alert("customerId is empty");
            return ;
        }
        LOGIC.Services.CustomerService.getCustomerDTO({
            data: {
                id : customerId
            }, success: function (data) {
                $.cookie("customerId" , data.customer.id);
                $("#loginId").attr("value",data.user.loginId);
                $("#wechat_id").attr("value",data.customer.wechatId);
                $("#firstName").attr("value",data.personalInfo.firstName);
                $("#lastName").attr("value",data.personalInfo.lastName);
                $("#email").attr("value",data.personalInfo.emailPrimary);
                $("#createDtm").attr("value", new Date(data.customer.createdDtm).format("yyyy-MM-dd hh:mm:ss") );
                //$("#locale").attr("value",data.user.defaultLocale == "_A21" ? "中文" : (data.user.defaultLocale == "_A22" ? "英语" : "其他"));
            }, error: function (xhr) {
                console.log("get customerDTO failed") ;
            }
        });
    }

    function updateCustomer(){
        var firstName = document.getElementById("firstName").value ;
        var lastName = document.getElementById("lastName").value ;
        var email = document.getElementById("email").value ;

        if(firstName==null || firstName=="" || lastName==null || lastName=="" ){
            alert("请输入完整信息");
            return ;
        }

        if (email!=null && email != "") {
            var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
            if (!reg.test(email)) {
                alert("邮箱格式不正确，请重新输入！");
                document.getElementById("email").focus();
                return ;
            }
        }

        var customerId = $.cookie("customerId") ;
        var personalInfoId ;

        LOGIC.Services.CustomerService.getCustomer({
            async : false ,
            data: {
                id : customerId
            }, success: function (data) {
                personalInfoId = data.personalProfileId ;
            }, error: function (xhr) {
                console.log("get customer failed") ;
            }
        });

        if(personalInfoId==null || personalInfoId==0){
            alert("获取personInfo id 失败");
            return ;
        }
        $('#myModal').modal('toggle');
        LOGIC.Services.CustomerService.updatePersonalInfo({
            data: {
                id : personalInfoId ,
                firstName : firstName ,
                lastName : lastName ,
                emailPrimary : email
            }, success: function (data) {
                myTable.ajax.reload();
                console.log("update customerInfo success");
            }, error: function (xhr) {
                console.log("update personalInfo failed") ;
            }
        });
    }

    function updateCustomer2(customerId , deleted){
        if(customerId==null || deleted==null){
           alert("customerId or deleted is empty");
           return ;
        }

        LOGIC.Services.CustomerService.updateCustomer({
            data: {
                id : customerId ,
                deleted : deleted
            }, success: function (data) {
                myTable.ajax.reload();
                console.log("update customerInfo success");
            }, error: function (xhr) {
                console.log("update personalInfo failed") ;
            }
        });
    }

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