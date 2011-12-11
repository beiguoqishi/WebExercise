/**
 * Created by JetBrains WebStorm.
 * User: liupengtao
 * Date: 11-9-6
 * Time: 上午9:23
 * To change this template use File | Settings | File Templates.
 */
function shake(el, callback, distance, time) {
    if (typeof el === 'string') el = document.getElementById(el);
    if (!distance) distance = 5;
    if (!time) time = 500;

    var originalStyle = el.style.cssText;
    var begin = new Date().getTime();
    animate();

    function animate() {
        var now = new Date().getTime();
        var elapsed = now - begin;
        var fraction = elapsed / time;
        if (fraction < 1) {
            el.style.position = 'relative';
            var x = distance * Math.sin(fraction * 4 * Math.PI);
            el.style.left = x + 'px';
            setTimeout(animate, Math.min(25, time - elapsed));
        } else {
            el.style.cssText = originalStyle;
            if (callback) callback(el);
        }
    }
}

function fadeOut(el, callback, time) {
    if (typeof el === 'string') el = document.getElementById(el);
    if (!time) time = 500;
    var begin = new Date().getTime();
    animate();

    function animate() {
        var now = new Date().getTime();
        var elapsed = now - begin;
        var fraction = elapsed / time;

        if (fraction < 1) {
            var opacity = 1 - Math.sqrt(fraction);
            if (typeof el.style.opacity === 'string') {
                el.style.opacity = opacity;
            } else {
                el.style.filter = 'alpha(opacity=' + opacity * 100 + ')';
            }
            setTimeout(animate, Math.min(25, time - elapsed));
        } else {
            el.style.opacity = '0';
            if (callback) callback(el);
        }
    }
}