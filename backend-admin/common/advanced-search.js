function AdvancedSearch() {
	this.handleAdvancedSearchActions = handleAdvancedSearchActions;
	this.handleAdvancedSearchStrings = handleAdvancedSearchStrings;
	this.getAdvancedSearchStrings = getAdvancedSearchStrings;
	this.fileterTaskselect = fileterTaskselect;

	function fileterTaskselect(tableId, queryStrings) {
		var table = $('#' + tableId).dataTable();
		//console.log('aaa');
		table.fnFilter(queryStrings);

	}

	function handleAdvancedSearchActions(tableId) {
		$('#search_swither').on('switchChange.bootstrapSwitch', function(event, state) {
			switch (state) {
				case false: // advanced
					$('.changeselect').selectpicker('deselectAll');
					$('.basic_search').hide();
					$('.advanced_search').show();
					break;
				case true: // basic
					fileterTaskselect(tableId, ' ');
					$('#searchStrings').empty();
					$('.basic_search').show();
					$('.advanced_search').hide();
					break;
			}
		});

		$('#clearSearch').click(function() {
			fileterTaskselect(tableId, ' ');
		});

		$('input[type="search"]').keypress(function(e) {
			if (e.which == 13) {
				getAdvancedSearchStrings();
				return false;
			}
		});
	}

	function getAdvancedSearchStrings() {
		// get all search-query divs
		var searchQueryDivs = $('#advanced_search_modal').find('.search-query');
		var queryString = '';
		var searchValue;
		var queryCriterias = [];

		try {
			for (var i = 0; i < searchQueryDivs.length; i++) {
				var select2Divs = $(searchQueryDivs[i]).find('select');
				searchValue = $(searchQueryDivs[i]).find('input[class="form-control"]').val();
				var isDate = $(searchQueryDivs[i]).find('select option:selected').attr('data-date');
				for (var j = 0; j < select2Divs.length; j++) {
					queryString += $(select2Divs[j]).val() + ':';
				}
				queryString += searchValue + ':' + isDate + ',';
			}

			fileterTaskselect(queryString);
		} catch (e) {
			//console.log(e);
			LOGIC.ToastrPrompt.toastrError(e);
		}

		//console.log(queryString);
		$('#advanced_search_modal').modal('hide');

	}

	function handleAdvancedSearchStrings(queryString) {
		//console.log('asd');
		var queryArray = queryString.split(',');
		var queryCriterias = [];
		var stringHTML = '';

		for (var k = 0; k < queryArray.length - 1; k++) {
			var key = queryArray[k].split(':')[0];
			var condition = queryArray[k].split(':')[1];
			var value = queryArray[k].split(':')[2];
			var isDate = queryArray[k].split(':')[3];

			if (!_.isEmpty(key) && !_.isEmpty(condition) && !_.isEmpty(value)) {
				if (k >= queryArray.length - 2) {
					stringHTML += key + '&nbsp;' + condition + '&nbsp;' + value;
				} else {
					stringHTML += key + '&nbsp;' + condition + '&nbsp;' + value + ',&nbsp;';
				}

				if (isDate == true || isDate == 'true') {
					value += 'T00:00:00.000Z';
					// handle task date
					queryCriterias.push({
						connection: "and",
						key: key,
						condition: condition,
						value: value,
						isValueADigital: true
					});
				} else {
					queryCriterias.push({
						connection: "and",
						key: key,
						condition: condition,
						value: value,
						isValueADigital: false
					});
				}
			}
		}
		$('#searchStrings').html(stringHTML);
		$('#clearSearch').show();
		return queryCriterias;

	}
}
