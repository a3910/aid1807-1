VERSION 5.00
Begin VB.Form UserDel 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "删除用户"
   ClientHeight    =   2400
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4125
   Icon            =   "frmUserDel.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2400
   ScaleWidth      =   4125
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox Text1 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   2040
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   600
      Width           =   1815
   End
   Begin VB.ListBox List1 
      Height          =   1500
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   1920
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "删除"
      Default         =   -1  'True
      Height          =   375
      Left            =   2880
      TabIndex        =   0
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "请输入所选用户的密码"
      Height          =   255
      Left            =   2040
      TabIndex        =   4
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "系统现有用户"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "UserDel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs As Recordset

Private Sub Command1_Click()
    If (List1.ListCount = 1) Then
        MsgBox "删除无效，系统必须有一个用户！", vbOKOnly + vbExclamation, "信息提示"
        Mydb.Close
        Unload Me
    Else
        Set Myrs = Mydb.OpenRecordset("select * from 登录 where 用户名='" + Trim(List1) + "'and 密码='" + Trim(Text1) + "'")
        If Myrs.EOF = True Then
            MsgBox "密码错误，请重新输入密码！", vbOKOnly + vbExclamation, "警告"
            Text1.SetFocus
            Text1.Text = ""
        Else
            Myrs.Delete
            Myrs.MoveNext
            MsgBox "删除用户成功！", vbOKOnly + vbExclamation, "信息提示"
            Myrs.Close
            Mydb.Close
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

