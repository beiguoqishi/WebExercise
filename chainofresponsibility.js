/**
 * Created by JetBrains WebStorm.
 * User: liupengtao
 * Date: 11-7-30
 * Time: 下午8:38
 * To change this template use File | Settings | File Templates.
 */

function extend(Sub, Parent) {
    function F() {
    }

    F.prototype = Parent.prototype;
    Sub.prototype = new F();
    Sub.prototype.constructor = Sub;
}

var DNSParser = function() {
    this.nextParser = null;
}

DNSParser.prototype = {
    setNextParser:function(parser) {
        ensureImplements(parser, DNSParser);
        this.nextParser = parser;
    },
    matchCriteria:function(domain) {
        return false;
    },
    handleDomain:function(domain) {
        if (this.matchCriteria()) {
            console.log('Handle domain ' + domain + ' successfully.');
            return true;
        } else {
            if (this.nextParser) {
                this.nextParser.handleDomain(domain);
            } else {
                console.log('You domain are illegal.')
                return false;
            }
        }
    }
}

function ChinaDNSParser() {
    ChinaDNSParser.superclass.constructor.call(this);
}

extend(ChinaDNSParser, DNSParser);

ChinaDNSParser.prototype = {
    matchCriteria:function(domain) {
        if (domain.indexOf('.cn') > -1) {
            return true;
        }
        return false;
    }
};