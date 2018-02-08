function RoleLanguageSwitch() {
	this.init = init;
    this.roleChangeLange = roleChangeLange;

    function init(languageType){
	    switch (languageType) {
	        case "us.png":
	            roleChangeLange("resource_en_US");
	            break;
	        case "cn.png":
	            roleChangeLange("resource_zh_CN");
	            break;
	        default:
	            break;
	    }
    	
    }

    function roleChangeLange(langName) {
        $.i18n.properties({
            name: langName,
            //path: LOGIC.Configuration.bundlePath ,
            path: '/frontend-pages/system/i18n/resources/',
            mode: 'both',
            callback: function() {
                $('#msg_home').html($.i18n.prop('msg_home'));
                $('#msg_rolemanagement').html($.i18n.prop('msg_rolemanagement'));
                $('#msg_role_title').html($.i18n.prop('msg_role_title'));
                $('#btn_add').html($.i18n.prop('btn_add'));
                $('#btn_delete').html($.i18n.prop('btn_delete'));
                $('#msg_role_code').html($.i18n.prop('msg_role_code'));
                $('#msg_role_name').html($.i18n.prop('msg_role_name'));
                $('#msg_role_add_title').html($.i18n.prop('msg_role_add_title'));
                $('#lbl_role_code').html($.i18n.prop('lbl_role_code'));
                $('#lbl_role_name').html($.i18n.prop('lbl_role_name'));
                $('#lbl_role_level').html($.i18n.prop('lbl_role_level'));
                $('#lbl_role_code1').html($.i18n.prop('lbl_role_code'));
                $('#lbl_role_name1').html($.i18n.prop('lbl_role_name'));
                $('#lbl_role_level1').html($.i18n.prop('lbl_role_level'));
                $('#msg_role_edit_title').html($.i18n.prop('msg_role_edit_title'));
                $('#btn_save').html($.i18n.prop('btn_save'));
                $('#btn_cancel').html($.i18n.prop('btn_cancel'));
                $('#btn_save1').html($.i18n.prop('btn_save'));
                $('#btn_cancel1').html($.i18n.prop('btn_cancel'));
                $('#sSearch').html($.i18n.prop('msg_search'));
                $('#recordsId').html($.i18n.prop('msg_records'));
                $('#msg_show').html("dfd");
                $('#msg_show').html($.i18n.prop('msg_show'));
                $('#msg_to').html($.i18n.prop('msg_to'));
                $('#msg_of').html($.i18n.prop('msg_of'));
                $('#msg_entries').html($.i18n.prop('msg_entries'));
                $('#msg_header_title').html($.i18n.prop('msg_header_title'));
                $('.editLanguage').html($.i18n.prop('btn_edit'));
                $('.pemissionbtn').html($.i18n.prop('btn_permisson'));
            }
        });
    }
}
