VERSION 5.00
Begin VB.Form UserAdd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "添加用户"
   ClientHeight    =   2505
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3855
   Icon            =   "frmUserAdd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2505
   ScaleWidth      =   3855
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   2340
      TabIndex        =   7
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "添加"
      Default         =   -1  'True
      Height          =   375
      Left            =   420
      TabIndex        =   6
      Top             =   1920
      Width           =   1095
   End
   Begin VB.TextBox Text3 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1710
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   1380
      Width           =   1755
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1710
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   810
      Width           =   1755
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1710
      TabIndex        =   1
      Top             =   240
      Width           =   1755
   End
   Begin VB.Label Label3 
      Caption         =   "请确认密码"
      Height          =   255
      Left            =   390
      TabIndex        =   4
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "请输入密码"
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   870
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "请输入用户名"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   300
      Width           =   1095
   End
End
Attribute VB_Name = "UserAdd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs As Recordset

Private Sub Command1_Click()
    If Trim(Text1.Text = "") Then
        MsgBox "用户名不能为空，请输入用户名！", vbOKOnly + vbExclamation, "警告"
        Text1.SetFocus
        Exit Sub
    Else
        Set Myrs = Mydb.OpenRecordset("select * from 登录 where 用户名='" & Trim(Text1) & "'")
        While (Myrs.EOF = False)
            If Trim(Myrs.Fields(0)) = Trim(Text1) Then
                MsgBox "用户已经存在，请重新输入用户名！", vbOKOnly + vbExclamation, "警告"
                Text1.SetFocus
                Text1.Text = ""
                Text2.Text = ""
                Text3.Text = ""
                Exit Sub
            Else
                Myrs.MoveNext
            End If
        Wend
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
            Myrs.AddNew
            Myrs.Fields(0) = Trim(Text1.Text)
            Myrs.Fields(1) = Trim(Text2.Text)
            Myrs.Update
            Myrs.Close
            Mydb.Close
            MsgBox "添加用户成功！", vbOKOnly + vbExclamation, "信息提示"
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
    Set Myws = DBEngine.Workspaces(0)
    Set Mydb = Myws.OpenDatabase(App.Path + "\logo.mdb")
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
        Command1.SetFocus
    End If
End Sub
