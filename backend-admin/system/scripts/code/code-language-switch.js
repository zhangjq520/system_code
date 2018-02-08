function CodeLanguageSwitch() {
    this.init = init;
    this.codeChangeLange = codeChangeLange;

    function init(languageType) {
        switch (languageType) {
            case "us.png":
                codeChangeLange("resource_en_US");
                break;
            case "cn.png":
                codeChangeLange("resource_zh_CN");
                break;
            default:
                break;
        }

    }

    function codeChangeLange(langName) {
        $.i18n.properties({
            name: langName,
            path: LOGIC.Configuration.bundlePath,
            mode: 'both',
            callback: function() {
                $('#msg_home').html($.i18n.prop('msg_home'));
                $('#msg_codemanagement').html($.i18n.prop('msg_codemanagement'));
                $('#msg_code_title').html($.i18n.prop('msg_code_title'));
                $('#msg_add_code').html($.i18n.prop('msg_add_code'));
                $('#lbl_code_name').html($.i18n.prop('lbl_code_name'));
                $('#lbl_code_desc_en').html($.i18n.prop('lbl_code_desc_en'));
                $('#lbl_code_desc_tr').html($.i18n.prop('lbl_code_desc_tr'));
                $('#lbl_code_desc_zh').html($.i18n.prop('lbl_code_desc_zh'));
                $('.lbl_status').html($.i18n.prop('lbl_status'));
                $('.lbl_active').html($.i18n.prop('lbl_active'));
                $('.lbl_inactive').html($.i18n.prop('lbl_inactive'));
                $('#msg_code_name').html($.i18n.prop('msg_code_name'));
                $('#msg_code_desc_en').html($.i18n.prop('msg_code_desc_en'));
                $('#msg_code_desc_tr').html($.i18n.prop('msg_code_desc_tr'));
                $('#msg_code_desc_zh').html($.i18n.prop('msg_code_desc_zh'));
                $('#msg_status').html($.i18n.prop('msg_status'));

                $('#btn_add').html($.i18n.prop('btn_add'));
                $('#btn_delete').html($.i18n.prop('btn_delete'));

                $('#btn_save').html($.i18n.prop('btn_save'));
                $('#btn_cancel').html($.i18n.prop('btn_cancel'));

                $('#sSearch').html($.i18n.prop('msg_search'));
                $('#recordsId').html($.i18n.prop('msg_records'));
                $('#msg_show').html($.i18n.prop('msg_show'));
                $('#msg_to').html($.i18n.prop('msg_to'));
                $('#msg_of').html($.i18n.prop('msg_of'));
                $('#msg_entries').html($.i18n.prop('msg_entries'));

                $('#btn_modal_save').html($.i18n.prop('btn_modal_save'));
                $('#btn_modal_cancel').html($.i18n.prop('btn_modal_cancel'));

                $('#search_tree').attr("placeholder", $.i18n.prop('search_tree'));
                $('#msg_edit_code').html($.i18n.prop('msg_edit_code'));
                $('#msg_code_edittitle').html($.i18n.prop('msg_code_edittitle'));
                $('.lbl_parent_code').html($.i18n.prop('lbl_parent_code'));


            }
        });
    }
}