Attribute VB_Name = "M_Develop"
'@Folder("Database")
Option Compare Database
Option Explicit

#If DEBUG_MODE Then







Sub debugPrintDev(x As Variant)
    #If Not CBool(DEBUG_MODE) Then
        MsgBox "DEBUG_MODE‚Å‚Í‚È‚¢‚½‚ß‚±‚ÌƒR[ƒh‚ğíœ‚µ‚Ä‚­‚¾‚³‚¢"
        Exit Sub
    #End If
    Debug.Print Now & " " & CStr(x)
End Sub


#End If
