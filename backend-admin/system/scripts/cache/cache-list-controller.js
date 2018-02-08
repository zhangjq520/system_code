function CacheListController() {
    this.init = init;
    this.deleteCache = deleteCache;

    function init() {
        LOGIC.ToshibaCommonTools.setTitle('SYS_BCK_NAME', "缓存管理");
        createTable();
        choiceCheckBox();
    }

    function createTable() {
        LOGIC.Services.CacheService.getCaches({
            success: function(data, textStatus, xhr) {
                var codesCache = data.codesCache;
                var sessionCache = data.sessionCache;
                var generalCache = data.generalCache;
                for (var i in codesCache) {
                    var valueStringArray = '';
                    $.each(codesCache[i], function(index, elements) {
                        valueStringArray = valueStringArray + JSON.stringify(elements);
                    })
                    var type = "codesCache";
                    $('<tr></tr>').html('<td>'+type+'</td><td>' + i + '</td><td style="word-wrap : break-word;">' + valueStringArray + '</td><td wdith="30px"><a class="btn btn-xs red btn-circle" onclick="' + 'LOGIC.Controllers.CacheListController.deleteCache(\'' +
                        i + '\',\'' + type + '\')' + '"> 删除 <i class="fa fa-trash-o"></i></a></td>').appendTo($('#addCacheTable'));
                }
                for (var i in generalCache) {
                    var generalvalueStringArray = '';
                    $.each(generalCache[i], function(index, elements) {
                        generalvalueStringArray = generalvalueStringArray + JSON.stringify(elements);
                    })
                    var type = "generalCache";

                    $('<tr></tr>').html('<td>'+type +'</td><td style="word-wrap : break-word;">' + i + '</td><td style="word-wrap : break-word;">' + generalvalueStringArray + '</td><td width="30px"><a class="btn btn-xs red btn-circle" onclick="' + 'LOGIC.Controllers.CacheListController.deleteCache(\'' +
                        i + '\',\'' + type + '\')' + '"> 删除 <i class="fa fa-trash-o"></i></a></td>').appendTo($('#addCacheTable'));
                }
                for (var i in sessionCache) {
                    var sessionvalueStringArray = '';
                    $.each(sessionCache[i], function(index, elements) {
                        sessionvalueStringArray = sessionvalueStringArray + JSON.stringify(elements);
                    })
                    var type = "sessionCache";

                    $('<tr></tr>').html('<td>'+type +'</td><td>' + i + '</td><td style="word-wrap : break-word;">' + sessionvalueStringArray + '</td><td width="30px"><a class="btn btn-xs red btn-circle" onclick="' + 'LOGIC.Controllers.CacheListController.deleteCache(\'' +
                        i + '\',\'' + type + '\')' + '"> 删除 <i class="fa fa-trash-o"></i></a></td>').appendTo($('#addCacheTable'));
                }
                handleUniform();
            },
            error: function(jqXHR) {
                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
            }
        })


    }

    function handleUniform() {
        if (!$().uniform) {
            return;
        }
        var test = $("input[type=checkbox]:not(.toggle, .md-check, .md-radiobtn, .make-switch, .icheck), input[type=radio]:not(.toggle, .md-check, .md-radiobtn, .star, .make-switch, .icheck)");
        if (test.size() > 0) {
            test.each(function() {
                if ($(this).parents(".checker").size() === 0) {
                    $(this).show();
                    $(this).uniform();
                }
            });
        }
    }

    function choiceCheckBox() {

        $('#cacheTable').find('.group-checkable').change(function() {
            var set = jQuery(this).attr("data-set");
            var checked = jQuery(this).is(":checked");
            jQuery(set).each(function() {
                if (checked) {
                    $(this).attr("checked", true);
                } else {
                    $(this).attr("checked", false);
                }
            });
            jQuery.uniform.update(set);
        });
    }

    function deleteCache(key, type) {
        var ids = key;
        var types = type;
        var data = {
            ids: ids,
            types: types
        };
        if (ids != '' && types != '') {
            bootbox.confirm({
                size: 'small',
                message: '你确定要删除这个缓存吗？',
                callback: function(result) {
                    if (result) {
                        LOGIC.Services.CacheService.deleteCache({
                            data: data,
                            success: function(data, textStatus, xhr) {
                                window.location.href = "cache_list.html";
                                LOGIC.ToastrPrompt.toastrSuccess(xhr.getResponseHeader('msg'));
                            },
                            error: function(jqXHR) {
                                LOGIC.ToastrPrompt.toastrError(jqXHR.getResponseHeader('msg'));
                            }
                        })
                    }
                }

            })

        }
    }
}
