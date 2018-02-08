function LogListController() {
    this.init = init;
    var logListTable = null;

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "日志管理");

        createTable();
        LOGIC.Services.LogService.getInitData({
            success: function(data) {},
            error: function(jqXHR) {

            }
        });
    }

    function createTable() {

        logListTable = $('#logTable');
        var columns = [{
            "data": "id"
        }, {
            "data": "created_dtm"
        }, {
            "data": "ip"
        }, {
            "data": "loginId"
        }, {
            "data": "type"
        }, {
            "data": "levels"
        }, {
            "data": "class_info"
        }, {
            "data": "message"
        }];

        var columnsearch = [{
            "data": "id"
        }, {
            "data": "created_dtm"
        }, {
            "data": "ip"
        }, {
            "data": "created_by"
        }, {
            "data": "type"
        }, {
            "data": "levels"
        }, {
            "data": "class_info"
        }, {
            "data": "message"
        }];
        logListTable.dataTable({
            serverSide: true,
            processing: true,
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

                    var columnInfo = columnsearch[i];
                    // COLUMN LEVEL FILTERING BEGIN
                    // if (columnInfo.data != '' && columnInfo.search.value != '') {
                    //     searchKeys[columnInfo.data] = columnInfo.search.value;
                    // }
                    // COLUMN LEVEL FILTERING END

                    // GENERAL FILTERING BEGIN
                    if (columnInfo.data != null && columnInfo.data != '' && request.search.value != '') {
                        searchKeys[columnInfo.data] = request.search.value;
                    }
                    // GENERAL FILTERING END
                };
                //console.log(searchKeys)
                queryOption.search = searchKeys;

                request.data = {
                    queryOption: queryOption
                }

                return LOGIC.Services.LogService.getLogs(request);
            },
            columns: columns,
            columnDefs: [{
                orderable: false,
                targets: [0]
            }],
            lengthMenu: [
                [10, 20, 100],
                [10, 20, 100] // change per page values here
            ],
            // // set the initial value
            pageLength: 10,
            oLanguage: {
                // sSearch: '<button class="btn green-haze btn-circle" id="sSearch" onclick="LOGIC.Controllers.UserListController.filterUserList()"> 搜索 <i class="fa fa-search"></i></button>',
                sSearch: '<span id="sSearch">搜索:</span>',
                sInfo: '<span id="msg_show">显示</span>' + " _START_ " + '<span id="msg_to">到</span>' + " _END_ " + '<span id="msg_of">共</span>' + " _TOTAL_ " + '<span id="msg_entries">条记录 </span>',
                sLengthMenu: "_MENU_ " + '<span id="recordsId">记录</span>'
            },
            order: [
                [1, "asc"]
            ]
        });

        $('.dataTables_filter input[type=search]').unbind();

        // press enter to search
        $('.dataTables_filter input[type=search]').keypress(function(e) {
            if (e.which == 13) {
                filterLogList();
                return false;
            }
        });

        var tableWrapper = jQuery('#logTable_wrapper');

        var tableColumnToggler = $('#logTable_toggler');

        /* modify datatable control inputs */
        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown



        logListTable.fnSetColumnVis(0, false);
        logListTable.fnSetColumnVis(5, false);
        logListTable.fnSetColumnVis(6, false);

        logListTable.on('click', ' tbody td .row-details', function() {
            var nTr = $(this).parents('tr')[0];
            if (logListTable.fnIsOpen(nTr)) {
                /* This row is already open - close it */
                $(this).addClass("row-details-close").removeClass("row-details-open");
                logListTable.fnClose(nTr);
            } else {
                /* Open this row */
                $(this).addClass("row-details-open").removeClass("row-details-close");
                logListTable.fnOpen(nTr, fnFormatDetails(logListTable, nTr), 'details');
            }
        });

        /* handle show/hide columns*/
        $('input[type="checkbox"]', tableColumnToggler).change(function() {
            /* Get the DataTables object again - this is not a recreation, just a get of the object */
            var iCol = parseInt($(this).attr("data-column"));
            var bVis = logListTable.fnSettings().aoColumns[iCol].bVisible;
            logListTable.fnSetColumnVis(iCol, (bVis ? false : true));
        });


    }

    function filterLogList() {
        logListTable.fnFilter($(".dataTables_filter input[type=search]").val());
    }
}