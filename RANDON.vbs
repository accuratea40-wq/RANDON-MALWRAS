Set shell = CreateObject("WScript.Shell")

Do
    msg = Array( _
        "Critical System Failure!", _
        "Unknown Exception Occurred", _
        "File System Corruption Detected", _
        "Runtime Error 0x80004005", _
        "Windows has encountered a problem", _
        "Access Violation at 0x00000000", _
        "Kernel Panic: Blue Screen Triggered", _
        "Memory Allocation Error" _
    )

    colors = Array("red", "blue", "black", "purple", "maroon", "green", "darkred", "navy")
    bg = colors(Int(Rnd * (UBound(colors) + 1)))
    text = msg(Int(Rnd * (UBound(msg) + 1)))

    command = "mshta ""javascript:var x=0,y=0,dx=10,dy=10;" & _
              "var win=window.open('','', 'width=350,height=100,top=0,left=0');" & _
              "win.document.write('<body style=\'margin:0;background:" & bg & ";color:white;font-family:sans-serif\'><h3 style=\'text-align:center;margin-top:30px\'>" & text & "</h3></body>');" & _
              "setInterval(function(){x+=dx;y+=dy;if(x>screen.width-350||x<0)dx*=-1;if(y>screen.height-100||y<0)dy*=-1;win.moveTo(x,y);},20);"""

    shell.Run command, 0, False

    WScript.Sleep 200 ' Lower = faster spam
Loop
