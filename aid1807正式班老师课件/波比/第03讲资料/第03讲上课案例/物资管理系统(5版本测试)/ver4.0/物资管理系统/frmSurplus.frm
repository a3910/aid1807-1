VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Surplus 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�����Ϣ"
   ClientHeight    =   5265
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7380
   Icon            =   "frmSurplus.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5265
   ScaleWidth      =   7380
   StartUpPosition =   2  '��Ļ����
   Begin VB.Frame Frame1 
      Caption         =   "��ѯ����"
      Height          =   1395
      Left            =   120
      TabIndex        =   1
      Top             =   90
      Width           =   7125
      Begin VB.CommandButton Command2 
         Caption         =   "�˳�"
         Height          =   375
         Left            =   5550
         TabIndex        =   7
         Top             =   810
         Width           =   1035
      End
      Begin VB.CommandButton Command1 
         Caption         =   "����"
         Height          =   375
         Left            =   5550
         TabIndex        =   6
         Top             =   300
         Width           =   1035
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2040
         TabIndex        =   5
         Top             =   855
         Width           =   1725
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2040
         TabIndex        =   4
         Top             =   390
         Width           =   1725
      End
      Begin VB.CheckBox Check2 
         Caption         =   "����ͺ�"
         Height          =   405
         Left            =   450
         TabIndex        =   3
         Top             =   810
         Width           =   1395
      End
      Begin VB.CheckBox Check1 
         Caption         =   "��������"
         Height          =   435
         Left            =   450
         TabIndex        =   2
         Top             =   330
         Width           =   1395
      End
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   3555
      Left            =   120
      TabIndex        =   0
      Top             =   1590
      Width           =   7155
      _ExtentX        =   12621
      _ExtentY        =   6271
      _Version        =   393216
   End
End
Attribute VB_Name = "Surplus"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim db As Database
    Dim Myrs1 As Recordset, Myrs2 As Recordset
    Dim txtSQL As String
    Dim sSQL As String
    
    Set db = OpenDatabase(App.Path + "\store.mdb")
    If Check1.Value = vbChecked Then
        sSQL = "goodsname='" & Trim((Combo1) & "") & "'"
    End If
    If Check2.Value = vbChecked Then
        If Trim(sSQL & "") = "" Then
            sSQL = "type='" & Trim((Combo2) & "") & "'"
        Else
            sSQL = sSQL & "and type='" & Trim((Combo2) & "") & "'"
        End If
    End If
    If Trim(sSQL) = "" Then
        MsgBox "�����ò�ѯ��ʽ��", vbOKOnly + vbExclamation, "����"
        Exit Sub
    Else
        MSFlexGrid1.Rows = 1
        Set Myrs2 = db.OpenRecordset("select * from goods where " & sSQL & "")
        If Myrs2.RecordCount >= 1 Then
            While Myrs2.EOF = False
                Set Myrs1 = db.OpenRecordset("select * from goods,msurplus where goodsid='" & Myrs2.Fields("goodsid") & "' and ���ϱ���='" & Myrs2.Fields("goodsid") & "'")
                If Myrs1.RecordCount >= 1 Then
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = Myrs1.Fields("goodsid")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = Myrs1.Fields("goodsname")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = Myrs1.Fields("type")
                    MSFlexGrid1.Col = 3
                    MSFlexGrid1.Text = Myrs1.Fields("unit")
                    MSFlexGrid1.Col = 4
                    MSFlexGrid1.Text = Myrs1.Fields("����")
                    MSFlexGrid1.Col = 5
                    MSFlexGrid1.Text = Format(Myrs1.Fields("����"), "#0.00")
                    MSFlexGrid1.Col = 6
                    MSFlexGrid1.Text = Format(Myrs1.Fields("���"), "#0.00")
                    MSFlexGrid1.Col = 7
                    If IsNull(Myrs1.Fields("��ע")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("��ע")
                    End If
                    Myrs2.MoveNext
                Else
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = Myrs2.Fields("goodsid")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = Myrs2.Fields("type")
                    MSFlexGrid1.Col = 3
                    MSFlexGrid1.Text = Myrs2.Fields("unit")
                    MSFlexGrid1.Col = 4
                    MSFlexGrid1.Text = 0
                    MSFlexGrid1.Col = 5
                    MSFlexGrid1.Text = 0
                    MSFlexGrid1.Col = 6
                    MSFlexGrid1.Text = 0
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = ""
                    Myrs2.MoveNext
                End If
                Myrs1.Close
            Wend
        Else
            MsgBox "���������ֲ��ϣ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Exit Sub
        End If
        Myrs2.Close
    End If
    db.Close
End Sub

Private Sub Command2_Click()
    Unload Me
    Project.StatusBar1.Panels(2).Text = "����"
End Sub

Private Sub Form_Load()
    Dim db As Database
    Dim Myrs1 As Recordset
    Dim SQLstring As String
    
    MSFlexGrid1.Rows = 1
    MSFlexGrid1.Cols = 8
    MSFlexGrid1.TextMatrix(0, 0) = "���ϱ���"
    MSFlexGrid1.TextMatrix(0, 1) = "��������"
    MSFlexGrid1.TextMatrix(0, 2) = "����ͺ�"
    MSFlexGrid1.TextMatrix(0, 3) = "������λ"
    MSFlexGrid1.TextMatrix(0, 4) = "����"
    MSFlexGrid1.TextMatrix(0, 5) = "����"
    MSFlexGrid1.TextMatrix(0, 6) = "���"
    MSFlexGrid1.TextMatrix(0, 7) = "��ע"
    Set db = OpenDatabase(App.Path + "\store.mdb")
    SQLstring = "update msurplus set ����=���/����"
    db.Execute (SQLstring)
    Set Myrs1 = db.OpenRecordset("select * from goods,msurplus where ���<>0 and goodsid=���ϱ���")
    If Myrs1.RecordCount >= 1 Then
        While Myrs1.EOF = False
            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
            MSFlexGrid1.Col = 0
            MSFlexGrid1.Text = Myrs1.Fields("goodsid")
            MSFlexGrid1.Col = 1
            MSFlexGrid1.Text = Myrs1.Fields("goodsname")
            MSFlexGrid1.Col = 2
            MSFlexGrid1.Text = Myrs1.Fields("type")
            MSFlexGrid1.Col = 3
            MSFlexGrid1.Text = Myrs1.Fields("unit")
            MSFlexGrid1.Col = 4
            MSFlexGrid1.Text = Myrs1.Fields("����")
            MSFlexGrid1.Col = 5
            MSFlexGrid1.Text = Format(Myrs1.Fields("����"), "#0.00")
            MSFlexGrid1.Col = 6
            MSFlexGrid1.Text = Format(Myrs1.Fields("���"), "#0.00")
            MSFlexGrid1.Col = 7
            If IsNull(Myrs1.Fields("��ע")) Then
                MSFlexGrid1.Text = ""
            Else
                MSFlexGrid1.Text = Myrs1.Fields("��ע")
            End If
            Myrs1.MoveNext
        Wend
        Myrs1.Close
    Else
        MsgBox "�ֿ���Ŀǰ�������Ϣ������ӽ�����Ϣ�����ԣ�", vbOKOnly + vbExclamation, "����"
        Exit Sub
    End If
    Set Myrs1 = db.OpenRecordset("select distinct goodsname from goods")
    If Myrs1.RecordCount >= 1 Then
        While Myrs1.EOF = False
            Combo1.AddItem Myrs1.Fields(0)
            Myrs1.MoveNext
        Wend
        Combo1.ListIndex = 0
        Myrs1.Close
    Else
        MsgBox "�ֿ���Ŀǰ�������Ϣ������ӽ�����Ϣ�����ԣ�", vbOKOnly + vbExclamation, "����"
        Exit Sub
    End If
    Set Myrs1 = db.OpenRecordset("select distinct type from goods")
    If Myrs1.RecordCount >= 1 Then
        While Myrs1.EOF = False
            Combo2.AddItem Myrs1.Fields(0)
            Myrs1.MoveNext
        Wend
        Combo2.ListIndex = 0
        Myrs1.Close
    Else
        MsgBox "�ֿ���Ŀǰ�������Ϣ������ӽ�����Ϣ�����ԣ�", vbOKOnly + vbExclamation, "����"
        Exit Sub
    End If
    db.Close
End Sub
