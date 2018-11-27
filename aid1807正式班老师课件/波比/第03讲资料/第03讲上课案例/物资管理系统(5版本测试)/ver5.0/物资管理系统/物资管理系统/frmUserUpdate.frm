VERSION 5.00
Begin VB.Form UserUpdate 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "修改密码"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4410
   Icon            =   "frmUserUpdate.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4410
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.ListBox List1 
      Height          =   1860
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   2520
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   360
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   2760
      TabIndex        =   5
      Top             =   2610
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "修改"
      Default         =   -1  'True
      Height          =   375
      Left            =   660
      TabIndex        =   4
      Top             =   2610
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   2520
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   2040
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   2520
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "系统现有用户"
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "请输入旧密码"
      Height          =   375
      Left            =   2520
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "请输入新密码"
      Height          =   375
      Left            =   2520
      TabIndex        =   7
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "请确认新密码"
      Height          =   375
      Left            =   2520
      TabIndex        =   6
      Top             =   1800
      Width           =   1215
   End
End
Attribute VB_Name = "UserUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs As Recordset

Private Sub Command1_Click()
    Set Myrs = Mydb.OpenRecordset("select * from 登录 where 用户名='" + Trim(List1) + "'and 密码='" + Trim(Text1) + "'")
    If Myrs.EOF = True Then
        MsgBox "旧密码不正确，请重新输入！", vbOKOnly + vbExclamation, "警告"
        Text1.SetFocus
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Exit Sub
    End If
    If Trim(Text2.Text) <> Trim(Text3.Text) Then
        MsgBox "两次输入的密码不一样，请确认！", vbOKOnly + vbExclamation, "警告"
        Text2.SetFocus
        Text2.Text = ""
        Text3.Text = ""
        Exit Sub
    Else
        If Text2.Text = "" Then
            MsgBox "密码不能为空！", vbOKOnly + vbExclamation, "警告"
            Text2.SetFocus
            Text2.Text = ""
            Text3.Text = ""
        Else
            Myrs.Edit
            Myrs.Fields(1) = Trim(Text2.Text)
            Myrs.Update
            Myrs.Close
            Mydb.Close
            MsgBox "密码修改成功！", vbOKOnly + vbExclamation, "信息提示"
            Unload Me
        End If
    End If
End Sub

Private Sub Command2_Click()
    Mydb.Close
    Myws.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub

Private Sub Form_Load()
    Dim mrc As Recordset
    Set Myws = DBEngine.Workspaces(0)
    Set Mydb = Myws.OpenDatabase(App.Path + "\logo.mdb")
    Set mrc = Mydb.OpenRecordset("select * from 登录")
    List1.Clear
    mrc.MoveFirst
    Do While Not mrc.EOF
        List1.AddItem Trim(mrc.Fields(0))
        mrc.MoveNext
    Loop
    List1.ListIndex = 0
    mrc.Close
End Sub

