VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form OutUpdate 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�޸ĳ�����Ϣ"
   ClientHeight    =   5445
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6975
   Icon            =   "frmOutUpdate.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5445
   ScaleWidth      =   6975
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton cmdClose 
      Caption         =   "�˳�"
      Height          =   405
      Left            =   5550
      TabIndex        =   17
      Top             =   4800
      Width           =   915
   End
   Begin VB.CommandButton cmdInfo 
      Caption         =   "��ϸ��Ϣ"
      Height          =   405
      Left            =   4350
      TabIndex        =   16
      Top             =   4800
      Width           =   915
   End
   Begin VB.CommandButton cmdFind 
      Caption         =   "����"
      Height          =   405
      Left            =   3150
      TabIndex        =   15
      Top             =   4800
      Width           =   915
   End
   Begin VB.CommandButton cmdDel 
      Caption         =   "ɾ��"
      Height          =   405
      Left            =   1905
      TabIndex        =   14
      Top             =   4800
      Width           =   915
   End
   Begin VB.CommandButton cmdEdit 
      Caption         =   "�޸�"
      Height          =   405
      Left            =   690
      TabIndex        =   13
      Top             =   4800
      Width           =   915
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4275
      Left            =   300
      TabIndex        =   0
      Top             =   270
      Width           =   6405
      _ExtentX        =   11298
      _ExtentY        =   7541
      _Version        =   393216
      Style           =   1
      Tabs            =   2
      TabHeight       =   520
      TabCaption(0)   =   "������Ϣ"
      TabPicture(0)   =   "frmOutUpdate.frx":014A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "������ϸ"
      TabPicture(1)   =   "frmOutUpdate.frx":0166
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "cmdDelRecord"
      Tab(1).Control(1)=   "MSFlexGrid1"
      Tab(1).Control(2)=   "Text7"
      Tab(1).Control(3)=   "cmdAddRecord"
      Tab(1).ControlCount=   4
      Begin VB.Frame Frame1 
         Caption         =   "���ⵥ������Ϣ"
         Height          =   3525
         Left            =   210
         TabIndex        =   5
         Top             =   480
         Width           =   5985
         Begin VB.TextBox Text6 
            Height          =   315
            Left            =   1560
            TabIndex        =   24
            Top             =   2910
            Width           =   2385
         End
         Begin VB.TextBox Text5 
            Height          =   315
            Left            =   1560
            TabIndex        =   23
            Top             =   2505
            Width           =   2385
         End
         Begin VB.TextBox Text4 
            Height          =   315
            Left            =   1560
            TabIndex        =   22
            Top             =   2085
            Width           =   2385
         End
         Begin VB.TextBox Text3 
            Height          =   315
            Left            =   1560
            TabIndex        =   21
            Top             =   1650
            Width           =   2385
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   1560
            TabIndex        =   20
            Top             =   1245
            Width           =   2385
         End
         Begin VB.TextBox Text2 
            Height          =   315
            Left            =   1560
            TabIndex        =   19
            Top             =   825
            Width           =   2385
         End
         Begin VB.TextBox Text1 
            Height          =   315
            Left            =   1560
            TabIndex        =   18
            Top             =   390
            Width           =   2385
         End
         Begin VB.Label Label1 
            Caption         =   "���ⵥ����"
            Height          =   255
            Left            =   420
            TabIndex        =   12
            Top             =   420
            Width           =   1065
         End
         Begin VB.Label Label2 
            Caption         =   "��Ʊ����"
            Height          =   255
            Left            =   420
            TabIndex        =   11
            Top             =   855
            Width           =   1065
         End
         Begin VB.Label Label3 
            Caption         =   "��������"
            Height          =   255
            Left            =   420
            TabIndex        =   10
            Top             =   1275
            Width           =   1065
         End
         Begin VB.Label Label4 
            Caption         =   "��  ��  ��"
            Height          =   255
            Left            =   450
            TabIndex        =   9
            Top             =   1680
            Width           =   1065
         End
         Begin VB.Label Label5 
            Caption         =   "��������"
            Height          =   405
            Left            =   450
            TabIndex        =   8
            Top             =   2115
            Width           =   1065
         End
         Begin VB.Label Label6 
            Caption         =   "��  ��  ��"
            Height          =   255
            Left            =   450
            TabIndex        =   7
            Top             =   2535
            Width           =   1065
         End
         Begin VB.Label Label7 
            Caption         =   "��  ��  ��"
            Height          =   255
            Left            =   450
            TabIndex        =   6
            Top             =   2940
            Width           =   1065
         End
      End
      Begin VB.CommandButton cmdAddRecord 
         Caption         =   "��Ӽ�¼"
         Height          =   405
         Left            =   -73590
         TabIndex        =   4
         Top             =   3450
         Width           =   1365
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   -72120
         TabIndex        =   3
         Top             =   1350
         Width           =   945
      End
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   2865
         Left            =   -74730
         TabIndex        =   2
         Top             =   390
         Width           =   5895
         _ExtentX        =   10398
         _ExtentY        =   5054
         _Version        =   393216
      End
      Begin VB.CommandButton cmdDelRecord 
         Caption         =   "ɾ����¼"
         Height          =   405
         Left            =   -71100
         TabIndex        =   1
         Top             =   3450
         Width           =   1365
      End
   End
End
Attribute VB_Name = "OutUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs1 As Recordset
Dim Myrs2 As Recordset

Private Sub cmdAddRecord_Click()
    Project.StatusBar1.Panels(2).Text = "��ӳ�����Ϣ"
    OutInfoEdit.Show 1
End Sub

Private Sub cmdClose_Click()
    Myrs2.Close
    Myrs1.Close
    Mydb.Close
    Myws.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "����"
End Sub

Private Sub cmdDel_Click()
    Dim a As Integer
    Dim mrc1 As Recordset
    Dim mrc2 As Recordset
    Dim SQLstring As String, str As String
    Dim Num As Integer
    Dim price As Single
    
    a = MsgBox("��ȷ��Ҫɾ�������¼��", vbOKCancel + vbInformation, "��Ϣ��ʾ")
    Set mrc1 = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Trim(Text1) & "'")
    Set mrc2 = Mydb.OpenRecordset("select * from outlibdetail where ���ⵥ����='" & Trim(Text1) & "'")
    If a = vbOK Then
        mrc1.Delete
        While mrc2.EOF = False
            str = mrc2.Fields("���ϱ���")
            Num = mrc2.Fields("����")
            price = mrc2.Fields("���")
            SQLstring = "update msurplus set ����=����+" + CStr(Num) + ",���=���+" + CStr(price) + " where ���ϱ���='" & str & "'"
            Mydb.Execute (SQLstring)
            mrc2.Delete
            mrc2.MoveNext
        Wend
        Unload Me
    End If
    mrc2.Close
    mrc1.Close
    OutUpdate.Show
End Sub

Private Sub cmdDelRecord_Click()
    Dim i As Integer, j As Integer
    
    Text7.Visible = False
    If MSFlexGrid1.Rows > 1 Then
        If MsgBox("ȷ��Ҫɾ��������¼��", vbOKCancel + vbExclamation, "����") = vbOK Then
            i = MSFlexGrid1.Row
            Text7.Text = MSFlexGrid1.TextMatrix(i, 0)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 0) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 1)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 1) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 2)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 2) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 3)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 3) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 4)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 4) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 5)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 5) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 6)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 6) = Text7.Text
            Text7.Text = MSFlexGrid1.TextMatrix(i, 7)
            Text7.Text = ""
            MSFlexGrid1.TextMatrix(i, 7) = Text7.Text
            For j = i To (MSFlexGrid1.Rows - 2)
                MSFlexGrid1.TextMatrix(j, 0) = MSFlexGrid1.TextMatrix(j + 1, 0)
                MSFlexGrid1.TextMatrix(j, 1) = MSFlexGrid1.TextMatrix(j + 1, 1)
                MSFlexGrid1.TextMatrix(j, 2) = MSFlexGrid1.TextMatrix(j + 1, 2)
                MSFlexGrid1.TextMatrix(j, 3) = MSFlexGrid1.TextMatrix(j + 1, 3)
                MSFlexGrid1.TextMatrix(j, 4) = MSFlexGrid1.TextMatrix(j + 1, 4)
                MSFlexGrid1.TextMatrix(j, 5) = MSFlexGrid1.TextMatrix(j + 1, 5)
                MSFlexGrid1.TextMatrix(j, 6) = MSFlexGrid1.TextMatrix(j + 1, 6)
                MSFlexGrid1.TextMatrix(j, 7) = MSFlexGrid1.TextMatrix(j + 1, 7)
            Next j
            MSFlexGrid1.Rows = MSFlexGrid1.Rows - 1
            If MSFlexGrid1.Rows = 1 Then
                cmdDelRecord.Enabled = False
            End If
        End If
    End If
End Sub

Private Sub cmdEdit_Click()
    Dim i As Integer
    Dim mrc1 As Recordset, mrc2 As Recordset, mrc As Recordset
    Dim SQLstring As String, str As String
    Dim Num As Integer
    Dim price As Single
    
    If Text2.Text = "" Then
        MsgBox "��Ʊ���벻��Ϊ�գ�����д��", vbOKOnly + vbExclamation, "����"
        Text2.SetFocus
        Exit Sub
    End If
    If Text4.Text = "" Then
        MsgBox "�������ڲ���Ϊ�գ�����д��", vbOKOnly + vbExclamation, "����"
        Text4.SetFocus
        Exit Sub
    Else
        If IsDate(Text4.Text) Then
            Text4 = Format(Text4, "yyyy-mm-dd")
        Else
            MsgBox "����ʱ���ʽӦΪ��yyyy-mm-dd", vbOKOnly + vbExclamation, "����"
            Text4.Text = ""
            Text4.SetFocus
            Exit Sub
        End If
    End If
    Set mrc1 = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Trim(Text1) & "'")
    Set mrc2 = Mydb.OpenRecordset("select * from outlibdetail where ���ⵥ����='" & Trim(Text1) & "'")
    mrc1.Delete
    While mrc2.EOF = False
        str = mrc2.Fields("���ϱ���")
        Num = mrc2.Fields("����")
        price = mrc2.Fields("���")
        SQLstring = "update msurplus set ����=����+" + CStr(Num) + ",���=���+" + CStr(price) + " where ���ϱ���='" & str & "'"
        Mydb.Execute (SQLstring)
        mrc2.Delete
        mrc2.MoveNext
    Wend
    
    If MSFlexGrid1.Rows > 1 Then
        mrc1.AddNew
        mrc1.Fields("���ⵥ����") = Text1.Text
        mrc1.Fields("��Ʊ����") = Text2.Text
        mrc1.Fields("��������") = Combo1.Text
        If Text3.Text = "" Then
            mrc1.Fields("���̺�") = Null
        Else
            mrc1.Fields("���̺�") = Text3.Text
        End If
        mrc1.Fields("��������") = Text4.Text
        If Text5.Text = "" Then
            mrc1.Fields("������") = Null
        Else
            mrc1.Fields("������") = Text5.Text
        End If
        If Text6.Text = "" Then
            mrc1.Fields("������") = Null
        Else
            mrc1.Fields("������") = Text6.Text
        End If
        mrc1.Update
        For i = 1 To (MSFlexGrid1.Rows - 1)
            mrc2.AddNew
            mrc2.Fields("���ⵥ����") = Text1.Text
            mrc2.Fields("���ϱ���") = MSFlexGrid1.TextMatrix(i, 0)
            mrc2.Fields("����") = Val(MSFlexGrid1.TextMatrix(i, 4))
            mrc2.Fields("����") = Val(MSFlexGrid1.TextMatrix(i, 5))
            mrc2.Fields("���") = Val(MSFlexGrid1.TextMatrix(i, 6))
            If MSFlexGrid1.TextMatrix(i, 7) = "" Then
                mrc2.Fields("��ע") = Null
            Else
                mrc2.Fields("��ע") = MSFlexGrid1.TextMatrix(i, 7)
            End If
            mrc2.Update
            str = MSFlexGrid1.TextMatrix(i, 0)
            Num = MSFlexGrid1.TextMatrix(i, 4)
            price = MSFlexGrid1.TextMatrix(i, 6)
            SQLstring = "update msurplus set ����=����-" + CStr(Num) + ",���=���-" + CStr(price) + " where ���ϱ���='" & str & "'"
            Mydb.Execute (SQLstring)
        Next i
        mrc1.Close
        mrc2.Close
        Unload Me
        Project.StatusBar1.Panels(2).Text = "����"
        Exit Sub
    Else
        MsgBox "���ⵥ�б������ٰ���һ�������ϸ��" & vbCrLf & "�˳��ⵥ��δ��д������Ϣ������д��", vbOKOnly + vbExclamation, "����"
        Exit Sub
    End If
End Sub

Private Sub cmdFind_Click()
    Dim mrc1 As Recordset, mrc2 As Recordset
    OutPaperId = ""
    Project.StatusBar1.Panels(2).Text = "���ҳ�����Ϣ"
    OutFind.Show 1
    If OutPaperId <> "" Then
        Text1.Text = OutPaperId
        Set mrc1 = Mydb.OpenRecordset("select * from outlib where ���ⵥ����='" & Trim(Text1) & "'")
        Set mrc2 = Mydb.OpenRecordset("select * from goods,outlibdetail where ���ⵥ����='" & Trim(Text1) & "' and goodsid=���ϱ���")
        Text2.Text = mrc1.Fields("��Ʊ����")
        Combo1.Text = mrc1.Fields("��������")
        If IsNull(mrc1.Fields("���̺�")) Then
            Text3.Text = ""
        Else
            Text3.Text = mrc1.Fields("���̺�")
        End If
        Text4.Text = mrc1.Fields("��������")
        If IsNull(mrc1.Fields("������")) Then
            Text5.Text = ""
        Else
            Text5.Text = mrc1.Fields("������")
        End If
        If IsNull(mrc1.Fields("������")) Then
            Text6.Text = ""
        Else
            Text6.Text = mrc1.Fields("������")
        End If
        While mrc2.EOF = False
            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
            MSFlexGrid1.Col = 0
            MSFlexGrid1.Text = mrc2.Fields("goodsid")
            MSFlexGrid1.Col = 1
            MSFlexGrid1.Text = mrc2.Fields("goodsname")
            MSFlexGrid1.Col = 2
            MSFlexGrid1.Text = mrc2.Fields("type")
            MSFlexGrid1.Col = 3
            MSFlexGrid1.Text = mrc2.Fields("unit")
            MSFlexGrid1.Col = 4
            MSFlexGrid1.Text = mrc2.Fields("����")
            MSFlexGrid1.Col = 5
            MSFlexGrid1.Text = mrc2.Fields("����")
            MSFlexGrid1.Col = 6
            MSFlexGrid1.Text = mrc2.Fields("���")
            MSFlexGrid1.Col = 7
            If IsNull(mrc2.Fields("��ע")) Then
                MSFlexGrid1.Text = ""
            Else
                MSFlexGrid1.Text = mrc2.Fields("��ע")
            End If
            mrc2.MoveNext
        Wend
        mrc1.Close
        mrc2.Close
        cmdEdit.Enabled = True
        cmdDel.Enabled = True
        cmdAddRecord.Enabled = True
        cmdDelRecord.Enabled = True
        Text1.Enabled = False
    Else
        cmdEdit.Enabled = False
        cmdDel.Enabled = False
        cmdAddRecord.Enabled = False
        cmdDelRecord.Enabled = False
    End If
End Sub

Private Sub cmdInfo_Click()
    MsgBox "�༭���ⵥ�����ȶ�λһ�������¼��ϵͳ��" & vbCrLf & "Ҫ��λ���е�һ����¼���������ı����" & vbCrLf & "�����밴���Ұ�ť���ӵ����Ĵ����б���ѡ��" & vbCrLf & "һ�������¼��Ȼ��ִ�С��޸ġ���ɾ����������" & vbCrLf & "�����ű��У���Ҳ�����������������ҡ�", vbOKOnly + vbInformation, "��ϸ��Ϣ"
End Sub

Private Sub combo1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text3.SetFocus
    End If
End Sub

Private Sub Form_Activate()
    Project.StatusBar1.Panels(2).Text = "�༭���ⵥ"
End Sub

Private Sub Form_Load()
    MSFlexGrid1.Cols = 8
    MSFlexGrid1.Rows = 1
    MSFlexGrid1.Row = 0
    MSFlexGrid1.Col = 0
    MSFlexGrid1.Text = "���ϱ���"
    MSFlexGrid1.Col = 1
    MSFlexGrid1.Text = "��������"
    MSFlexGrid1.Col = 2
    MSFlexGrid1.Text = "����ͺ�"
    MSFlexGrid1.Col = 3
    MSFlexGrid1.Text = "������λ"
    MSFlexGrid1.Col = 4
    MSFlexGrid1.Text = "����"
    MSFlexGrid1.Col = 5
    MSFlexGrid1.Text = "����"
    MSFlexGrid1.Col = 6
    MSFlexGrid1.Text = "���"
    MSFlexGrid1.Col = 7
    MSFlexGrid1.Text = "��ע"
    Text7.Visible = False
    Combo1.AddItem "����"
    Combo1.AddItem "����"
    Combo1.AddItem "����"
    Combo1.AddItem "����"
    Combo1.AddItem "�ϲ�"
    Combo1.ListIndex = 0
    cmdEdit.Enabled = False
    cmdDel.Enabled = False
    cmdAddRecord.Enabled = False
    cmdDelRecord.Enabled = False
    Set Myws = DBEngine.Workspaces(0)
    Set Mydb = Myws.OpenDatabase(App.Path + "\store.mdb")
    Set Myrs1 = Mydb.OpenRecordset("select * from outlib")
    Set Myrs2 = Mydb.OpenRecordset("select * from outlibdetail")
End Sub

Private Sub MSFlexGrid1_Click()
    Dim c As Integer
    Dim r As Integer
    
    With MSFlexGrid1
        c = .Col
        r = .Row
        Text7.Left = MSFlexGrid1.Left + MSFlexGrid1.ColPos(c)
        Text7.Top = MSFlexGrid1.Top + MSFlexGrid1.RowPos(r)
        If .Appearance = 1 Then
            Text7.Left = Text7.Left + 2 * Screen.TwipsPerPixelX
            Text7.Top = Text7.Top + 2 * Screen.TwipsPerPixelY
        End If
        Text7.Width = .ColWidth(c)
        Text7.Height = .RowHeight(r)
        Text7.Text = .Text
    End With
    Text7.Visible = True
    Text7.SetFocus
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text2.SetFocus
    End If
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Combo1.SetFocus
    End If
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text4.SetFocus
    End If
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text5.SetFocus
    End If
End Sub

Private Sub Text5_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text6.SetFocus
    End If
End Sub

Private Sub Text6_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        cmdEdit.SetFocus
    End If
End Sub

Private Sub MSFlexGrid1_Scroll()
    Text7.Visible = False
End Sub

Private Sub Text7_Change()
    MSFlexGrid1.Text = Text7.Text
End Sub

Private Sub Text7_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Text7.Visible = False
    End If
End Sub

Private Sub Text7_LostFocus()
    Text7.Visible = False
End Sub

