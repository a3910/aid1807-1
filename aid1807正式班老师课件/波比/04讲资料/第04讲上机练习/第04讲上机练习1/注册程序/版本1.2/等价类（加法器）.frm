VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "信息注册"
   ClientHeight    =   4200
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4200
   ScaleWidth      =   7200
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command3 
      Appearance      =   0  'Flat
      Cancel          =   -1  'True
      Caption         =   "退出"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      TabIndex        =   8
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      Caption         =   "重置"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3000
      TabIndex        =   7
      Top             =   3360
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      MaxLength       =   20
      TabIndex        =   1
      Top             =   720
      Width           =   3855
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   2
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      Caption         =   "注册"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1440
      TabIndex        =   5
      Top             =   3360
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   2400
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   2520
      Width           =   3855
   End
   Begin VB.Label Label1 
      Caption         =   "注册信息"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   480
      TabIndex        =   9
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "信息注册"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   2520
      TabIndex        =   6
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "年龄"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   480
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "姓名"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   480
      TabIndex        =   0
      Top             =   840
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'If Val(Text1.Text) >= 99 Or Val(Text1.Text) <= -99 Then
'    MsgBox "输入的参数值必须大于-100同时小于100", vbCritical, "错误提示"
'    Text1.SetFocus
'ElseIf Val(Text2.Text) >= 99 Or Val(Text2.Text) <= -99 Then
'        MsgBox "输入的参数值必须大于-100同时小于100", vbCritical, "错误提示"
'        Text2.SetFocus
'ElseIf Text1.Text = "" Then
'     MsgBox "第一个数据不能为空", vbCritical + vbOKOnly, "错误提示"
'    Text1.SetFocus
'ElseIf IsNumeric(Text1.Text) = False Then
'        MsgBox "第一个数据非法", vbCritical + vbOKOnly, "错误提示"
'        Text1.SetFocus
'
'ElseIf Val(Text1.Text) <> Int(Text1.Text) Then
'        MsgBox "第一个数不能为小数", vbCritical + vbOKOnly, "错误提示"
'        Text1.SetFocus
'
'ElseIf Text2.Text = "" Then
'     MsgBox "第二个数据不能为空", vbCritical + vbOKOnly, "错误提示"
'    Text2.SetFocus
'ElseIf IsNumeric(Text2.Text) = False Then
'    MsgBox "第二个数据非法", vbCritical + vbOKOnly, "错误提示"
'    Text2.SetFocus
'ElseIf Val(Text2.Text) <> Int(Text2.Text) Then
'        MsgBox "第二个数不能为小数", vbCritical + vbOKOnly, "错误提示"
'        Text2.SetFocus
'Else
'    Text3.Text = Val(Text1.Text) + Val(Text2.Text)
'End If

'If Text1.Text = "" Then
    'MsgBox "姓名不能为空！", vbCritical + vbOKOnly, "错误提示"
    'Text1.SetFocus
    
If Len(Text1.Text) > 20 Then
    MsgBox "姓名不能超过20个字符！", vbCritical + vbOKOnly, "错误提示"
    Text1.SetFocus
ElseIf Len(Text1.Text) < 1 Then
    MsgBox "姓名不能为空！", vbCritical + vbOKOnly, "错误提示"
    Text1.SetFocus
    
ElseIf IsNumeric(Text1.Text) = True Then
    MsgBox "姓名不能包含数字！", vbCritical + vbOKOnly, "错误提示"
    Text1.SetFocus
ElseIf Text2.Text = "" Then
    MsgBox "年龄不能为空！", vbCritical + vbOKOnly, "错误提示"
    Text1.SetFocus
ElseIf IsNumeric(Text2.Text) = False Then
    MsgBox "年龄非法！", vbCritical + vbOKOnly, "错误提示"
    Text2.SetFocus
ElseIf Val(Text2.Text) <> Int(Text2.Text) Then
    MsgBox "年龄不能为小数！", vbCritical + vbOKOnly, "错误提示"
    Text2.SetFocus
    
ElseIf Text2.Text < 18 Or Text2.Text > 60 Then
    MsgBox "年龄不能小于18或大于60！", vbCritical + vbOKOnly, "错误提示"
    Text2.SetFocus
    
Else
    MsgBox "姓名：" & Text1.Text & ",年龄：" & Text2.Text & ",注册成功！", vbInformation + vbOKOnly, "注册成功"
    Text3.Text = Text1.Text + "," + Text2.Text
End If

End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text1.SetFocus

End Sub

Private Sub Command3_Click()
flag = MsgBox("是否退出?", vbInformation + vbOKCancel, "退出提示")
If flag = vbOK Then
    Unload Me
End If

End Sub

