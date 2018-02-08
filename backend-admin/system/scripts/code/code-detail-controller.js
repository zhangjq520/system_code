function CodeDetailController() {
	this.init = init;
	this.submitEditCode = submitEditCode;
	this.addChildCode = addChildCode;
	this.createTreeId = null;
	this.cancelAddChildrenCode = cancelAddChildrenCode;
	this.parentTreeId = null;

	var codeTree = null;
	var flag = null;
	var startItems = null;
	var deleteInst = null;
	var deleeObj = null;

	function init() {
		LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "代号详情管理");

		if (window.location.search != "") {
			var code = window.location.search.split("=")[1];
			generateTree(code);
			searchTreeNode();
			addFormValidation();
			editFormValidation();
			// LOGIC.CodeLanguageSwitch.init(LOGIC.Storage.get('languageType'));
			expandAll();
		}

	}

	function generateTree(code) {
		codeTree = $("#codeTree").jstree({
			'core': {
				'themes': {
					"responsive": false
				},
				// so that create works
				'check_callback': true,
				'data': {
					'url': function(node) {
						if (node.id == '#') {
							return LOGIC.Configuration.serverUrl + 'system/rest/codes/' + code + '/codeForJSTree';
						} else {
							return LOGIC.Configuration.serverUrl + 'system/rest/codes/' + node.id + '/childrenForJSTree';
						}
					},
					'headers': {
						"Authorization": $.cookie("access_token")
					}
				}
			},
			'types': {
				'default': {
					'icon': "fa fa-folder icon-state-warning icon-lg"
				},
				'file': {
					'icon': "fa fa-file icon-state-warning icon-lg"
				}
			},
			'state': {
				'key': "codeTree"
			},
			'plugins': [
				"contextmenu",
				"dnd",
				"search",
				"state",
				"types",
				"unique"
			],
			'search': {
				"show_only_matches": true
			},
			'contextmenu': {
				'select_node': !0,
				'show_at_node': !0,
				items: function() {
					return {
						'create': {
							'separator_before': !1,
							'separator_after': !0,
							'_disabled': !1,
							'label': "Create",
							'action': function(t) {
								var inst = $.jstree.reference(t.reference),
									obj = inst.get_node(t.reference);
								inst.create_node(obj, {}, "last", function(new_node) {
									setTimeout(function() {
										inst.edit(new_node);
									}, 0);
								});
							}
						},
						'remove': {
							'separator_before': !1,
							'icon': !1,
							'separator_after': !1,
							'_disabled': !1,
							'label': "Delete",
							'action': function(t) {
								deleteInst = $.jstree.reference(t.reference);
								deleeObj = deleteInst.get_node(t.reference);

								if ("#" != deleeObj.id) {
									bootbox.confirm({
										size: 'small',
										message: 'Are you sure to delete it?',
										callback: function(result) {
											if (result) {
												parentTreeId = deleeObj.parent;
												hasChildren(deleeObj.id, deleteInst, deleeObj);
											}
										}
									})
								}
							}
						},
						'ccp': {
							'separator_before': true,
							'icon': false,
							'separator_after': false,
							'label': "Edit",
							'action': function(t) {
								var inst = $.jstree.reference(t.reference);
								obj = inst.get_node(t.reference);
								var code = obj.id;
								showEditCode(code);
							}
						}
					}
				}
			}
		});

		codeTree.bind("delete_node.jstree", function(e, data) {
			var code = data.node.id;
			// hasChildren(code);
		});

		codeTree.bind("create_node.jstree", function(e, data) {
			var add_modal = $('#add_code');
			var parentId = data.node.parent;
			$('#add_parent_code').val(parentId);
			createTreeId = data.node.id;
			$('.inputEmpty').val('');
			add_modal.modal('show');
		});

		codeTree.on('click', 'a', function(event) {
			var code = $(this).parent("li").attr("id");
			event.stopPropagation();
			showEditCode(code);
		});

	}

	function expandAll() {
		$('#expand_all').click(function() {
			$(codeTree).jstree("open_all");
		});
	}

	function searchTreeNode() {
		var to = false;
		$("#search_tree").keyup(function() {
			if (to) {
				clearTimeout(to);
			}
			var v = null;
			to = setTimeout(function() {
				v = $('#search_tree').val();
				$("#codeTree").jstree(true).search(v);
			// generateTree(v);
			}, 100);
		});
	}

	function showEditCode(code) {
		var data = {
			code: code
		};
		LOGIC.Services.CodeService.getCode({
			data: data,
			success: function(data) {
				var parent_code = data.parent_code;
				var code_desc_en = data.code_desc_en;
				var code_desc_zh = data.code_desc_zh;
				// var code_desc_tr = data.code_desc_tr;
				var code = data.code;
				var disabled = data.disabled;
				// console.log(disabled)
				$('#edit_parent_code').val(parent_code);
				$('#edit_code_name').val(code);
				$('#edit_code_desc_en').val(code_desc_en);
				// $('#edit_code_desc_tr').val(code_desc_tr);
				$('#edit_code_desc_zh').val(code_desc_zh);
				if (disabled == "false") {
					// $('#edit_radio1').attr("checked", "true");
					$('#edit_radio2').closest('span').attr("class", "");
					$('#edit_radio1').closest('span').attr("class", "checked");
				} else {
					$('#edit_radio1').closest('span').attr("class", "");
					$('#edit_radio2').closest('span').attr("class", "checked");

					// $('#edit_radio2').attr("checked", "true");
				}
				startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#edit_code_form").serializeArray());
			},
			error: function(jqXHR) {

			}
		});
	}

	function editFormValidation() {
		var form = $('#edit_code_form');
		var error = $('.alert-danger', form);
		var success = $('.alert-success', form);
		form.validate({
			doNotHideMessage: true,
			errorElement: 'span',
			errorClass: 'help-block help-block-error',
			focusInvalid: false,
			rules: {
				code: {
					minlength: 1,
					required: true
				},
				code_desc_zh: {
					minlength: 1,
					required: true
				}
			},

			errorPlacement: function(error, element) { // render error placement for each input type
				if (element.parent(".input-group").size() > 0) {
					error.insertAfter(element.parent(".input-group"));
				} else if (element.attr("data-error-container")) {
					error.appendTo(element.attr("data-error-container"));
				} else if (element.parents('.radio-list').size() > 0) {
					error.appendTo(element.parents('.radio-list').attr("data-error-container"));
				} else if (element.parents('.radio-inline').size() > 0) {
					error.appendTo(element.parents('.radio-inline').attr("data-error-container"));
				} else {
					error.insertAfter(element); // for other inputs, just perform default behavior
				}
			},

			invalidHandler: function(event, validator) { //display error alert on form submit   
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
				submitEditCode();
			}

		});
	}

	function submitEditCode() {
		var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#edit_code_form").serializeArray());
		var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);

		// console.log(itemsToSubmit)
		itemsToSubmit.code = $('#edit_code_name').val();

		LOGIC.Services.CodeService.updateCode({
			data: itemsToSubmit,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader("msg"));
			}
		});
	}

	function addFormValidation() {
		var form = $('#add_code_form');
		var error = $('.alert-danger', form);
		var success = $('.alert-success', form);
		startItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#add_code_form").serializeArray());
		form.validate({
			doNotHideMessage: true,
			errorElement: 'span',
			errorClass: 'help-block help-block-error',
			focusInvalid: false,
			rules: {
				code: {
					minlength: 1,
					required: true
				},
				code_desc_zh: {
					minlength: 1,
					required: true
				}
			},

			errorPlacement: function(error, element) { // render error placement for each input type
				if (element.parent(".input-group").size() > 0) {
					error.insertAfter(element.parent(".input-group"));
				} else if (element.attr("data-error-container")) {
					error.appendTo(element.attr("data-error-container"));
				} else if (element.parents('.radio-list').size() > 0) {
					error.appendTo(element.parents('.radio-list').attr("data-error-container"));
				} else if (element.parents('.radio-inline').size() > 0) {
					error.appendTo(element.parents('.radio-inline').attr("data-error-container"));
				} else {
					error.insertAfter(element); // for other inputs, just perform default behavior
				}
			},

			invalidHandler: function(event, validator) { //display error alert on form submit   
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
				addChildCode();
			}

		});
	}

	function addChildCode() {
		var currentItems = LOGIC.SelectiveSerialize.convertSerializedArrayToHash($("#add_code_form").serializeArray());
		var itemsToSubmit = LOGIC.SelectiveSerialize.hashDiff(startItems, currentItems);
		itemsToSubmit.disabled = ($('#add_radio1').closest('span').attr("class") == "checked") ? "false" : "true";
		LOGIC.Services.CodeService.addCodes({
			data: itemsToSubmit,
			success: function(data, textStatus, xhr) {
				var status = xhr.getResponseHeader("status");
				var msg = xhr.getResponseHeader("msg");
				if (status == "0") {
					var changetreeId = createTreeId;
					$('#' + changetreeId).find("a").text($('#add_code_desc_zh').val());
					$("#codeTree").jstree('set_text', changetreeId, "[" + $('#add_code_name').val() + "]" + $('#add_code_desc_zh').val());
					$('#codeTree').jstree(true).set_id(changetreeId, $('#add_code_name').val());
					$('#add_code').modal('hide');
					LOGIC.ToastrPrompt.toastrSuccess(msg);
				} else {
					bootbox.alert({
						size: 'small',
						message: msg,
					})
				}
			},
			error: function(jqXHR) {}
		});
	}

	function cancelAddChildrenCode() {
		$("#codeTree").jstree('delete_node', createTreeId);
	}

	// hasChildren(), handleCodeDelete(), deleteCode():  delete code that has no children.
	function hasChildren(code, deleteInst, deleeObj) {
		var data = {
			code: code
		};
		LOGIC.Services.CodeService.getChildrenOf({
			data: data,
			success: function(data) {
				handleCodeDelete(data, deleteInst, deleeObj);
			},
			error: function(jqXHR) {
				//console.log("error");
			}
		});
	}

	function handleCodeDelete(data) {
		var codeObj = data;
		var deleteCodes = [];

		$(codeObj).each(function(index, code) {
			if (code.has_children == "false") {
				deleteCodes.push(code.code);
				flag = false;
			} else {
				LOGIC.ToastrPrompt.toastrWarning(code.code + " has children. Please delete child code first.");
				flag = true;
			}
		})

		deleteCodes = deleteCodes.join(',');

		if (flag == false) {
			deleteCode(deleteCodes);
			deleteInst.is_selected(deleeObj) ? deleteInst.delete_node(deleteInst.get_selected()) : deleteInst.delete_node(deleeObj);
		}

	}

	function deleteCode(codes) {
		var data = {
			codes: codes
		};
		LOGIC.Services.CodeService.deleteCodes({
			data: data,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader("msg"));
				showEditCode(parentTreeId);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrSuccess(jqXHR.getResponseHeader("msg"));
			}
		});
	}
}