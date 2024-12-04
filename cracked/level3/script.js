var flag = '';
var addr = Module.findBaseAddress('libfoo.so').add(0xFA0);

Interceptor.attach(addr, {
    onEnter: function(args) {
        arg0 = args[0];
    },

    onLeave: function(retval) {
        length = 24;
        buff = Memory.readByteArray(arg0,length);
        var ciphertext = new Uint8Array(buff)
        var secret_key = "pizzapizzapizzapizzapizz";

        for (let i = 0; i < secret_key.length; i++) {
            let keyByte = secret_key.charCodeAt(i);
            flag += String.fromCharCode(keyByte ^ ciphertext[i])
        }
        console.log(`\n\nFLAG : ${flag}`);
    }
})