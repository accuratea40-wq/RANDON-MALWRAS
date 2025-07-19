Set shell = CreateObject("WScript.Shell")

Do
    msg = Array( _
        "Critical System Failure!", _
        "Runtime Error 0x80004005", _
        "File System Corrupted!", _
        "Access Violation at 0x00000000", _
        "Kernel Panic Triggered!", _
        "Out of Memory!", _
        "Unknown Exception Occurred!", _
        "Unexpected Shutdown Detected!" _
    )

    colors = Array("red", "blue", "black", "purple", "maroon", "green", "darkred", "navy")
    bg = colors(Int(Rnd * (UBound(colors) + 1)))
    text = msg(Int(Rnd * (UBound(msg) + 1)))

    ' Escape the inner quotes cleanly
    js = "mshta.exe ""about:<script>" & _
         "var x=100,y=100,dx=10,dy=10;" & _
         "var w=window.open('','', 'width=350,height=100,left=100,top=100');" & _
         "w.document.write('<body style=\'margin:0;background:" & bg & ";color:white;font-family:sans-serif\'><h3 style=\'text-align:center;margin-top:30px\'>" & text & "</h3></body>');" & _
         "setInterval(function(){x+=dx;y+=dy;if(x>screen.width-350||x<0)dx*=-1;if(y>screen.height-100||y<0)dy*=-1;w.moveTo(x,y);},30);" & _
         "</script>"""

    shell.Run js, 0, False

    WScript.Sleep 200
Loop
