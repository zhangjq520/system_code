function AccountSettingController() {
	this.init = init;
	this.submitUSerEdit = submitUSerEdit;
	this.uploadAvatar = uploadAvatar;

	var userId = null;
	var pwdRegexp = null;
	var msg_current_pwd = null;
	var msg_new_pwd = null;
	var msg_re_new_pwd = null;

	function init() {
		LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "我的资料");
		// LOGIC.ToshibaCommonTools.getPwdComplex('SYS_PWD_CFG_A_COMPLEX');

		$('#userNameId').html(LOGIC.Storage.get('username'));

		handleLanguage();
		handleAccountInfo();
		addFormValidation();
		$.validator.addMethod("notEqualTo", function(value, element, param) {
			return this.optional(element) || value != $(param).val();
		}, '新密码与原密码一致，请重新输入');
	}

	function handleLanguage() {
		if (LOGIC.Storage.get('languageType') == 'cn.png') {
			msg_current_pwd = '*『当前密码』不能为空.';
			msg_new_pwd = '请按照规则输入有效密码.';
			msg_re_new_pwd = '密码不一致，请重新输入.';
		} else {
			msg_current_pwd = '*Password is required.';
			msg_new_pwd = 'Please enter a valid password.';
			msg_re_new_pwd = 'Please enter the same value again...';
		}

	}

	function handleAccountInfo() {
		userId = LOGIC.Storage.get('user_id');
		var data = {
			id: userId
		};
		LOGIC.Services.UserService.getUserById({
			data: data,
			success: function(data, textStatus, xhr) {
				$('.account').addClass("active");
				showUserInfo(data);
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
			}
		});
	}

	function showUserInfo(data) {
		$('#login_id').val(data.login_id);
		$('#last_name').val(data.last_name);
		$('#first_name').val(data.first_name);
		$('#email_primary').val(data.email_primary);
		$('#role_name').val(data.role_name);
		$('#txtMobile').val(data.workPhoneNumber);
		$('#org_name').val(data.org_names);
		 
	}

	function submitUSerEdit() {
		var data = {
			id: userId,
			login_id: $('#login_id').val(),
			last_name: $('#last_name').val(),
			first_name: $('#first_name').val(),
			email_primary: $('#email_primary').val(),
			role_name: $('#role_name').val(),
			workPhoneNumber: $('#txtMobile').val()
		}

		LOGIC.Services.UserService.updateUser({
			data: data,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));
			}
		});

	}

	function addFormValidation() {

		var form = $('#passwordform');
		var error = $('.alert-danger', form);
		var success = $('.alert-success', form);
		form.validate({
			doNotHideMessage: true,
			errorElement: 'span',
			errorClass: 'help-block help-block-error',
			focusInvalid: false,
			rules: {
				oldPassword: {
					required: true
				},
				newPassword: {
					notEqualTo: '#old_password',
					required: true
				},
				rpassword: {
					equalTo: "#password"
				}
			},
			messages: { // custom messages for radio buttons and checkboxes
				oldPassword: {
					required: msg_current_pwd
				},
				newPassword: {
					required: msg_new_pwd
				},
				rpassword: {
					required: msg_re_new_pwd,
					equalTo: msg_re_new_pwd
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
				updatePassword();
			}

		});

	}

	function updatePassword() {
		var oldPassword = $('#old_password').val();
		var newPassword = $('#password').val();
		var data = {
			user_id: userId,
			old_password: oldPassword,
			new_password: newPassword
		};

		//console.log(data);

		LOGIC.Services.UserService.changePWD({
			data: data,
			success: function(data, textStatus, xhr) {
				//console.log(data);
				if (data.changeSuccess) {
					LOGIC.ToastrPrompt.toastrSuccess('密码修改成功！', '将在3秒后自动跳转至登陆页');
					setTimeout(function() {
						window.location.href = LOGIC.Configuration.rootPath + "/system/login.html";
					}, 1500);
				} else {
					LOGIC.ToastrPrompt.toastrError('当前密码错误，请重新输入');
				}
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader("msg"));
			}
		});

	}

	function uploadAvatar() {

		var form = $('#upload_avatar_form');
		var formData = new FormData();
		// var formData = new FormData(document.getElementById("upload_avatar_form"));

		formData.append('file', $('input[type=file]')[0].files[0]);
		// var img = $('input[type=file]')[0].files[0];
		// //console.log(img);
		// var data = $("#upload_avatar");
		// //console.log(formData.get('name'));



		LOGIC.Services.UserService.uploadAvatar({
			data: formData,
			success: function(data, textStatus, xhr) {
				LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
				// window.location.href = LOGIC.Configuration.rootPath + '/login.html';
			},
			error: function(jqXHR) {
				LOGIC.ToastrPrompt.toastrError(xhr.getResponseHeader('msg'));

			}
		});
	}
}
