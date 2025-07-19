Set shell = CreateObject("WScript.Shell")

Do
    msg = Array( _
        "Critical System Failure!", _
        "Runtime Error 0x80004005", _
        "Access Violation at 0x00000000", _
        "File System Corruption Detected", _
        "Kernel Panic Triggered", _
        "Unknown Exception Occurred", _
        "Out of Memory!", _
        "Unexpected Shutdown Detected!" _
    )

    colors = Array("red", "blue", "black", "purple", "maroon", "green", "darkred", "navy")
    bg = colors(Int(Rnd * (UBound(colors) + 1)))
    text = msg(Int(Rnd * (UBound(msg) + 1)))

    jscode = "javascript:var x=0,y=0,dx=10,dy=10;" & _
        "var win=window.open('','', 'width=350,height=100,left=0,top=0');" & _
        "win.document.write('<body style=\'margin:0;background:" & bg & ";color:white;font-family:sans-serif\'><h3 style=\'text-align:center;margin-top:30px\'>" & text & "</h3></body>');" & _
        "setInterval(function(){x+=dx;y+=dy;if(x>screen.width-350||x<0)dx*=-1;if(y>screen.height-100||y<0)dy*=-1;win.moveTo(x,y);},20);"

    shell.Run "mshta.exe """ & jscode & """", 0, False

    WScript.Sleep 200
Loop
