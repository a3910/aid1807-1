VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form InUpdate 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�����Ϣ�޸�"
   ClientHeight    =   5190
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6930
   Icon            =   "frmInUpdate.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5190
   ScaleWidth      =   6930
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton cmdClose 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   5490
      TabIndex        =   22
      Top             =   4650
      Width           =   885
   End
   Begin VB.CommandButton cmdInfo 
      Caption         =   "��ϸ��Ϣ"
      Height          =   375
      Left            =   4245
      TabIndex        =   21
      Top             =   4650
      Width           =   885
   End
   Begin VB.CommandButton cmdFind 
      Caption         =   "����"
      Height          =   375
      Left            =   3030
      TabIndex        =   20
      Top             =   4650
      Width           =   885
   End
   Begin VB.CommandButton cmdDel 
      Caption         =   "ɾ��"
      Height          =   375
      Left            =   1755
      TabIndex        =   19
      Top             =   4650
      Width           =   885
   End
   Begin VB.CommandButton cmdEdit 
      Caption         =   "�޸�"
      Height          =   375
      Left            =   540
      TabIndex        =   18
      Top             =   4650
      Width           =   885
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   90
      TabIndex        =   0
      Top             =   60
      Width           =   6705
      _ExtentX        =   11827
      _ExtentY        =   7646
      _Version        =   393216
      Style           =   1
      Tabs            =   2
      Tab             =   1
      TabHeight       =   520
      TabCaption(0)   =   "������Ϣ"
      TabPicture(0)   =   "frmInUpdate.frx":014A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Command4"
      Tab(0).Control(1)=   "Command5"
      Tab(0).Control(2)=   "Frame1"
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "������ϸ"
      TabPicture(1)   =   "frmInUpdate.frx":0166
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "cmdAddRecord"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "cmdDelRecord"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "MSFlexGrid1"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "Text6"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).ControlCount=   4
      Begin VB.Frame Frame1 
         Caption         =   "���ⵥ������Ϣ"
         Height          =   3555
         Left            =   -74850
         TabIndex        =   7
         Top             =   450
         Width           =   6345
         Begin VB.TextBox Text1 
            Height          =   345
            Left            =   2070
            TabIndex        =   12
            Top             =   450
            Width           =   2145
         End
         Begin VB.TextBox Text2 
            Height          =   345
            Left            =   2070
            TabIndex        =   11
            Top             =   1065
            Width           =   2145
         End
         Begin VB.TextBox Text3 
            Height          =   345
            Left            =   2070
            TabIndex        =   10
            Top             =   1695
            Width           =   2145
         End
         Begin VB.TextBox Text4 
            Height          =   345
            Left            =   2070
            TabIndex        =   9
            Top             =   2310
            Width           =   2145
         End
         Begin VB.TextBox Text5 
            Height          =   345
            Left            =   2070
            TabIndex        =   8
            Top             =   2940
            Width           =   2145
         End
         Begin VB.Label Label1 
            Caption         =   "���ⵥ����"
            Height          =   345
            Left            =   600
            TabIndex        =   17
            Top             =   450
            Width           =   945
         End
         Begin VB.Label Label2 
            Caption         =   "��Ʊ����"
            Height          =   345
            Left            =   600
            TabIndex        =   16
            Top             =   1065
            Width           =   945
         End
         Begin VB.Label Label3 
            Caption         =   "��������"
            Height          =   465
            Left            =   600
            TabIndex        =   15
            Top             =   1695
            Width           =   1185
         End
         Begin VB.Label Label4 
            Caption         =   "������"
            Height          =   345
            Left            =   600
            TabIndex        =   14
            Top             =   2310
            Width           =   945
         End
         Begin VB.Label Label5 
            Caption         =   "������"
            Height          =   345
            Left            =   600
            TabIndex        =   13
            Top             =   2940
            Width           =   945
         End
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   2160
         TabIndex        =   6
         Top             =   1650
         Width           =   1005
      End
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   2805
         Left            =   210
         TabIndex        =   5
         Top             =   480
         Width           =   6225
         _ExtentX        =   10980
         _ExtentY        =   4948
         _Version        =   393216
      End
      Begin VB.CommandButton Command5 
         Caption         =   "�Ƴ�"
         Height          =   615
         Left            =   -70230
         TabIndex        =   4
         Top             =   6540
         Width           =   1725
      End
      Begin VB.CommandButton Command4 
         Caption         =   "��ӳ���"
         Height          =   525
         Left            =   -74130
         TabIndex        =   3
         Top             =   6630
         Width           =   2175
      End
      Begin VB.CommandButton cmdDelRecord 
         Caption         =   "ɾ����¼"
         Height          =   375
         Left            =   4020
         TabIndex        =   2
         Top             =   3540
         Width           =   1005
      End
      Begin VB.CommandButton cmdAddRecord 
         Caption         =   "��Ӽ�¼"
         Height          =   375
         Left            =   1560
         TabIndex        =   1
         Top             =   3510
         Width           =   1005
      End
   End
End
Attribute VB_Name = "InUpdate"
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
    Project.StatusBar1.Panels(2).Text = "��ӽ�����Ϣ"
    InfoEdit.Show 1
    
End Sub

Private Sub cmdClose_Click()
    Myrs1.Close
    Myrs2.Close
    Mydb.Close
    Myws.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "����"
End Sub

Private Sub cmdDel_Click()
    Dim a As Integer
    Dim SQLstring As String
    Dim mrc1 As Recordset
    Dim mrc2 As Recordset
    Dim mrc As Recordset
    Dim str As String
    Dim Num As Integer
    Dim price As Single
    
    a = MsgBox("��ȷ��Ҫɾ�������¼��", vbOKCancel + vbInformation, "��Ϣ��ʾ")
    Set mrc1 = Mydb.OpenRecordset("select * from inlib where ���ⵥ����='" & Trim(Text1) & "'")
    Set mrc2 = Mydb.OpenRecordset("select * from inlibdetail where ���ⵥ����='" & Trim(Text1) & "'")
    If a = vbOK Then
        mrc1.Delete
        While mrc2.EOF = False
            str = mrc2.Fields("���ϱ���")
            Num = mrc2.Fields("����")
            price = mrc2.Fields("���")
            SQLstring = "update msurplus set ����=����-" + CStr(Num) + ",���=���-" + CStr(price) + " where ���ϱ���='" & str & "'"
            Mydb.Execute (SQLstring)
            
            mrc2.Delete
            mrc2.MoveNext
        Wend
        Unload Me
    End If
    mrc2.Close
    mrc1.Close
    InUpdate.Show
End Sub

Private Sub cmdDelRecord_Click()
    Dim i As Integer, j As Integer
    
    Text6.Visible = False
    If MSFlexGrid1.Rows > 1 Then
        If MsgBox("ȷ��Ҫɾ��������¼��", vbOKCancel + vbExclamation, "����") = vbOK Then
            i = MSFlexGrid1.Row
            Text6.Text = MSFlexGrid1.TextMatrix(i, 0)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 0) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 1)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 1) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 2)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 2) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 3)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 3) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 4)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 4) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 5)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 5) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 6)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 6) = Text6.Text
            Text6.Text = MSFlexGrid1.TextMatrix(i, 7)
            Text6.Text = ""
            MSFlexGrid1.TextMatrix(i, 7) = Text6.Text
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
    Dim mrc1 As Recordset, mrc2 As Recordset
    Dim SQLstring As String
    Dim mrc As Recordset, mrcc As Recordset
    Dim Num As Integer, price As Single
    Dim str As String
    
    If Text2.Text = "" Then
        MsgBox "��Ʊ���벻��Ϊ�գ�����д��", vbOKOnly + vbExclamation, "����"
        Text2.SetFocus
        Exit Sub
    End If
    If Text3.Text = "" Then
        MsgBox "�������ڲ���Ϊ�գ�����д��", vbOKOnly + vbExclamation, "����"
        Text3.SetFocus
        Exit Sub
    Else
        If IsDate(Text3.Text) Then
            Text3 = Format(Text3, "yyyy-mm-dd")
        Else
            MsgBox "����ʱ���ʽӦΪ��yyyy-mm-dd", vbOKOnly + vbExclamation, "����"
            Text3.Text = ""
            Text3.SetFocus
            Exit Sub
        End If
    End If
    Set mrc1 = Mydb.OpenRecordset("select * from inlib where ���ⵥ����='" & Trim(Text1) & "'")
    mrc1.Delete
    Set mrc2 = Mydb.OpenRecordset("select * from inlibdetail where ���ⵥ����='" & Trim(Text1) & "'")
    While mrc2.EOF = False
        str = mrc2.Fields("���ϱ���")
        Num = mrc2.Fields("����")
        price = mrc2.Fields("���")
        SQLstring = "update msurplus set ����=����-" + CStr(Num) + ",���=���-" + CStr(price) + " where ���ϱ���='" & str & "'"
        Mydb.Execute (SQLstring)
       
        mrc2.Delete
        mrc2.MoveNext
    Wend
    
    If MSFlexGrid1.Rows > 1 Then
        mrc1.AddNew
        mrc1.Fields("���ⵥ����") = Text1.Text
        mrc1.Fields("��Ʊ����") = Text2.Text
        mrc1.Fields("��������") = Text3.Text
        If Text4.Text = "" Then
            mrc1.Fields("������") = Null
        Else
            mrc1.Fields("������") = Text4.Text
        End If
        If Text5.Text = "" Then
            mrc1.Fields("������") = Null
        Else
            mrc1.Fields("������") = Text5.Text
        End If
        mrc1.Update
        For i = 1 To (MSFlexGrid1.Rows - 1)
            mrc2.AddNew
            mrc2.Fields("���ⵥ����") = Text1.Text
            mrc2.Fields("���ϱ���") = MSFlexGrid1.TextMatrix(i, 0)
            mrc2.Fields("����") = Val(MSFlexGrid1.TextMatrix(i, 4))
            If MSFlexGrid1.TextMatrix(i, 5) = "" Then
                mrc2.Fields("����") = Null
            Else
                mrc2.Fields("����") = Val(MSFlexGrid1.TextMatrix(i, 5))
            End If
            mrc2.Fields("���") = Val(MSFlexGrid1.TextMatrix(i, 6))
            If MSFlexGrid1.TextMatrix(i, 7) = "" Then
                mrc2.Fields("��ע") = Null
            Else
                mrc2.Fields("��ע") = MSFlexGrid1.TextMatrix(i, 7)
            End If
            mrc2.Update
            SQLstring = "select * from msurplus where ���ϱ���='" & MSFlexGrid1.TextMatrix(i, 0) & "'"
            Set mrc = Mydb.OpenRecordset(SQLstring)
            '�������������û�е�ǰ���ϱ���ļ�¼�������
            If mrc.EOF = True Then
                mrc.Close
                SQLstring = "select * from msurplus"
                Set mrcc = Mydb.OpenRecordset(SQLstring)
                mrcc.AddNew
                mrcc.Fields("���ϱ���") = MSFlexGrid1.TextMatrix(i, 0)
                mrcc.Fields("����") = 0
                If MSFlexGrid1.TextMatrix(i, 5) = "" Then
                    mrcc.Fields("����") = Null
                Else
                    mrcc.Fields("����") = MSFlexGrid1.TextMatrix(i, 5)
                End If
                mrcc.Fields("���") = 0
                mrcc.Fields("��ע") = Null
                mrcc.Update
                mrcc.Close
            Else
                mrc.Close
            End If
            Num = Val(MSFlexGrid1.TextMatrix(i, 4))
            price = Val(MSFlexGrid1.TextMatrix(i, 6))
            SQLstring = "update msurplus set ����=����+" + CStr(Num) + ",���=���+" + CStr(price) + " where ���ϱ���='" & MSFlexGrid1.TextMatrix(i, 0) & "'"
            Mydb.Execute (SQLstring)
        Next i
        mrc1.Close
        mrc2.Close
        Unload Me
        Project.StatusBar1.Panels(2).Text = "����"
        Exit Sub
    Else
        MsgBox "���ⵥ�б������ٰ���һ�������ϸ��" & vbCrLf & "�˽��ⵥ��δ��д������Ϣ������д��", vbOKOnly + vbExclamation, "����"
        Exit Sub
    End If
        
End Sub

Private Sub cmdFind_Click()
    MSFlexGrid1.Rows = 1
    Dim mrc1 As Recordset, mrc2 As Recordset
    InPaperId = ""
    Project.StatusBar1.Panels(2).Text = "���ҽ�����Ϣ"
    InFind.Show 1
    If InPaperId <> "" Then
        Text1.Text = InPaperId
        Set mrc1 = Mydb.OpenRecordset("select * from inlib where ���ⵥ����='" & Trim(Text1) & "'")
        Set mrc2 = Mydb.OpenRecordset("select * from goods,inlibdetail where ���ⵥ����='" & Trim(Text1) & "' and ���ϱ���=Goodsid")
        Text2.Text = mrc1.Fields("��Ʊ����")
        Text3.Text = mrc1.Fields("��������")
        If IsNull(mrc1.Fields("������")) Then
            Text4.Text = ""
        Else
            Text4.Text = mrc1.Fields("������")
        End If
        If IsNull(mrc1.Fields("������")) Then
            Text5.Text = ""
        Else
            Text5.Text = mrc1.Fields("������")
        End If
        While mrc2.EOF = False
            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
            MSFlexGrid1.Col = 0
            MSFlexGrid1.Text = mrc2.Fields("���ϱ���")
            MSFlexGrid1.Col = 1
            MSFlexGrid1.Text = mrc2.Fields("GoodsName")
            MSFlexGrid1.Col = 2
            MSFlexGrid1.Text = mrc2.Fields("Type")
            MSFlexGrid1.Col = 3
            MSFlexGrid1.Text = mrc2.Fields("Unit")
            MSFlexGrid1.Col = 4
            MSFlexGrid1.Text = mrc2.Fields("����")
            MSFlexGrid1.Col = 5
            If IsNull(mrc2.Fields("����")) Then
                MSFlexGrid1.Text = ""
            Else
                MSFlexGrid1.Text = mrc2.Fields("����")
            End If
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
    Text6.Visible = False
    cmdDelRecord.Enabled = False
    cmdAddRecord.Enabled = False
    cmdEdit.Enabled = False
    cmdDel.Enabled = False
    Set Myws = DBEngine.Workspaces(0)
    Set Mydb = Myws.OpenDatabase(App.Path + "\store.mdb")
    Set Myrs1 = Mydb.OpenRecordset("select * from inlib")
    Set Myrs2 = Mydb.OpenRecordset("select * from inlibdetail")
End Sub

Private Sub MSFlexGrid1_Click()
    Dim c As Integer
    Dim r As Integer
    
    With MSFlexGrid1
        c = .Col
        r = .Row
        Text6.Left = MSFlexGrid1.Left + MSFlexGrid1.ColPos(c)
        Text6.Top = MSFlexGrid1.Top + MSFlexGrid1.RowPos(r)
        If .Appearance = 1 Then
            Text6.Left = Text6.Left + 2 * Screen.TwipsPerPixelX
            Text6.Top = Text6.Top + 2 * Screen.TwipsPerPixelY
        End If
        Text6.Width = .ColWidth(c)
        Text6.Height = .RowHeight(r)
        Text6.Text = .Text
    End With
    Text6.Visible = True
    Text6.SetFocus
End Sub


Private Sub MSFlexGrid1_Scroll()
    Text6.Visible = False
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
        cmdEdit.SetFocus
    End If
End Sub

Private Sub Text6_Change()
    MSFlexGrid1.Text = Text6.Text
End Sub

Private Sub Text6_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        Text6.Visible = False
    End If
End Sub

Private Sub Text6_LostFocus()
    Text6.Visible = False
End Sub
