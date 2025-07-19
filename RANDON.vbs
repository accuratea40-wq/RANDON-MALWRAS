Randomize
Do
    msg = Array( _
        "Fatal System Error", _
        "Operation could not be completed", _
        "File not found", _
        "Access Denied", _
        "Runtime Error 432", _
        "Critical Failure Detected", _
        "Unknown Exception Occurred" _
    )

    MsgBox msg(Int(Rnd * UBound(msg)+1)), vbExclamation + vbOKOnly, "System Alert"
Loop