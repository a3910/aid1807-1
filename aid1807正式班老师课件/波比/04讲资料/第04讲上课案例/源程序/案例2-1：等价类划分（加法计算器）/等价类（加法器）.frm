VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "两位数加法器"
   ClientHeight    =   4200
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5280
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4200
   ScaleWidth      =   5280
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton Command3 
      Appearance      =   0  'Flat
      Cancel          =   -1  'True
      Caption         =   "退出(&E)"
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
      Left            =   3600
      TabIndex        =   9
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Appearance      =   0  'Flat
      Caption         =   "重置(&C)"
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
      Left            =   2040
      TabIndex        =   8
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
      Left            =   2040
      TabIndex        =   1
      Top             =   720
      Width           =   2055
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
      Left            =   2040
      TabIndex        =   2
      Top             =   1560
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      Caption         =   "计算(&J)"
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
      Left            =   480
      TabIndex        =   6
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
      Height          =   495
      Left            =   2040
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   2520
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "两位整数加法计算器"
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
      Left            =   840
      TabIndex        =   7
      Top             =   240
      Width           =   3495
   End
   Begin VB.Label Label1 
      Caption         =   "结    果"
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
      Left            =   120
      TabIndex        =   5
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "第二个数"
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
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "第一个数"
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
      Left            =   120
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
If Val(Text1.Text) >= 99 Or Val(Text1.Text) <= -99 Then
    MsgBox "输入的参数值必须大于-100同时小于100", vbCritical, "错误提示"
    Text1.SetFocus
ElseIf Val(Text2.Text) >= 99 Or Val(Text2.Text) <= -99 Then
        MsgBox "输入的参数值必须大于-100同时小于100", vbCritical, "错误提示"
        Text2.SetFocus
ElseIf Text1.Text = "" Then
     MsgBox "第一个数据不能为空", vbCritical + vbOKOnly, "错误提示"
    Text1.SetFocus
ElseIf IsNumeric(Text1.Text) = False Then
        MsgBox "第一个数据非法", vbCritical + vbOKOnly, "错误提示"
        Text1.SetFocus

ElseIf Val(Text1.Text) <> Int(Text1.Text) Then
        MsgBox "第一个数不能为小数", vbCritical + vbOKOnly, "错误提示"
        Text1.SetFocus

ElseIf Text2.Text = "" Then
     MsgBox "第二个数据不能为空", vbCritical + vbOKOnly, "错误提示"
    Text2.SetFocus
ElseIf IsNumeric(Text2.Text) = False Then
    MsgBox "第二个数据非法", vbCritical + vbOKOnly, "错误提示"
    Text2.SetFocus
ElseIf Val(Text2.Text) <> Int(Text2.Text) Then
        MsgBox "第二个数不能为小数", vbCritical + vbOKOnly, "错误提示"
        Text2.SetFocus
Else
    Text3.Text = Val(Text1.Text) + Val(Text2.Text)
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
