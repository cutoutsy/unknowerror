/**
 * @file 登录处理
 */
window.layui.define(function (exports) {
    function getCookie(name) {
        var arr;
        var reg = new RegExp('(^| )' + name + '=([^;]*)(;|$)');
        if (arr = document.cookie.match(reg)) {
            return decodeURIComponent(arr[2]);
        } else {
            return null;
        }
    }

    function delCookie(name) {
        var exp = new Date();
        exp.setTime(exp.getTime() - 1);
        var cval = getCookie(name);
        if (cval != null) {
            document.cookie = name + '=' + cval + ';path=/;expires=' + exp.toGMTString();
        }
    }

    function getLoginInfo() {
        var pwindow = window.parent;
        var fromUrl = '';
        if (pwindow) {
            fromUrl = window.parent.location.href;
        } else {
            fromUrl = window.location.href;
        }
        var userId = getCookie('user_id');
        if (userId == null) {
            window.location.href = '/login.html?from=' + encodeURIComponent(fromUrl);
            // return {'user_id': 123456, 'user_realname': '冯小川'};
        }
        return {'user_id': userId, 'user_realname': getCookie('user_realname')};
    }

    function logout() {
        delCookie('user_id');
        delCookie('user_realname');
        var pwindow = window.parent;
        var fromUrl = '';
        if (pwindow) {
            fromUrl = window.parent.location.href;
        } else {
            fromUrl = window.location.href;
        }
        window.location.href = '/login.html?from=' + encodeURIComponent(fromUrl);
    }

    exports('loginAccess', {'loginInfo': getLoginInfo, 'logout': logout});
});
