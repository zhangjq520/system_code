function DeviceListController() {
    this.init = init;
    this.showEditDevice = showEditDevice;

    var deviceTableList = null;
    var startItems = null;
    var moduleId = null;

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "设备管理");
        if (window.location.search != '') {
            moduleId = window.location.search.split("=")[1];
            var userId = LOGIC.Storage.get('user_id');
            var data = {
                userId: userId,
                moduleId: moduleId
            }
            LOGIC.Services.PermissionService.getModulePermission({
                data: data,
                success: function(data, textStatus, xhr) {
                    var permission = data.p1;
                    createTable(permission);
                },
                error: function(jqXHR) {

                }

            })
        }
    }

    function createTable(permission) {
        deviceTableList = $('#deviceTable');
        var columns = [{
            "data": "device_os"
        }, {
            "data": "device_os_version"
        }, {
            "data": "device_serial"
        }, {
            "data": "device_brand"
        }, {
            "data": "device_model"
        }, {
            "data": "device_cpu"
        }, {
            "data": "device_ram"
        }, {
            "data": "purchase_date"
        }, {
            "data": "user_id"
        }, {
            "data": "user_full_name"
        }, {
            "data": "user_role_name"
        }, {
            "data": "user_org_name"
        }, {
            "data": "simIccid"
        }, {
            "data": "phoneNumber"
        }, {
            "data": null
        }, {
            "data": null
        }];

        deviceTableList.dataTable({
            serverSide: true,
            processing: true,
            dom: "<'row' <'col-md-12'>><'row'<'col-xs-5 col-sm-3'l><'col-xs-7 col-sm-9'<'col-lg-11 col-md-10 col-sm-10'f><'col-lg-1 col-md-2 col-sm-2'B>>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable
            buttons: [
                'excel'
            ],
            ajax: function(request, drawCallback, settings) {

                var success = request.success || function() {};
                var error = request.error || function() {};

                request.success = function(data, textStatus, xhr) {
                    var responseData = {
                        draw: request.draw,
                        recordsTotal: xhr.getResponseHeader("total_count"),
                        recordsFiltered: xhr.getResponseHeader("total_count"), // this may need to adjust couldnt get what it actually mean
                        data: data
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

                var searchKeys = {}
                for (var i = request.columns.length - 1; i >= 0; i--) {

                    var columnInfo = request.columns[i];
                    if (columnInfo.data != null && columnInfo.data != '' && request.search.value != '') {
                        searchKeys[columnInfo.data] = request.search.value;
                    }
                };

                queryOption.search = searchKeys;

                request.data = {
                    queryOption: queryOption
                }

                return LOGIC.Services.DeviceService.getDevices(request);
            },
            columns: columns,
            columnDefs: [{
                render: function(obj) {
                    if (!_.isEmpty(obj.status)) {
                        switch (obj.status) {
                            case '_A91':
                                return '<span class="label label-sm label-primary">有效</span>';
                            case '_A92':
                                return '<span class="label label-sm label-default">无效</span>';
                            default:
                                return '';
                        }
                        
                    }
                },
                targets: [14]
            }, {
                render: function(obj) {
                    return LOGIC.ToshibaCommonTools.formatDate(obj, 'toDay');
                },
                targets: [7]

            }, {
                render: function(obj) {
                    var id = obj.id;
                    if (permission == "1") {

                        return '<button class="btn btn-xs btn-circle blue edit" data-toggle="modal" onclick="' + 'LOGIC.Controllers.DeviceListController.showEditDevice(\'' + id +
                            '\')"><i class="fa fa-edit"></i> 编辑</button>'
                    } else {
                        return '';
                    }
                },
                targets: [15]
            }, {
                orderable: false,
                targets: [0, 15]
            }, {
                searcheable: false,
                targets: [0, 15]
            }],
            oLanguage: {
                sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },

            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            pageLength: 10,
            order: [
                [1, "asc"]
            ]
        });

        var tableWrapper = jQuery('#deviceTable_wrapper');
        var tableColumnToggler = $('#deviceTable_toggler');

        /* handle show/hide columns*/
        $('input[type="checkbox"]', tableColumnToggler).change(function() {
            /* Get the DataTables object again - this is not a recreation, just a get of the object */
            var iCol = parseInt($(this).attr("data-column"));
            var bVis = deviceTableList.fnSettings().aoColumns[iCol].bVisible;
            deviceTableList.fnSetColumnVis(iCol, (bVis ? false : true));
        });

        // deviceTableList.find('.group-checkable').change(function() {
        //     var set = jQuery(this).attr("data-set");
        //     var checked = jQuery(this).is(":checked");
        //     jQuery(set).each(function() {
        //         if (checked) {
        //             $(this).attr("checked", true);
        //         } else {
        //             $(this).attr("checked", false);
        //         }
        //     });
        //     jQuery.uniform.update(set);
        // });


        $('.dataTables_filter input[type=search]').unbind();

        // press enter to search
        $('.dataTables_filter input[type=search]').keypress(function(e) {
            if (e.which == 13) {
                filterDeviceList();
                return false;
            }
        });

        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        deviceTableList.fnSetColumnVis(0, false);
        deviceTableList.fnSetColumnVis(1, false);
        deviceTableList.fnSetColumnVis(3, false);
        deviceTableList.fnSetColumnVis(4, false);
        deviceTableList.fnSetColumnVis(5, false);
        deviceTableList.fnSetColumnVis(6, false);

        deviceTableList.on('click', ' tbody td .row-details', function() {
            var nTr = $(this).parents('tr')[0];
            if (deviceTableList.fnIsOpen(nTr)) {
                /* This row is already open - close it */
                $(this).addClass("row-details-close").removeClass("row-details-open");
                deviceTableList.fnClose(nTr);
            } else {
                /* Open this row */
                $(this).addClass("row-details-open").removeClass("row-details-close");
                deviceTableList.fnOpen(nTr, fnFormatDetails(deviceTableList, nTr), 'details');
            }
        });
    }

    function filterDeviceList() {
        deviceTableList.fnFilter($(".dataTables_filter input[type=search]").val());
    }


    function showEditDevice(id) {
        window.location.href = 'device_edit.html?moduleId=' + moduleId + '&id=' + id;
    }
}
