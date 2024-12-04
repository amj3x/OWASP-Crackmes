    Java.perform(function() {
        var c = Java.use("java.lang.String");
        var d = Java.use("sg.vantagepoint.a.c");

        d.a.implementation = function() {
            return false;
        }

        d.b.implementation = function() {
            return false;
        }

        d.c.implementation = function() {
            return false;
        }
        c.equals.implementation = function(arg) {
            console.log(arg);
            return true;
        }
    })