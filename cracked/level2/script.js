    Java.perform(function() {
        var c = Java.use("java.lang.String");
        var b = Java.use("sg.vantagepoint.a.b");

        b.a.implementation = function() {
            return false;
        }

        b.b.implementation = function() {
            return false;
        }

        b.c.implementation = function() {
            return false;
        }
        // c.equals.implementation = function(arg) {
        //     console.log(arg);
        //     return true;
        // }
    })

// var bar = Module.enumerateExports("libfoo.so")[0]['address']
var bar = Module.findExportByName("libc.so", "strncmp");
Interceptor.attach(bar, {
    onEnter: function (args) {
        var flag = Memory.readUtf8String(args[1])
        console.log(flag);

    },
    onLeave: function (retval) {
    }
});
