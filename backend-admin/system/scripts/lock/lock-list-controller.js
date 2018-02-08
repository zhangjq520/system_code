function LockListController() {
    this.init = init;
    this.login = login;
    var previousUrl = null;

    function init(prevUrl) {
        var user_name = LOGIC.Storage.get("username");
        $('#usernameId').html(user_name);
        previousUrl = prevUrl;
    }

    function login() {
        var username = LOGIC.Storage.get("username");
        var password = $('#password').val();
        LOGIC.Services.UserService.login({
            data: {
                username: username,
                password: password
            },
            success: function(data) {

                var date = new Date();
                var h = 6;
                date.setTime(date.getTime() + (h * 60 * 60 * 1000)); // access_token will expire after 6 hours
                if ($.cookie("access_token") != null || $.cookie("access_token") != '') {
                    $.removeCookie('access_token', {
                        path: '/'
                    });
                }
                $.cookie('access_token', 'Bearer ' + data.access_token, {
                    expires: date,
                    path: '/'
                });

                window.location.href = previousUrl;
            },
            error: function(jqXHR) {
               bootbox.dialog({
                    size: 'small',
                    message: "Wrong username or password",
                    title: "Login Failed",
                    buttons: {
                        "Try Again": {
                            className: "btn-danger",
                            callback: function() {}
                        }
                    }
                });
            }
        });

    }
}
