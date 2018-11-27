VERSION 5.00
Begin VB.Form frmOrigin 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "原始数据输入"
   ClientHeight    =   4575
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6705
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4575
   ScaleWidth      =   6705
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command3 
      Caption         =   "退出"
      Height          =   375
      Left            =   4680
      TabIndex        =   19
      Top             =   3960
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   2640
      TabIndex        =   18
      Top             =   3960
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "添加"
      Height          =   375
      Left            =   720
      TabIndex        =   17
      Top             =   3960
      Width           =   1095
   End
   Begin VB.Frame Frame2 
      Caption         =   "备注"
      Height          =   855
      Left            =   240
      TabIndex        =   15
      Top             =   2880
      Width           =   6255
      Begin VB.TextBox Text8 
         Height          =   495
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   16
         Top             =   240
         Width           =   6015
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "输入原始数据"
      Height          =   2655
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   6255
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   1200
         TabIndex        =   14
         Top             =   2160
         Width           =   1695
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   3960
         TabIndex        =   12
         Top             =   1560
         Width           =   1695
      End
      Begin VB.TextBox Text5 
         Height          =   405
         Left            =   1200
         TabIndex        =   10
         Top             =   1560
         Width           =   1695
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   3960
         TabIndex        =   8
         Top             =   960
         Width           =   1695
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1200
         TabIndex        =   6
         Top             =   960
         Width           =   1695
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   3960
         TabIndex        =   4
         Top             =   360
         Width           =   1695
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1200
         TabIndex        =   2
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label7 
         Caption         =   "金    额(元)"
         Height          =   255
         Left            =   360
         TabIndex        =   13
         Top             =   2220
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "单    价(元)"
         Height          =   255
         Left            =   3120
         TabIndex        =   11
         Top             =   1620
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "数    量"
         Height          =   255
         Left            =   360
         TabIndex        =   9
         Top             =   1635
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "计量单位"
         Height          =   255
         Left            =   3120
         TabIndex        =   7
         Top             =   1020
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "规格型号"
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   1020
         Width           =   855
      End
      Begin VB.Label Label2 
         Caption         =   "材料名称"
         Height          =   255
         Left            =   3120
         TabIndex        =   3
         Top             =   420
         Width           =   855
      End
      Begin VB.Label Label1 
         Caption         =   "材料编码"
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   420
         Width           =   855
      End
   End
End
Attribute VB_Name = "frmOrigin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs As Recordset

Private Sub Command1_Click()
    If Text1.Text = "" Then
        MsgBox "请输入材料编码!", , "信息提示"
        Text1.SetFocus
        Exit Sub
    End If
    While (Myrs.EOF = False)
        If Trim(Myrs.Fields(0)) = Trim(Text1) Then
            MsgBox "已经存在此材料编码的记录!", vbOKOnly + vbExclamation, "警告"
            Text1.SetFocus
            Text1.Text = ""
            Text2.Text = ""
            Text3.Text = ""
            Text4 = ""
            Text5 = ""
            Text6 = ""
            Text7 = ""
            Text8 = ""
            Exit Sub
        Else
            Myrs.MoveNext
        End If
    Wend
    If Text2.Text = "" Then
        MsgBox "请输入材料名称!", , "信息提示"
        Text2.SetFocus
        Exit Sub
    End If
    If Text3.Text = "" Then
        MsgBox "请输入规格型号!", , "信息提示"
        Text3.SetFocus
        Exit Sub
    End If
    If Text4.Text = "" Then
        MsgBox "请输入计量单位!", , "信息提示"
        Text4.SetFocus
        Exit Sub
    End If
    If Text5.Text = "" Then
        MsgBox "数量字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text5.SetFocus
        Exit Sub
    Else
        If Not IsNumeric(Text5.Text) Then
            MsgBox "数量字段值为数字,请正确填写！", vbOKOnly + vbExclamation, "警告"
            Text5.Text = ""
            Text5.SetFocus
            Exit Sub
        End If
    End If
    If Text6.Text = "" Then
        MsgBox "单价字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text6.SetFocus
        Exit Sub
    Else
        If IsNumeric(Text6.Text) Then
            Text6.Text = Format(Text6.Text, "#0.00")
        Else
            MsgBox "单价字段值为数字,请正确填写！", vbOKOnly + vbExclamation, "警告"
            Text6.Text = ""
            Text6.SetFocus
            Exit Sub
        End If
    End If
    If Text7.Text = "" Then
        MsgBox "金额字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text7.SetFocus
        Exit Sub
    Else
        If IsNumeric(Text7.Text) Then
            Text7.Text = Format(Text6.Text, "#0.00")
        Else
            MsgBox "金额字段值为数字,请正确填写！", vbOKOnly + vbExclamation, "警告"
            Text7.Text = ""
            Text7.SetFocus
            Exit Sub
        End If
    End If
    Myrs.AddNew
    Myrs.Fields(0) = Trim(Text1.Text)
    Myrs.Fields(1) = Trim(Text2.Text)
    Myrs.Fields(2) = Trim(Text3.Text)
    Myrs.Fields(3) = Trim(Text4.Text)
    Myrs.Fields(4) = Val(Trim(Text5))
    Myrs.Fields(5) = Val(Trim(Text6))
    Myrs.Fields(6) = Val(Trim(Text7))
    If Trim(Text8.Text & "") = "" Then
        Myrs.Fields(7) = Null
    Else
        Myrs.Fields(7) = Trim(Text8)
    End If
    Myrs.Update
    MsgBox "添加材料基本信息成功！", vbOKOnly, "信息提示"
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    Text6.Text = ""
    Text7.Text = ""
    Text8.Text = ""
    Exit Sub
End Sub

Private Sub Command2_Click()
    Text1 = ""
    Text2 = ""
    Text3 = ""
    Text4 = ""
    Text5 = ""
    Text6 = ""
    Text7 = ""
    Text8 = ""
End Sub

Private Sub Command3_Click()
    Myrs.Close
    Mydb.Close
    Unload Me
End Sub

Private Sub Form_Load()
    Set Myws = DBEngine.Workspaces(0)
    Set Mydb = Myws.OpenDatabase(App.Path + "\store.mdb")
    Set Myrs = Mydb.OpenRecordset("select * from msurplus")
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text2.SetFocus
    End If
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text3.SetFocus
    End If
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text4.SetFocus
    End If
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text5.SetFocus
    End If
End Sub

Private Sub Text5_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text6.SetFocus
    End If
End Sub

Private Sub Text6_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text7.SetFocus
    End If
End Sub

Private Sub Text7_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text8.SetFocus
    End If
End Sub

Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub
