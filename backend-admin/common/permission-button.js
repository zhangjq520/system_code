function PermissionButton() {
    this.handlePermissionButton = handlePermissionButton;

    function handlePermissionButton(userId, moduleId, addId, editId, deleteId) {
        var data = {
            userId: userId,
            moduleId: moduleId
        };
        LOGIC.Services.PermissionService.getModulePermission({
            data: data,
            success: function(data, textStatus, xhr) {
                var p0 = data.p0;
                var p1 = data.p1;
                var p2 = data.p2;
                var p3 = data.p3;
                handleButtonShow(p0, p1, p2, p3, addId, editId, deleteId);
            },
            error: function(jqXHR) {

            },
            async: false
        })
    }

    function handleButtonShow(p0, p1, p2, p3, addId, editId, deleteId) {

        var $addId = $(addId);
        var $deleteId = $(deleteId);
        var $editId = $(editId)

        if (p0 == "1") {
            $addId.show();
        }else{
            $addId.hide();

        }
        if (p2 == "1") {
            $deleteId.show();
        }else{
            $deleteId.hide();

        }
        if (!_.isEmpty(editId)) {

            if (p1 == '1') {
                $editId.show();
            }else{
                $editId.hide();

            }
        }

    }

}
