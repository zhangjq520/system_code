function FaqListController() {
	this.init = init;

	this.editFaqId = -1;
	this.totalCount = 0;

	var msg_seq_required;
	var msg_question_required;
	var msg_answer_required;

	$("#txtFaqSrch").keypress(function(e) {
		if(e.which == 13) {
			$("#faq_list_table").DataTable().ajax.reload();
		}
	});

	$("#search").click(function() {
		$("#faq_list_table").DataTable().ajax.reload();
	});

	function init() {
		var startItems = null;
		var userId = LOGIC.Storage.get("user_id");
		var moduleId = window.location.search.split("=")[1];
		LOGIC.Storage.set("current_module_id", moduleId);

		handleLanguage();
		
		getModulePermission(userId, moduleId);

		editFormValidation();
		addFormValidation();
		
	}

	function handleLanguage() {
		if (LOGIC.Storage.get('languageType') == 'cn.png') {
			msg_seq_required = "排序号不能为空。";
			msg_question_required = "问题不能为空。";
			msg_answer_required = "答案不能为空。";
		} else {
			msg_seq_required = "seq is required.";
			msg_question_required = "question is required.";
			msg_answer_required = "answer is required.";
		}
	}

	function getModulePermission(userId, moduleId) {
        var data = {
            userId: userId,
            moduleId: moduleId
        }
        LOGIC.Services.PermissionService.getModulePermission({
            data: data,
            success: function(data, textStatus, xhr) {
                if (data.p0 == '1') {
                    var addButtonHTML = '<a class="btn btn-xs btn-circle btn-custom-2" id="addButton"' +
                    	'onclick="LOGIC.Controllers.FaqListController.showAddFaqModal()">增加 <i class="fa fa-edit"></i></a>';
                    $('#add_btn').html(addButtonHTML)
                }
                createTable(data);
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError('error');
            }
        });
    }

	function createTable(permission) {
		LOGIC.ToshibaCommonTools.clearForm('#addButton', '#faq_add_form');
		
		$("#faq_list_table").DataTable({
			autoWidth: false,
			searching: false,
			serverSide: true,
			pageLength: 10,
			lengthMenu: [10, 20, 50, 100],

			ajax: function(request, drawCallback, settings) {
				var success = request.success || function() { };
				var error = request.error || function() { };
				var keyword = $("#txtFaqSrch").val();

				request.success = function(data, textStatus, xhr) {
					var responseData = {
						draw: request.draw,
						recordsTotal: xhr.getResponseHeader("total_count"),
						recordsFiltered: xhr.getResponseHeader("total_count"),
						data : data
					};

					LOGIC.Controllers.FaqListController.totalCount = xhr.getResponseHeader("total_count");

					drawCallback(responseData);
				};

				request.error = function(data) {
					error(data);
				};

				var queryOption = LOGIC.QueryTool.getDefaultQueryOption();

	            queryOption.pagination.perPage = request.length;
	            queryOption.pagination.current = request.start / request.length + 1;

	            queryOption.orderBy.type = request.order[0].dir;
	            queryOption.orderBy.name = "seq";
	            queryOption.flag = true;

	            if(keyword && keyword.length > 0) {
		            queryOption.queryCriterias = [{
		                connection: 'and',
		                key: 'question',
		                condition: 'like',
		                value: keyword,
		                isValueADigital: false
		            }];
		        } else {
		        	queryOption.queryCriterias = [];
		        }

	            request.data = {
	                queryOption: queryOption
	            }

				return LOGIC.Services.FaqService.getFaqList(request);
			},
			columns: [
				{
					data: 'seq', title: '序号', searchable: false, orderable: true, sWidth: '5%'
				},
				{
				    data: '', title: '问题', searchable: false, orderable: true, sWidth: '25%', render: function (data, type, full, meta) {
				        var question = full.question;
				        if (question && question.length > 15) {
				            question = question.substring(0, 15) + "......";
				        }

				        return question;
				    }
				},
				{
				    data: '', title: '答案', searchable: false, orderable: true, sWidth: '50%', render: function (data, type, full, meta) {
				        var answer = full.answer;
				        if (answer && answer.length > 30) {
				        	if(answer.indexOf('</a>') > 0) {
				        		answer = answer.substring(0, answer.indexOf('</a>') + 4) + "......";
				        	} else {
				            	answer = answer.substring(0, 30) + "......";
				        	}
				        }

				        return answer;
				    }
				},
				{
					data: '', title: '', searchable: false, orderable: false, sWidth: '15%',
					render: function(data, type, full, meta) {
						var id = full.id;
						var seq = full.seq;
						var question = full.question;
						var answer = full.answer.replace(/\'/gm, '_');
						var editHTML, deleteHTML;

						if(permission.p1 == '1'){
							editHTML = '<a class="btn btn-xs btn-circle blue" onclick="LOGIC.Controllers.FaqListController.showEditFaqModal(' + 
								'\''+id+'\',' +
								'\''+seq+'\',' +
								'\''+question+'\',' +
								'\''+answer+'\'' +
								')"><i class="fa fa-edit"></i>&nbsp;编辑</a>';
						} else {
							editHTML = '';
						}

						if(permission.p2 == '1'){
							deleteHTML = '<a class="btn btn-xs btn-circle red" onclick="LOGIC.Controllers.FaqListController.deleteFaqModel(' + 
								'\''+id+'\'' +
								')"><i class="fa fa-trash-o"></i>&nbsp;删除</a>';
						} else {
							deleteHTML = '';
						}

						var html = '<div class="config-btn btn-group">' + 
							editHTML + deleteHTML +
							'</div>';
						return html;
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

	function editFormValidation() {
		var form = $('#faq_edit_form');
		var error = $('.alert-danger', form);
		var success = $('.alert-success', form);

		form.validate({
			doNotHideMessage: true,
			errorElement: 'span',
			errroClass: 'help-block help-block-error',
			focusInvalid: false,
			ignore: [],
			rules: {
				seq: {
					required: true
				},
				question: {
					required: true
				},
				answer: {
					required: true
				}
			},
			messages: {
				seq: {
					required: msg_seq_required
				},
				question: {
					required: msg_question_required
				},
				answer: {
					required: msg_answer_required
				}
			},
			errorPlacement: function(error, element) {
				if (element.parent(".input-group").size() > 0) {
                    error.insertAfter(element.parent(".input-group"));
                } else if (element.attr("data-error-container")) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.radio-list').size() > 0) {
                    error.appendTo(element.parents('.radio-list').attr("data-error-container"));
                } else if (element.parents('.md-radio-inline').size() > 0) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.checkbox-list').size() > 0) {
                    error.appendTo(element.parents('.checkbox-list').attr("data-error-container"));
                } else if (element.parents('.checkbox-inline').size() > 0) {
                    error.appendTo(element.parents('.checkbox-inline').attr("data-error-container"));
                } else {
                    error.insertAfter(element); // for other inputs, just perform default behavior
                }
			},

			invalidHandler: function(event, validator) {
				success.hide();
				error.show();
				Metronic.scrollTo(error, -200);
			},

			highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function(element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                if (label.attr("for") == "gender" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
                    label
                        .closest('.form-group').removeClass('has-error').addClass('has-success');
                    label.remove(); // remove error label here
                } else { // display success icon for other inputs
                    label
                        .addClass('valid') // mark the current input as valid and display OK icon
                        .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                }
            },

            submitHandler: function(form) {
                success.show();
                error.hide();
                submitEditFaq();
            }
		});
	}

	function addFormValidation() {
		var form = $('#faq_add_form');
		var error = $('.alert-danger', form);
		var success = $('.alert-success', form);

		//startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#faq_add_form').serializeArray());

		form.validate({
			doNotHideMessage: true,
			errorElement: 'span',
			errroClass: 'help-block help-block-error',
			focusInvalid: false,
			rules: {
				seq: {
					required: true
				},
				question: {
					required: true
				},
				answer: {
					required: true
				}
			},
			messages: {
				seq: {
					required: msg_seq_required
				},
				question: {
					required: msg_question_required
				},
				answer: {
					required: msg_answer_required
				}
			},
			errorPlacement: function(error, element) {
				if (element.parent(".input-group").size() > 0) {
                    error.insertAfter(element.parent(".input-group"));
                } else if (element.attr("data-error-container")) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.radio-list').size() > 0) {
                    error.appendTo(element.parents('.radio-list').attr("data-error-container"));
                } else if (element.parents('.md-radio-inline').size() > 0) {
                    error.appendTo(element.attr("data-error-container"));
                } else if (element.parents('.checkbox-list').size() > 0) {
                    error.appendTo(element.parents('.checkbox-list').attr("data-error-container"));
                } else if (element.parents('.checkbox-inline').size() > 0) {
                    error.appendTo(element.parents('.checkbox-inline').attr("data-error-container"));
                } else {
                    error.insertAfter(element); // for other inputs, just perform default behavior
                }
			},

			invalidHandler: function(event, validator) {
				success.hide();
				error.show();
				Metronic.scrollTo(error, -200);
			},

			highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function(element) { // revert the change done by hightlight
                $(element)
                    .closest('.form-group').removeClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                if (label.attr("for") == "gender" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
                    label
                        .closest('.form-group').removeClass('has-error').addClass('has-success');
                    label.remove(); // remove error label here
                } else { // display success icon for other inputs
                    label
                        .addClass('valid') // mark the current input as valid and display OK icon
                        .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                }
            },

            submitHandler: function(form) {
                success.show();
                error.hide();
                submitAddFaq();
            }
		});
	}

	function submitEditFaq() {
		var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#faq_edit_form').serializeArray());
		var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
		itemsToSubmit.id = editFaqId;

		LOGIC.Services.FaqService.updateFaq({
			data: itemsToSubmit,
			success: function(data, textStatus, xhr) {
				$('#edit_faq').modal('hide');
				$('#faq_list_table').DataTable().ajax.reload();
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
			},
			error: function(jdXHR) {
				LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
			}
		});
	}

	function submitAddFaq() {
		var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($('#faq_add_form').serializeArray());
		//var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);

		LOGIC.Services.FaqService.addFaq({
			data: currentItems,
			success: function(data, textStatus, xhr) {
				$('#add_faq').modal('hide');
				$('#faq_list_table').DataTable().ajax.reload();
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
			},
			error: function(jdXHR) {
				LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
			}
		});
	}
}

FaqListController.prototype.showEditFaqModal = function(id, seq, question, answer) {
	$('#faq_edit_form').trigger('reset');
	$('#faq_edit_form').find('.form-group').removeClass('has-error').removeClass('has-success');
	$('#faq_edit_form').find('.help-block-error').remove();

	editFaqId = id;
	$('#edit_seq').val(seq);
	$('#edit_question').val(question);
	var temp = answer.replace(/_/gm, '\'');
	$('#edit_answer').val(temp);

	$('#edit_faq').modal('show');
	startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#faq_edit_form").serializeArray());
}

FaqListController.prototype.showAddFaqModal = function() {
	$('#faq_add_form').trigger('reset');
	$('#faq_add_form').find('.form-group').removeClass('has-error').removeClass('has-success');
	$('#faq_add_form').find('.help-block-error').remove();

	var seq = Number(this.totalCount) + 1;
	$('#add_seq').attr('value', seq);
	$('#add_faq').modal('show');
}

FaqListController.prototype.deleteFaqModel = function(faqId) {
	bootbox.confirm({
		size: 'small',
		message: '确定删除记录？',
		callback: function(result) {
			if(result == true) {
				LOGIC.Services.FaqService.deleteFaq({
					data: {
						ids: faqId
					},
					success: function(data, textStatus, xhr) {
						$('#faq_list_table').DataTable().ajax.reload();
						LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
					},
					error: function(jdXHR) {
						LOGIC.ToastrPrompt.toastrError(jdXHR.getResponseHeader("msg"));
					}
				});
			}
		}
	});
}
