VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form InFind 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "������Ϣ�б�"
   ClientHeight    =   5895
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5625
   Icon            =   "frmInFind.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5895
   ScaleWidth      =   5625
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command3 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   3270
      TabIndex        =   11
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   1200
      TabIndex        =   10
      Top             =   5280
      Width           =   855
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   3615
      Left            =   120
      TabIndex        =   7
      Top             =   1440
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   6376
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "��ѯ����"
      Height          =   1395
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   5445
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   3480
         TabIndex        =   9
         Top             =   840
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         _Version        =   393216
         Format          =   26935297
         CurrentDate     =   37496
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   1680
         TabIndex        =   8
         Top             =   840
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         _Version        =   393216
         Format          =   26935297
         CurrentDate     =   37496
      End
      Begin VB.CommandButton Command1 
         Caption         =   "����"
         Height          =   405
         Left            =   4080
         TabIndex        =   4
         Top             =   270
         Width           =   885
      End
      Begin VB.OptionButton Option1 
         Caption         =   "��ֹʱ�䣺��"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   960
         Width           =   1455
      End
      Begin VB.OptionButton Option2 
         Caption         =   "���ⵥ����"
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   360
         Width           =   1335
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         Left            =   1680
         TabIndex        =   1
         Top             =   360
         Width           =   1365
      End
      Begin VB.Label Label2 
         Caption         =   "��"
         Height          =   315
         Left            =   3240
         TabIndex        =   6
         Top             =   930
         Width           =   285
      End
      Begin VB.Label Label1 
         Height          =   315
         Left            =   270
         TabIndex        =   5
         Top             =   945
         Width           =   1095
      End
   End
End
Attribute VB_Name = "InFind"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Mydb As Database
Dim myrecordset As Recordset

Private Sub Command1_Click()
    If Option2.Value = True Then
        MSFlexGrid1.Clear
        MSFlexGrid1.Rows = 1
        MSFlexGrid1.TextMatrix(0, 0) = "���ⵥ����"
        MSFlexGrid1.TextMatrix(0, 1) = "��������"
        Set myrecordset = Mydb.OpenRecordset("select * from inlib where ���ⵥ����='" & Trim(Combo1) & "'")
        Do While Not myrecordset.EOF
            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
            MSFlexGrid1.Col = 0
            MSFlexGrid1.Text = myrecordset.Fields("���ⵥ����")
            MSFlexGrid1.Col = 1
            MSFlexGrid1.Text = myrecordset.Fields("��������")
            myrecordset.MoveNext
        Loop
        myrecordset.Close
    End If
    If Option1.Value = True Then
        If DTPicker1.Value = "" Then
            MsgBox "����д�˴β�ѯ�Ľ������ڿ�ʼʱ�䣡", vbOKOnly + vbExclamation, "����"
            Exit Sub
        End If
        If DTPicker2.Value = "" Then
            MsgBox "����д�˴β�ѯ�Ľ������ڽ���ʱ�䣡", vbOKOnly + vbExclamation, "����"
            Exit Sub
        End If
        MSFlexGrid1.Clear
        MSFlexGrid1.Rows = 1
        MSFlexGrid1.TextMatrix(0, 0) = "���ⵥ����"
        MSFlexGrid1.TextMatrix(0, 1) = "��������"
        Set myrecordset = Mydb.OpenRecordset("select * from inlib where ��������>=#" & DTPicker1.Value & "# and ��������<= #" & DTPicker2.Value & "# order by ��������")
        Do While Not myrecordset.EOF
            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
            MSFlexGrid1.Col = 0
            MSFlexGrid1.Text = myrecordset.Fields("���ⵥ����")
            MSFlexGrid1.Col = 1
            MSFlexGrid1.Text = myrecordset.Fields("��������")
            myrecordset.MoveNext
        Loop
        myrecordset.Close
    End If
End Sub

Private Sub Command2_Click()
    MSFlexGrid1.Col = 0
    InPaperId = MSFlexGrid1.Text
    Unload Me
End Sub

Private Sub Command3_Click()
    Unload Me
    Project.StatusBar1.Panels(2).Text = "�༭���ⵥ"
End Sub

Private Sub Form_Load()
    MSFlexGrid1.Col = 0
    MSFlexGrid1.Row = 0
    MSFlexGrid1.Text = "���ⵥ����"
    MSFlexGrid1.Col = 1
    MSFlexGrid1.Text = "��������"
    MSFlexGrid1.Rows = 1
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    Set myrecordset = Mydb.OpenRecordset("select * from inlib")
    Option2.Value = True
    Do While Not myrecordset.EOF
        Combo1.AddItem myrecordset.Fields("���ⵥ����")
        MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
        MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
        MSFlexGrid1.Col = 0
        MSFlexGrid1.Text = myrecordset.Fields("���ⵥ����")
        MSFlexGrid1.Col = 1
        MSFlexGrid1.Text = myrecordset.Fields("��������")
        myrecordset.MoveNext
    Loop
    If Combo1.ListCount > 0 Then
        Combo1.ListIndex = 0
    Else
        Exit Sub
    End If
    myrecordset.Close
End Sub

Private Sub MSFlexGrid1_DblClick()
    Call Command2_Click
End Sub

