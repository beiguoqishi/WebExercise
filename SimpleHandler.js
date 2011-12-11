/**
 * Created by JetBrains WebStorm.
 * User: liupengtao
 * Date: 11-8-4
 * Time: 下午10:28
 * To change this template use File | Settings | File Templates.
 */
function SimpleHandler() {
}

SimpleHandler.prototype = {
    createXhrObject:function() {
        var methods = [
            function() {
                return new XMLHttpRequest();
            },
            function() {
                return new ActiveXObject("Msxml2.XMLHTTP");
            },
            function() {
                return new ActiveXObject("Microsoft.XMLHTTP");
            }
        ];

        for (var i = 0, len = methods.length; i < len; i++) {
            try {
                methods[i]();
            } catch(e) {
                continue;
            }
            this.createXhrObject = methods[i];
            return methods[i]();
        }
        throw new Error("No XHR");
    },
    request:function(method, url, callback, params) {
        var xhr = this.createXhrObject();
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4) {
                if (xhr.status >= 200 && xhr.status < 300) {
                    callback.success(xhr.responseText)
                } else {
                    callback.failure(xhr.responseText)
                }
            }
        };
        xhr.open(method, url, true);
        if (method.toLowerCase() !== 'post') {
            params = null;
        }
        xhr.send(params);
    }
};