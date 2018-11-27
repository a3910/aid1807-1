Attribute VB_Name = "ComVar"
Option Explicit
Public OutPaperId As String
Public InPaperId As String
Public Function hasPoint(Num As Single) As Boolean
    Dim StrTmp As String
    StrTmp = CStr(Num)
    Dim i As Integer
    i = InStr(StrTmp, ".")
    If i = 0 Then
        hasPoint = False
    Else
        hasPoint = True
    End If
End Function
