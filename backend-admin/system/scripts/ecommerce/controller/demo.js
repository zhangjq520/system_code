function OrderListController() {
	this.createTable=createTable;
	
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
				
				request.data = {
				  "pagingTool": {
				    "currentPage": 0,
				    "pageSize": 10
				  }
				}
				
				return LOGIC.Services.OrderListService.get(request);
			},
			columns: [
				{
					data: 'name', title: 'Name', searchable: false, orderable: true, sWidth: '15%'
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
