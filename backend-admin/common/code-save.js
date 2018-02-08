function CodeSave() {
    this.saveToStorage = saveToStorage;
    this.saveChildrenToStroage = saveChildrenToStroage;

    function saveToStorage(code, async) {
        var data = {
            code: code
        };

        LOGIC.Services.CodeService.getCode({
            data: data,
            success: function (data) {
                if (!_.isEmpty(data)) {
                    if (LOGIC.Storage.get('languageType') == 'cn.png') {
                        LOGIC.Storage.set(code, data.code_desc_zh);
                    } else if (LOGIC.Storage.get('languageType') == 'us.png') {
                        LOGIC.Storage.set(code, data.code_desc_en);
                    }
                }
            },
            error: function (jqXHR) {
                //console.log("error");
            },
            async: async
        });
    }

    function saveChildrenToStroage(code, async, storageName) {
        var data = {
            codeId: code
        };
        LOGIC.Services.CodeService.getChildren({
            data: data,
            success: function (data) {
                LOGIC.Storage.set(storageName, data);
            },
            error: function (jqXHR) {
                //console.log("error:");
            },
            async: async
        });
    }

}