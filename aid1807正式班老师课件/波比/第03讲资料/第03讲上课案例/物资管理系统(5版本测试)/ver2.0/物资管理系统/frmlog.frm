VERSION 5.00
Begin VB.Form Log 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��¼"
   ClientHeight    =   2355
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3525
   Icon            =   "frmlog.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2355
   ScaleWidth      =   3525
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton cmdcancel 
      Caption         =   "ȡ��"
      Height          =   375
      Left            =   2160
      TabIndex        =   5
      Top             =   1680
      Width           =   975
   End
   Begin VB.CommandButton cmdok 
      Caption         =   "ȷ��"
      Default         =   -1  'True
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   1680
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1080
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   960
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   240
      Width           =   2055
   End
   Begin VB.Label lblpassword 
      Caption         =   "��  ��"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1020
      Width           =   615
   End
   Begin VB.Label lblname 
      Caption         =   "�û���"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   300
      Width           =   615
   End
End
Attribute VB_Name = "Log"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs As Recordset
Dim miCount As Integer

Private Sub cmdCancel_Click()
    Mydb.Close
    Myws.Close
    Unload Me
End Sub

Private Sub cmdOK_Click()
    If Trim(Text1.Text = "") Then
        MsgBox "û������û��������������û�����", vbOKOnly + vbExclamation, "����"
        Text1.SetFocus
        Text2 = ""
    Else
        Set Myrs = Mydb.OpenRecordset("select * from ��¼ where �û���='" & Trim(Text1) & "'")
        If Myrs.EOF = True Then
            MsgBox "û������û��������������û�����", vbOKOnly + vbExclamation, "����"
            Text1.SetFocus
            Text1.Text = ""
            Text2.Text = ""
        Else
            If Trim(Myrs.Fields(1)) = Trim(Text2.Text) Then
                Project.Show
                Myrs.Close
                �û��� = Trim(Text1.Text)
                Mydb.Close
                Unload Me
            Else
                MsgBox "�������벻��ȷ�����������룡", vbOKOnly + vbExclamation, "����"
                Text2.SetFocus
                Text2.Text = ""
            End If
        End If
        
    End If
    miCount = miCount + 1
    If miCount = 5 Then
        Unload Me
    End If
    Exit Sub
End Sub

Private Sub Form_Load()
    Set Myws = DBEngine.Workspaces(0)
    Set Mydb = Myws.OpenDatabase(App.Path + "\logo.mdb")
    miCount = 0
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text2.SetFocus
    End If
End Sub
