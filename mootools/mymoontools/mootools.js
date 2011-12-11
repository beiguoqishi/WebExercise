/**
 * Created by JetBrains WebStorm.
 * User: liupengtao
 * Date: 11-9-14
 * Time: 下午8:51
 * To change this template use File | Settings | File Templates.
 */
var enumerables = ['hasOwnProperty', 'valueOf', 'isPrototypeOf', 'propertyIsEnumerable', 'toLocaleString', 'toString', 'constructor'];

Function.prototype.overloadSetter = function() {
    var self = this;
    return function(a, b) {
        if (typeof a !== 'string') {
            for (var k in a) self.call(this, k, a[k]);
            if (enumerables) {
                for (var i = enumerables.length; i--;) {
                    k = enumerables[i];
                    if (a.hasOwnProperty(k))
                        self.call(this, k, a[k]);
                }
            }
        } else {
            self.call(this, a, b);
        }
        return this;
    }
};

Function.prototype.overloadGetter = function() {
    var self = this;
    return function(a) {
        var args,result;
        if (typeof a !== 'string') args = a;
        else if (arguments.length > 1) args = arguments;

        if (args) {
            result = {};
            for (var i = args.length; i--;) {
                var k = args[i];
                result[k] = self.call(this, k);
            }
        } else {
            result = self.call(this, a);
        }
        return result;
    }
};