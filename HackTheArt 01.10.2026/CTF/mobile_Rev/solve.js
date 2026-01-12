console.log("[*] Starting Frida Script...");

Java.perform(function () {
  var MainActivity = Java.use("com.example.ctfchall.MainActivity");


  Java.choose("com.example.ctfchall.MainActivity", {
    onMatch: function (instance) {
      console.log("\n[+] Found a running instance of MainActivity!");


      var extractedKey = instance.sessionKey.value;

      console.log("[+] The Hidden Session Key is: " + extractedKey);
      console.log("[*] Enter this number into the app to decrypt the flag.\n");
    },

    onComplete: function () {
      console.log("[*] Heap scan complete.");
    },
  });
});
