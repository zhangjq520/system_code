function ToastrPrompt() {
    this.options = options;
    this.toastrSuccess = toastrSuccess;
    this.toastrError = toastrError;
    this.toastrWarning = toastrWarning;
    this.toastrInfo = toastrInfo;
    this.toastrLogin = toastrLogin;

    function options() {
        toastr.options = {
            "closeButton": true,
            "progressBar": true,
            "positionClass": "toast-top-center"
        };
    }

    function toastrSuccess(msg, title) {
        options();

        if (_.isEmpty(title)) {
            toastr["success"](msg);
        } else {
            toastr["success"](title, msg);
        }
    }

    function toastrError(msg, title) {
        options();

        if (_.isEmpty(title)) {
            toastr["info"](msg);
        } else {
            toastr["info"](title, msg);
        }
    }

    function toastrWarning(msg, title) {
        options();

        if (_.isEmpty(title)) {
            toastr["warning"](msg);
        } else {
            toastr["warning"](title, msg);
        }
    }

    function toastrInfo(msg, title) {
        options();

        if (_.isEmpty(title)) {
            toastr["info"](msg)
        } else {
            toastr["info"](title, msg);
        }
    }

    function toastrLogin(msg, title) {
        options();

        if (_.isEmpty(title)) {
            toastr["warning"](msg)
        } else {
            toastr["warning"](title, msg);
        }
    }
}