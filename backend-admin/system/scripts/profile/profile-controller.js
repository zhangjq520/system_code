function ProfileController() {
	this.init = init;
	this.showaccountSet = showaccountSet;
	// var user_id = null;

	function init() {
		LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "我的资料");

		// user_id = LOGIC.Storage.get('user_id');
		var user_name = LOGIC.Storage.get('username');
		$('#userNameId').html(user_name);
	}

	function showaccountSet() {
		$('.account').addClass("active");
		window.location.href = "account_setting.html?id=" + LOGIC.Storage.get('user_id');
	}

}