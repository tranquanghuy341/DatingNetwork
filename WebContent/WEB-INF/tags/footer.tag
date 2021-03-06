<%@tag description="Footer Page template" pageEncoding="UTF-8"%>
<script src="public/js/jquery-2.1.1.js"></script>
<script src="public/js/bootstrap.min.js"></script>
<script src="public/js/plugins/iCheck/icheck.min.js"></script>
<script src="public/js/plugins/toastr/toastr.min.js"></script>
<script src="public/js/plugins/ckeditor/ckeditor.js"></script>
<script src="public/js/cookie.js"></script>
<script src="public/js/notify.min.js"></script>

<script>
function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
function removeCookie( name, path, domain ) {
	document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
var createCookie = function(name, value, days) {
    var expires;
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    }
    else {
        expires = "";
    }
    document.cookie = name + "=" + value + expires + "; path=/";
}
</script>