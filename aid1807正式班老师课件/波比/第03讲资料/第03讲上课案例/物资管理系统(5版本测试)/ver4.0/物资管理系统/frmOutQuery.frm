VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form OutQuery 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��ѯ������Ϣ"
   ClientHeight    =   7485
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9840
   Icon            =   "frmOutQuery.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7485
   ScaleWidth      =   9840
   StartUpPosition =   2  '��Ļ����
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   4455
      Left            =   150
      TabIndex        =   31
      Top             =   2880
      Width           =   8385
      _ExtentX        =   14790
      _ExtentY        =   7858
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   8760
      TabIndex        =   30
      Top             =   1080
      Width           =   945
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   8730
      TabIndex        =   29
      Top             =   300
      Width           =   945
   End
   Begin VB.Frame Frame1 
      Caption         =   "���ϳ�����Ϣ"
      Height          =   2595
      Left            =   150
      TabIndex        =   0
      Top             =   150
      Width           =   8355
      Begin VB.OptionButton Option7 
         Caption         =   "��������"
         Height          =   405
         Left            =   3360
         TabIndex        =   28
         Top             =   960
         Width           =   1065
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   7200
         TabIndex        =   27
         Top             =   450
         Width           =   945
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1440
         TabIndex        =   26
         Top             =   405
         Width           =   1695
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1440
         TabIndex        =   25
         Top             =   952
         Width           =   1695
      End
      Begin VB.Frame Frame2 
         Caption         =   "����ʱ��"
         Height          =   1395
         Left            =   4530
         TabIndex        =   10
         Top             =   1020
         Width           =   3645
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   540
            TabIndex        =   16
            Top             =   315
            Width           =   945
         End
         Begin VB.ComboBox Combo2 
            Height          =   315
            Left            =   1800
            TabIndex        =   15
            Top             =   315
            Width           =   645
         End
         Begin VB.ComboBox Combo3 
            Height          =   315
            Left            =   2670
            TabIndex        =   14
            Top             =   300
            Width           =   645
         End
         Begin VB.ComboBox Combo4 
            Height          =   315
            Left            =   540
            TabIndex        =   13
            Top             =   840
            Width           =   945
         End
         Begin VB.ComboBox Combo5 
            Height          =   315
            Left            =   1800
            TabIndex        =   12
            Top             =   840
            Width           =   645
         End
         Begin VB.ComboBox Combo6 
            Height          =   315
            Left            =   2670
            TabIndex        =   11
            Top             =   840
            Width           =   645
         End
         Begin VB.Label Label1 
            Caption         =   "�ӣ�"
            Height          =   285
            Left            =   180
            TabIndex        =   24
            Top             =   330
            Width           =   375
         End
         Begin VB.Label Label2 
            Caption         =   "��"
            Height          =   285
            Left            =   1560
            TabIndex        =   23
            Top             =   330
            Width           =   255
         End
         Begin VB.Label Label3 
            Caption         =   "��"
            Height          =   285
            Left            =   2490
            TabIndex        =   22
            Top             =   330
            Width           =   255
         End
         Begin VB.Label Label4 
            Caption         =   "��"
            Height          =   285
            Left            =   3360
            TabIndex        =   21
            Top             =   330
            Width           =   255
         End
         Begin VB.Label Label5 
            Caption         =   "����"
            Height          =   285
            Left            =   180
            TabIndex        =   20
            Top             =   840
            Width           =   375
         End
         Begin VB.Label Label6 
            Caption         =   "��"
            Height          =   285
            Left            =   1560
            TabIndex        =   19
            Top             =   870
            Width           =   255
         End
         Begin VB.Label Label7 
            Caption         =   "��"
            Height          =   285
            Left            =   2490
            TabIndex        =   18
            Top             =   870
            Width           =   255
         End
         Begin VB.Label Label8 
            Caption         =   "��"
            Height          =   285
            Left            =   3360
            TabIndex        =   17
            Top             =   900
            Width           =   255
         End
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1440
         TabIndex        =   9
         Top             =   1499
         Width           =   1695
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1440
         TabIndex        =   8
         Top             =   2046
         Width           =   1695
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   4560
         TabIndex        =   7
         Top             =   435
         Width           =   1245
      End
      Begin VB.OptionButton Option1 
         Caption         =   "���ⵥ����"
         Height          =   345
         Left            =   210
         TabIndex        =   6
         Top             =   420
         Width           =   1215
      End
      Begin VB.OptionButton Option2 
         Caption         =   "��Ʊ����"
         Height          =   345
         Left            =   210
         TabIndex        =   5
         Top             =   967
         Width           =   1215
      End
      Begin VB.OptionButton Option3 
         Caption         =   "���̺�"
         Height          =   345
         Left            =   210
         TabIndex        =   4
         Top             =   1514
         Width           =   1215
      End
      Begin VB.OptionButton Option4 
         Caption         =   "���ϱ���"
         Height          =   345
         Left            =   210
         TabIndex        =   3
         Top             =   2061
         Width           =   1215
      End
      Begin VB.OptionButton Option5 
         Caption         =   "��������"
         Height          =   345
         Left            =   3360
         TabIndex        =   2
         Top             =   420
         Width           =   1215
      End
      Begin VB.OptionButton Option6 
         Caption         =   "����ͺ�"
         Height          =   345
         Left            =   5970
         TabIndex        =   1
         Top             =   420
         Width           =   1215
      End
   End
End
Attribute VB_Name = "OutQuery"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Mydb As Database
Dim Myrs1 As Recordset
Dim Myrs2 As Recordset

Private Sub Command1_Click()
    Dim mrc As Recordset
    Dim str1 As String, str2 As String
    If Option1.Value = True Then
        If Text1.Text = "" Then
            MsgBox "����ȷ��д���ⵥ���룡", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Text1.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Trim(Text1) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                Set Myrs2 = Mydb.OpenRecordset("select * from outlibdetail,goods where ���ⵥ����='" & Trim(Text1) & "' And GoodsID = ���ϱ���")
                While Myrs2.EOF = False
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = Myrs1.Fields("���ⵥ����")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = Myrs1.Fields("��Ʊ����")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = Myrs1.Fields("��������")
                    MSFlexGrid1.Col = 3
                    If IsNull(Myrs1.Fields("���̺�")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("���̺�")
                    End If
                    MSFlexGrid1.Col = 4
                    MSFlexGrid1.Text = Myrs1.Fields("��������")
                    MSFlexGrid1.Col = 5
                    If IsNull(Myrs1.Fields("������")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("������")
                    End If
                    MSFlexGrid1.Col = 6
                    If IsNull(Myrs1.Fields("������")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("������")
                    End If
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = Myrs2.Fields("goodsid")
                    MSFlexGrid1.Col = 8
                    MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                    MSFlexGrid1.Col = 9
                    MSFlexGrid1.Text = Myrs2.Fields("type")
                    MSFlexGrid1.Col = 10
                    MSFlexGrid1.Text = Myrs2.Fields("unit")
                    MSFlexGrid1.Col = 11
                    MSFlexGrid1.Text = Myrs2.Fields("����")
                    MSFlexGrid1.Col = 12
                    MSFlexGrid1.Text = Format(Myrs2.Fields("����"), "#0.00")
                    MSFlexGrid1.Col = 13
                    MSFlexGrid1.Text = Format(Myrs2.Fields("���"), "#0.00")
                    MSFlexGrid1.Col = 14
                    If IsNull(Myrs2.Fields("��ע")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs2.Fields("��ע")
                    End If
                    Myrs2.MoveNext
                Wend
                Myrs2.Close
            Else
                MsgBox "������������ⵥ����", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                Text1 = ""
                Text1.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option2.Value = True Then
        If Text2.Text = "" Then
            MsgBox "����ȷ��д��Ʊ���룡", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Text2.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from outlib where ��Ʊ����='" & Trim(Text2) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                Set Myrs2 = Mydb.OpenRecordset("select * from outlibdetail where ���ⵥ����='" & Myrs1.Fields("���ⵥ����") & "'")
                Set mrc = Mydb.OpenRecordset("select * from goods where goodsid='" & Myrs2.Fields("���ϱ���") & "'")
                While Myrs2.EOF = False
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = Myrs1.Fields("���ⵥ����")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = Myrs1.Fields("��Ʊ����")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = Myrs1.Fields("��������")
                    MSFlexGrid1.Col = 3
                    If IsNull(Myrs1.Fields("���̺�")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("���̺�")
                    End If
                    MSFlexGrid1.Col = 4
                    MSFlexGrid1.Text = Myrs1.Fields("��������")
                    MSFlexGrid1.Col = 5
                    If IsNull(Myrs1.Fields("������")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("������")
                    End If
                    MSFlexGrid1.Col = 6
                    If IsNull(Myrs1.Fields("������")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("������")
                    End If
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = mrc.Fields("goodsid")
                    MSFlexGrid1.Col = 8
                    MSFlexGrid1.Text = mrc.Fields("goodsname")
                    MSFlexGrid1.Col = 9
                    MSFlexGrid1.Text = mrc.Fields("type")
                    MSFlexGrid1.Col = 10
                    MSFlexGrid1.Text = mrc.Fields("unit")
                    MSFlexGrid1.Col = 11
                    MSFlexGrid1.Text = Myrs2.Fields("����")
                    MSFlexGrid1.Col = 12
                    MSFlexGrid1.Text = Format(Myrs2.Fields("����"), "#0.00")
                    MSFlexGrid1.Col = 13
                    MSFlexGrid1.Text = Format(Myrs2.Fields("���"), "#0.00")
                    MSFlexGrid1.Col = 14
                    If IsNull(Myrs2.Fields("��ע")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs2.Fields("��ע")
                    End If
                    Myrs2.MoveNext
                Wend
                Myrs2.Close
                mrc.Close
            Else
                MsgBox "�����������Ʊ����", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                Text2 = ""
                Text2.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option3.Value = True Then
        If Text3.Text = "" Then
            MsgBox "����ȷ��д���̺ţ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Text3.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select DISTINCT ���ⵥ���� from outlib where ���̺�='" & Trim(Text3) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Myrs1.Fields(0) & "'")
                    Set Myrs2 = Mydb.OpenRecordset("select * from outlibdetail,goods where ���ⵥ����='" & Myrs1.Fields(0) & "'and goodsid=���ϱ���")
                    While Myrs2.EOF = False
                        MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                        MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                        MSFlexGrid1.Col = 0
                        MSFlexGrid1.Text = mrc.Fields("���ⵥ����")
                        MSFlexGrid1.Col = 1
                        MSFlexGrid1.Text = mrc.Fields("��Ʊ����")
                        MSFlexGrid1.Col = 2
                        MSFlexGrid1.Text = mrc.Fields("��������")
                        MSFlexGrid1.Col = 3
                        If IsNull(mrc.Fields("���̺�")) Then
                            MSFlexGrid1.Text = ""
                        Else
                            MSFlexGrid1.Text = mrc.Fields("���̺�")
                        End If
                        MSFlexGrid1.Col = 4
                        MSFlexGrid1.Text = mrc.Fields("��������")
                        MSFlexGrid1.Col = 5
                        If IsNull(mrc.Fields("������")) Then
                            MSFlexGrid1.Text = ""
                        Else
                            MSFlexGrid1.Text = mrc.Fields("������")
                        End If
                        MSFlexGrid1.Col = 6
                        If IsNull(mrc.Fields("������")) Then
                            MSFlexGrid1.Text = ""
                        Else
                            MSFlexGrid1.Text = mrc.Fields("������")
                        End If
                        MSFlexGrid1.Col = 7
                        MSFlexGrid1.Text = Myrs2.Fields("goodsid")
                        MSFlexGrid1.Col = 8
                        MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                        MSFlexGrid1.Col = 9
                        MSFlexGrid1.Text = Myrs2.Fields("type")
                        MSFlexGrid1.Col = 10
                        MSFlexGrid1.Text = Myrs2.Fields("unit")
                        MSFlexGrid1.Col = 11
                        MSFlexGrid1.Text = Myrs2.Fields("����")
                        MSFlexGrid1.Col = 12
                        MSFlexGrid1.Text = Format(Myrs2.Fields("����"), "#0.00")
                        MSFlexGrid1.Col = 13
                        MSFlexGrid1.Text = Format(Myrs2.Fields("���"), "#0.00")
                        MSFlexGrid1.Col = 14
                        If IsNull(Myrs2.Fields("��ע")) Then
                            MSFlexGrid1.Text = ""
                        Else
                            MSFlexGrid1.Text = Myrs2.Fields("��ע")
                        End If
                        Myrs2.MoveNext
                    Wend
                    Myrs2.Close
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "������������̺�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                Text3 = ""
                Text3.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option4.Value = True Then
        If Text4.Text = "" Then
            MsgBox "����ȷ��д���ϱ��룡", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Text4.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select DISTINCT ���ⵥ���� from outlibdetail where ���ϱ���='" & Trim(Text4) & "'")
            If Myrs1.RecordCount >= 1 Then
                MSFlexGrid1.Clear
                TableInit
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Myrs1.Fields(0) & "'")
                    While mrc.EOF = False
                        Set Myrs2 = Mydb.OpenRecordset("select * from outlibdetail,goods where ���ϱ���='" & Trim(Text4) & "' and ���ⵥ����='" & Myrs1.Fields(0) & "' and goodsid=���ϱ���")
                        While Myrs2.EOF = False
                            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                            MSFlexGrid1.Col = 0
                            MSFlexGrid1.Text = mrc.Fields("���ⵥ����")
                            MSFlexGrid1.Col = 1
                            MSFlexGrid1.Text = mrc.Fields("��Ʊ����")
                            MSFlexGrid1.Col = 2
                            MSFlexGrid1.Text = mrc.Fields("��������")
                            MSFlexGrid1.Col = 3
                            If IsNull(mrc.Fields("���̺�")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("���̺�")
                            End If
                            MSFlexGrid1.Col = 4
                            MSFlexGrid1.Text = mrc.Fields("��������")
                            MSFlexGrid1.Col = 5
                            If IsNull(mrc.Fields("������")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("������")
                            End If
                            MSFlexGrid1.Col = 6
                            If IsNull(mrc.Fields("������")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("������")
                            End If
                            MSFlexGrid1.Col = 7
                            MSFlexGrid1.Text = Myrs2.Fields("goodsid")
                            MSFlexGrid1.Col = 8
                            MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                            MSFlexGrid1.Col = 9
                            MSFlexGrid1.Text = Myrs2.Fields("type")
                            MSFlexGrid1.Col = 10
                            MSFlexGrid1.Text = Myrs2.Fields("unit")
                            MSFlexGrid1.Col = 11
                            MSFlexGrid1.Text = Myrs2.Fields("����")
                            MSFlexGrid1.Col = 12
                            MSFlexGrid1.Text = Format(Myrs2.Fields("����"), "#0.00")
                            MSFlexGrid1.Col = 13
                            MSFlexGrid1.Text = Format(Myrs2.Fields("���"), "#0.00")
                            MSFlexGrid1.Col = 14
                            If IsNull(Myrs2.Fields("��ע")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("��ע")
                            End If
                            Myrs2.MoveNext
                        Wend
                        Myrs2.Close
                        mrc.MoveNext
                    Wend
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "������������ϱ���", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                Text4 = ""
                Text4.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option5.Value = True Then
        If Text5.Text = "" Then
            MsgBox "����ȷ��д�������ƣ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Text5.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from goods where goodsname='" & Trim(Text5) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from outlibdetail where ���ϱ���='" & Myrs1.Fields("goodsid") & "'")
                    While mrc.EOF = False
                        Set Myrs2 = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & mrc.Fields("���ⵥ����") & "'")
                        While Myrs2.EOF = False
                            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                            MSFlexGrid1.Col = 0
                            MSFlexGrid1.Text = Myrs2.Fields("���ⵥ����")
                            MSFlexGrid1.Col = 1
                            MSFlexGrid1.Text = Myrs2.Fields("��Ʊ����")
                            MSFlexGrid1.Col = 2
                            MSFlexGrid1.Text = Myrs2.Fields("��������")
                            MSFlexGrid1.Col = 3
                            If IsNull(Myrs2.Fields("���̺�")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("���̺�")
                            End If
                            MSFlexGrid1.Col = 4
                            MSFlexGrid1.Text = Myrs2.Fields("��������")
                            MSFlexGrid1.Col = 5
                            If IsNull(Myrs2.Fields("������")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("������")
                            End If
                            MSFlexGrid1.Col = 6
                            If IsNull(Myrs2.Fields("������")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("������")
                            End If
                            MSFlexGrid1.Col = 7
                            MSFlexGrid1.Text = Myrs1.Fields("goodsid")
                            MSFlexGrid1.Col = 8
                            MSFlexGrid1.Text = Myrs1.Fields("goodsname")
                            MSFlexGrid1.Col = 9
                            MSFlexGrid1.Text = Myrs1.Fields("type")
                            MSFlexGrid1.Col = 10
                            MSFlexGrid1.Text = Myrs1.Fields("unit")
                            MSFlexGrid1.Col = 11
                            MSFlexGrid1.Text = mrc.Fields("����")
                            MSFlexGrid1.Col = 12
                            MSFlexGrid1.Text = Format(mrc.Fields("����"), "#0.00")
                            MSFlexGrid1.Col = 13
                            MSFlexGrid1.Text = Format(mrc.Fields("���"), "#0.00")
                            MSFlexGrid1.Col = 14
                            If IsNull(mrc.Fields("��ע")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("��ע")
                            End If
                            Myrs2.MoveNext
                        Wend
                        Myrs2.Close
                        mrc.MoveNext
                    Wend
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "�����������������", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                Text5 = ""
                Text5.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option6.Value = True Then
        If Text6.Text = "" Then
            MsgBox "����ȷ��д����ͺţ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Text6.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from goods where type='" & Trim(Text6) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from outlibdetail where ���ϱ���='" & Myrs1.Fields("goodsid") & "'")
                    While mrc.EOF = False
                        Set Myrs2 = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & mrc.Fields("���ⵥ����") & "'")
                        While Myrs2.EOF = False
                            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                            MSFlexGrid1.Col = 0
                            MSFlexGrid1.Text = Myrs2.Fields("���ⵥ����")
                            MSFlexGrid1.Col = 1
                            MSFlexGrid1.Text = Myrs2.Fields("��Ʊ����")
                            MSFlexGrid1.Col = 2
                            MSFlexGrid1.Text = Myrs2.Fields("��������")
                            MSFlexGrid1.Col = 3
                            If IsNull(Myrs2.Fields("���̺�")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("���̺�")
                            End If
                            MSFlexGrid1.Col = 4
                            MSFlexGrid1.Text = Myrs2.Fields("��������")
                            MSFlexGrid1.Col = 5
                            If IsNull(Myrs2.Fields("������")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("������")
                            End If
                            MSFlexGrid1.Col = 6
                            If IsNull(Myrs2.Fields("������")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("������")
                            End If
                            MSFlexGrid1.Col = 7
                            MSFlexGrid1.Text = Myrs1.Fields("goodsid")
                            MSFlexGrid1.Col = 8
                            MSFlexGrid1.Text = Myrs1.Fields("goodsname")
                            MSFlexGrid1.Col = 9
                            MSFlexGrid1.Text = Myrs1.Fields("type")
                            MSFlexGrid1.Col = 10
                            MSFlexGrid1.Text = Myrs1.Fields("unit")
                            MSFlexGrid1.Col = 11
                            MSFlexGrid1.Text = mrc.Fields("����")
                            MSFlexGrid1.Col = 12
                            MSFlexGrid1.Text = Format(mrc.Fields("����"), "#0.00")
                            MSFlexGrid1.Col = 13
                            MSFlexGrid1.Text = Format(mrc.Fields("���"), "#0.00")
                            MSFlexGrid1.Col = 14
                            If IsNull(mrc.Fields("��ע")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("��ע")
                            End If
                            Myrs2.MoveNext
                        Wend
                        Myrs2.Close
                        mrc.MoveNext
                    Wend
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "�������������ͺ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                Text6 = ""
                Text6.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option7.Value = True Then
        If Val(Combo1) > Val(Combo4) Then
            MsgBox "����ȷѡ����ݣ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Combo1.SetFocus
            Exit Sub
        Else
            If Val(Combo1) = Val(Combo4) Then
                If Val(Combo2) > Val(Combo5) Then
                    MsgBox "����ȷѡ���·ݣ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                    Combo2.SetFocus
                    Exit Sub
                Else
                    If Val(Combo2) = Val(Combo5) Then
                        If Val(Combo3) > Val(Combo6) Then
                            MsgBox "����ȷѡ�����ڣ�", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
                            Combo3.SetFocus
                            Exit Sub
                        End If
                    End If
                End If
            End If
        End If
        str1 = Trim(Combo1) & "-" & Trim(Combo2) & "-" & Trim(Combo3)
        str2 = Trim(Combo4) & "-" & Trim(Combo5) & "-" & Trim(Combo6)
        str1 = Format(str1, "yyyy-mm-dd")
        str2 = Format(str2, "yyyy-mm-dd")
        Set Myrs1 = Mydb.OpenRecordset("select DISTINCT ���ⵥ���� from outlib where ��������>=#" + Format(str1, "yyyy-mm-dd") + "# and ��������<= #" + Format(str2, "yyyy-mm-dd") + "#")
        MSFlexGrid1.Clear
        TableInit
        If Myrs1.RecordCount >= 1 Then
            While Myrs1.EOF = False
                Set mrc = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Myrs1.Fields(0) & "'")
                Set Myrs2 = Mydb.OpenRecordset("select * from outlibdetail,goods where ���ⵥ����='" & Myrs1.Fields(0) & "'and ���ϱ���=goodsid")
                While Myrs2.EOF = False
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = mrc.Fields("���ⵥ����")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = mrc.Fields("��Ʊ����")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = mrc.Fields("��������")
                    MSFlexGrid1.Col = 3
                    If IsNull(mrc.Fields("���̺�")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = mrc.Fields("���̺�")
                    End If
                    MSFlexGrid1.Col = 4
                    MSFlexGrid1.Text = mrc.Fields("��������")
                    MSFlexGrid1.Col = 5
                    If IsNull(mrc.Fields("������")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = mrc.Fields("������")
                    End If
                    MSFlexGrid1.Col = 6
                    If IsNull(mrc.Fields("������")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = mrc.Fields("������")
                    End If
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = Myrs2.Fields("goodsid")
                    MSFlexGrid1.Col = 8
                    MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                    MSFlexGrid1.Col = 9
                    MSFlexGrid1.Text = Myrs2.Fields("type")
                    MSFlexGrid1.Col = 10
                    MSFlexGrid1.Text = Myrs2.Fields("unit")
                    MSFlexGrid1.Col = 11
                    MSFlexGrid1.Text = Myrs2.Fields("����")
                    MSFlexGrid1.Col = 12
                    MSFlexGrid1.Text = Format(Myrs2.Fields("����"), "#0.00")
                    MSFlexGrid1.Col = 13
                    MSFlexGrid1.Text = Format(Myrs2.Fields("���"), "#0.00")
                    MSFlexGrid1.Col = 14
                    If IsNull(Myrs2.Fields("��ע")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs2.Fields("��ע")
                    End If
                    Myrs2.MoveNext
                Wend
                Myrs2.Close
                mrc.Close
                Myrs1.MoveNext
            Wend
        Else
            MsgBox "�����ʱ����û�г����¼", vbOKOnly + vbExclamation, "��Ϣ��ʾ"
            Exit Sub
        End If
        Myrs1.Close
    End If
End Sub

Private Sub Command2_Click()
    Mydb.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "����"
End Sub

Private Sub Form_Load()
    Dim i As Integer, j As Integer
    Dim txtSQL As String
    Dim mrc As Recordset
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    txtSQL = "select DISTINCT Year(��������) from outlib"
    Set mrc = Mydb.OpenRecordset(txtSQL)
    If mrc.EOF = False Then
        With mrc
            Do While Not .EOF
                Combo1.AddItem .Fields(0)
                Combo4.AddItem .Fields(0)
                .MoveNext
            Loop
        End With
        Combo1.ListIndex = 0
        Combo4.ListIndex = 0
        For i = 1 To 12
            Combo2.AddItem i
            Combo5.AddItem i
        Next i
        Combo2.Text = Month(Now())
        Combo5.Text = Month(Now())
        For i = 1 To 31
            Combo3.AddItem i
            Combo6.AddItem i
        Next i
        Combo3.Text = Day(Now())
        Combo6.Text = Day(Now())
    Else
        Command1.Enabled = False
    End If
    mrc.Close
    Option1.Value = True
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
    TableInit
End Sub

Private Sub TableInit()
    MSFlexGrid1.Rows = 1
    MSFlexGrid1.Cols = 15
    MSFlexGrid1.TextMatrix(0, 0) = "���ⵥ����"
    MSFlexGrid1.TextMatrix(0, 1) = "��Ʊ����"
    MSFlexGrid1.TextMatrix(0, 2) = "��������"
    MSFlexGrid1.TextMatrix(0, 3) = "���̺�"
    MSFlexGrid1.TextMatrix(0, 4) = "��������"
    MSFlexGrid1.TextMatrix(0, 5) = "������"
    MSFlexGrid1.TextMatrix(0, 6) = "������"
    MSFlexGrid1.TextMatrix(0, 7) = "���ϱ���"
    MSFlexGrid1.TextMatrix(0, 8) = "��������"
    MSFlexGrid1.TextMatrix(0, 9) = "����ͺ�"
    MSFlexGrid1.TextMatrix(0, 10) = "������λ"
    MSFlexGrid1.TextMatrix(0, 11) = "����"
    MSFlexGrid1.TextMatrix(0, 12) = "����"
    MSFlexGrid1.TextMatrix(0, 13) = "���"
    MSFlexGrid1.TextMatrix(0, 14) = "��ע"
End Sub

Private Sub Option1_Click()
    Text1.Enabled = True
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Text6.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option2_Click()
    Text2.Enabled = True
    Text2.SetFocus
    Text1.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Text6.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option3_Click()
    Text3.Enabled = True
    Text3.SetFocus
    Text2.Enabled = False
    Text1.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Text6.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option4_Click()
    Text4.Enabled = True
    Text4.SetFocus
    Text2.Enabled = False
    Text3.Enabled = False
    Text1.Enabled = False
    Text5.Enabled = False
    Text6.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option5_Click()
    Text5.Enabled = True
    Text5.SetFocus
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text1.Enabled = False
    Text6.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option6_Click()
    Text6.Enabled = True
    Text6.SetFocus
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text1.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option7_Click()
    Text1.Enabled = False
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Text6.Enabled = False
    Combo1.Enabled = True
    Combo2.Enabled = True
    Combo3.Enabled = True
    Combo4.Enabled = True
    Combo5.Enabled = True
    Combo6.Enabled = True
    Combo1.SetFocus
End Sub

Private Sub Text1_GotFocus()
    Text2 = ""
    Text3 = ""
    Text4 = ""
    Text5 = ""
    Text6 = ""
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text2_GotFocus()
    Text1 = ""
    Text3 = ""
    Text4 = ""
    Text5 = ""
    Text6 = ""
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text3_GotFocus()
    Text1 = ""
    Text2 = ""
    Text4 = ""
    Text5 = ""
    Text6 = ""
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text4_GotFocus()
    Text1 = ""
    Text2 = ""
    Text3 = ""
    Text5 = ""
    Text6 = ""
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text5_GotFocus()
    Text1 = ""
    Text2 = ""
    Text3 = ""
    Text4 = ""
    Text6 = ""
End Sub

Private Sub Text5_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text6_GotFocus()
    Text1 = ""
    Text2 = ""
    Text3 = ""
    Text4 = ""
    Text5 = ""
End Sub

Private Sub Text6_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub
