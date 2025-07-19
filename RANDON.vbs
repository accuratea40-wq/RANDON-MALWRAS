Set shell = CreateObject("WScript.Shell")

Do
    shell.Run "mshta.exe ""about:<script>
    var x = 100, y = 100, dx = 10, dy = 10;
    var w = window.open('', '', 'width=300,height=150,left='+x+',top='+y+',resizable=no');
    w.document.write('<body style=background:#fff;font-family:sans-serif;margin:0><h3 style=padding:20px;color:red>💥 SYSTEM ERROR 💥</h3></body>');
    function move() {
        x += dx; y += dy;
        if (x > screen.width - 300 || x < 0) dx = -dx;
        if (y > screen.height - 150 || y < 0) dy = -dy;
        w.moveTo(x, y);
        setTimeout(move, 20);
    }
    move();
    </script>"""
Loop
