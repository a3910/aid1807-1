VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "��Ϣע��"
   ClientHeight    =   4200
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4200
   ScaleWidth      =   7200
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command3 
      Appearance      =   0  'Flat
      Cancel          =   -1  'True
      Caption         =   "�˳�"
      BeginProperty Font 
         Name            =   "����"
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
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "����"
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
         Name            =   "����"
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
         Name            =   "����"
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
      Caption         =   "ע��"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "����"
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
         Name            =   "����"
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
      Caption         =   "ע����Ϣ"
      BeginProperty Font 
         Name            =   "����"
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
      Caption         =   "��Ϣע��"
      BeginProperty Font 
         Name            =   "����"
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
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "����"
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
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "����"
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
'    MsgBox "����Ĳ���ֵ�������-100ͬʱС��100", vbCritical, "������ʾ"
'    Text1.SetFocus
'ElseIf Val(Text2.Text) >= 99 Or Val(Text2.Text) <= -99 Then
'        MsgBox "����Ĳ���ֵ�������-100ͬʱС��100", vbCritical, "������ʾ"
'        Text2.SetFocus
'ElseIf Text1.Text = "" Then
'     MsgBox "��һ�����ݲ���Ϊ��", vbCritical + vbOKOnly, "������ʾ"
'    Text1.SetFocus
'ElseIf IsNumeric(Text1.Text) = False Then
'        MsgBox "��һ�����ݷǷ�", vbCritical + vbOKOnly, "������ʾ"
'        Text1.SetFocus
'
'ElseIf Val(Text1.Text) <> Int(Text1.Text) Then
'        MsgBox "��һ��������ΪС��", vbCritical + vbOKOnly, "������ʾ"
'        Text1.SetFocus
'
'ElseIf Text2.Text = "" Then
'     MsgBox "�ڶ������ݲ���Ϊ��", vbCritical + vbOKOnly, "������ʾ"
'    Text2.SetFocus
'ElseIf IsNumeric(Text2.Text) = False Then
'    MsgBox "�ڶ������ݷǷ�", vbCritical + vbOKOnly, "������ʾ"
'    Text2.SetFocus
'ElseIf Val(Text2.Text) <> Int(Text2.Text) Then
'        MsgBox "�ڶ���������ΪС��", vbCritical + vbOKOnly, "������ʾ"
'        Text2.SetFocus
'Else
'    Text3.Text = Val(Text1.Text) + Val(Text2.Text)
'End If

'If Text1.Text = "" Then
    'MsgBox "��������Ϊ�գ�", vbCritical + vbOKOnly, "������ʾ"
    'Text1.SetFocus
    
If Len(Text1.Text) > 20 Then
    MsgBox "�������ܳ���20���ַ���", vbCritical + vbOKOnly, "������ʾ"
    Text1.SetFocus
ElseIf Len(Text1.Text) < 1 Then
    MsgBox "��������Ϊ�գ�", vbCritical + vbOKOnly, "������ʾ"
    Text1.SetFocus
    
ElseIf IsNumeric(Text1.Text) = True Then
    MsgBox "�������ܰ������֣�", vbCritical + vbOKOnly, "������ʾ"
    Text1.SetFocus
ElseIf Text2.Text = "" Then
    MsgBox "���䲻��Ϊ�գ�", vbCritical + vbOKOnly, "������ʾ"
    Text1.SetFocus
ElseIf IsNumeric(Text2.Text) = False Then
    MsgBox "����Ƿ���", vbCritical + vbOKOnly, "������ʾ"
    Text2.SetFocus
ElseIf Val(Text2.Text) <> Int(Text2.Text) Then
    MsgBox "���䲻��ΪС����", vbCritical + vbOKOnly, "������ʾ"
    Text2.SetFocus
    
ElseIf Text2.Text < 18 Or Text2.Text > 60 Then
    MsgBox "���䲻��С��18�����60��", vbCritical + vbOKOnly, "������ʾ"
    Text2.SetFocus
    
Else
    MsgBox "������" & Text1.Text & ",���䣺" & Text2.Text & ",ע��ɹ���", vbInformation + vbOKOnly, "ע��ɹ�"
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
flag = MsgBox("�Ƿ��˳�?", vbInformation + vbOKCancel, "�˳���ʾ")
If flag = vbOK Then
    Unload Me
End If

End Sub

