var Include = function() {

    var includeInit = function() {

        $("#headerId").load(LOGIC.Configuration.rootPath + "/common/header.html", function() {
            var user_id = LOGIC.Storage.get("user_id");
            var data = {
                id: user_id
            };
            var username = LOGIC.Storage.get("username");
            // $(".username").text(username);
            // $(".username").attr('text',username);
            document.getElementById('usernameid').innerHTML=username

            var languageType = LOGIC.Storage.get("languageType");

            LOGIC.Permission.getPermission({
                data: data,
                success: function(data, textStatus, request) {
                    //console.log(data);
                    menuShow(languageType, data);
                },
                error: function(jqXHR) {
                    //console.log("error");
                }
            });
            $('#user_avatar').attr('src', LOGIC.Configuration.rootPath + '/assets/admin/layout3/img/avatar.png');

        });

        $.get(LOGIC.Configuration.rootPath + "/common/footer.html", function(data) {
            $("#footerId").html(data);
            $('#logo-v2').attr('src', LOGIC.Configuration.rootPath + '/system/images/99/logo-v2.png')
            $('#QRcode').attr('src', LOGIC.Configuration.rootPath + '/system/images/99/QRcode.png')
        });
    };

    function menuShow(languageType, data) {

        var dataLength = data.length;
        var cmid = LOGIC.Storage.get("current_module_id");
        var flag = LOGIC.Storage.get("sys_code_flag");
        var cmmoId = null; //current main menu option id;
        var sysCodeDisplayFlag = LOGIC.ShowSystemCode;

        var firstMenuChildren = data[dataLength - dataLength].child_modules;
        if (firstMenuChildren != null) {
            var firstMenuChildrenLength = firstMenuChildren.length;
            for (var i = 0; i < firstMenuChildrenLength; i++) {
                var firstChild = {};
                firstChild = firstMenuChildren[i];
                var type = firstChild.type;
                if (type == "_A51") {
                    isNotHomePg = true;
                    $('<li class="menu-dropdown mega-menu-dropdown" id=menu' + firstChild.id + '><a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;" class="dropdown-toggle secondparentName" id="' + firstChild.id + '" aria-expanded="false"> ' + firstChild.name_zh + '<i class="fa fa-angle-down"></i></a></li>').appendTo($('#menuId'));
                    if (firstChild.child_modules != null) {
                        var childLength = firstChild.child_modules.length;
                        if (12 % childLength == 0) {

                            var childDivLength = 12 / childLength;
                            var menuWidth = childLength * 220;
                            $('<ul class="dropdown-menu" style="min-width: ' + menuWidth + 'px"><li><div class="mega-menu-content"><div class="row" id=menuDiv' + firstChild.id + '></div></div></li></ul>').appendTo($('#menu' + firstChild.id));

                            $.each(firstChild.child_modules, function (index, elements) {
                                $('<div class="col-md-' + childDivLength + ' no-padding-right"><ul class="mega-menu-submenu" id=feature' + elements.id + '></ul></div>').appendTo('#menuDiv' + firstChild.id);

                                if (sysCodeDisplayFlag == true) {
                                    $('<li><h3 id=' + elements.id + '>[' + elements.code + '] ' + elements.name_zh + '</h3></li>').appendTo($('#feature' + elements.id));
                                } else {
                                    $('<li><h3 id=' + elements.id + '>' + elements.name_zh + '</h3></li>').appendTo($('#feature' + elements.id));
                                }


                                if (elements.child_modules != null) {
                                    $.each(elements.child_modules, function (childIndex, childelements) {
                                        if (cmid == childelements.id) {
                                            cmmoId = firstChild.id;
                                        }

                                        if (sysCodeDisplayFlag == true) {
                                            $('<li><a href = ' + LOGIC.Configuration.rootPath + childelements.url + '?moduleId=' + childelements.id + ' class = "iconify" id=' + childelements.id
                                            + '><i class = "fa fa-angle-right"></i>['
                                            + childelements.code + '] ' + childelements.name_zh + '</a >').appendTo($('#feature' + elements.id));
                                        } else {
                                            $('<li><a href = ' + LOGIC.Configuration.rootPath + childelements.url + '?moduleId=' + childelements.id + ' class = "iconify" id=' + childelements.id
                                            + '><i class = "fa fa-angle-right"></i>' + childelements.name_zh + '</a >').appendTo($('#feature' + elements.id));
                                        }
                                    });
                                }
                            });
                        } else {
                            var childDivLength = 12 / childLength + 1;
                            var menuWidth = childLength * 220;
                            $('<ul class="dropdown-menu" style="min-width: ' + menuWidth + 'px"><li><div class="mega-menu-content"><div class="row" id=menuDiv' + firstChild.id + '></div></div></li></ul>').appendTo($('#menu' + firstChild.id));

                            $.each(firstChild.child_modules, function (index, elements) {
                                $('<div class="col-md-' + childDivLength + ' no-padding-right"><ul class="mega-menu-submenu" id=feature' + elements.id + '></ul></div>').appendTo('#menuDiv' + firstChild.id);

                                if (sysCodeDisplayFlag == true) {
                                    $('<li><h3 id=' + elements.id + '>[' + elements.code + '] ' + elements.name_zh + '</h3></li>').appendTo($('#feature' + elements.id));
                                } else {
                                    $('<li><h3 id=' + elements.id + '>' + elements.name_zh + '</h3></li>').appendTo($('#feature' + elements.id));
                                }

                                if (elements.child_modules != null) {
                                    $.each(elements.child_modules, function (childIndex, childelements) {

                                        if (cmid == childelements.id) {
                                            cmmoId = firstChild.id;
                                        }

                                        if (sysCodeDisplayFlag == true) {
                                            $('<li><a href = ' + LOGIC.Configuration.rootPath + childelements.url + '?moduleId=' + childelements.id + ' class = "iconify" id=' + childelements.id + '><i class = "fa fa-angle-right"></i>[' + childelements.code + '] ' + childelements.name_zh + '</a >').appendTo($('#feature' + elements.id));
                                        } else {
                                            $('<li><a href = ' + LOGIC.Configuration.rootPath + childelements.url + '?moduleId=' + childelements.id + ' class = "iconify" id=' + childelements.id + '><i class = "fa fa-angle-right"></i>' + childelements.name_zh + '</a >').appendTo($('#feature' + elements.id));
                                        }
                                    });
                                }
                            });
                        }
                    }

                } else if (type == "_A52") {
                    $('<a href=' + LOGIC.Configuration.rootPath + firstChild.url + ' id="msg_dashboard">' + firstChild.name_zh + '</a>').appendTo($('#menuHomeId'));
                }
            }
        }

        //hardcoded for now
        if (cmid == -1) {
            $("#menuHomeId").addClass("active");
        } else if (cmid >= 1 && cmmoId) {
            $("#menu" + cmmoId).addClass("active");
            $("#menuHomeId").removeClass("active");
        }
    }

    return {
        init: function() {
            includeInit();
            LOGIC.ToshibaCommonTools.setLogo('SYS_BCK_LOGO');
        }
    };
}();
