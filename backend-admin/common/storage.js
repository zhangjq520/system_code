function Storage() {
    this.set = set;
    this.get = get;
    this.remove = remove;

    function set(key, value) {
        if( value === null ){
            remove(key);
            return;
        }

        if (typeof value == 'object') {
            value = JSON.stringify(value);
        }

        try {
            sessionStorage.setItem(key, value);
        } catch (e) {}

        //$.cookie(key, value, { path: '/' });

       	return;
    }

    function get(key) {
        var value = null;

        try {
            value = sessionStorage.getItem(key);
        } catch (e) {}
        
        //if(value == null)
        //    value = $.cookie(key);

        try {
            value = JSON.parse(value);
        } catch (e) {}

        return value;
    }

    function remove(key) {
        try {
            localStorage.removeItem(key);
        } catch (e) {}

        return $.removeCookie(key, { path: '/' });
    }
}