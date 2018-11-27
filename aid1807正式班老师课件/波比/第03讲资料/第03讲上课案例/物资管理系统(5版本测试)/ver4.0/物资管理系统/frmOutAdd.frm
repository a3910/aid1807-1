VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form OutAdd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "添加出库信息"
   ClientHeight    =   5580
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7290
   Icon            =   "frmOutAdd.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5580
   ScaleWidth      =   7290
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdClose 
      Caption         =   "退出"
      Height          =   375
      Left            =   4620
      TabIndex        =   22
      Top             =   4950
      Width           =   915
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Height          =   375
      Left            =   2910
      TabIndex        =   21
      Top             =   4950
      Width           =   915
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "添加"
      Height          =   375
      Left            =   1200
      TabIndex        =   20
      Top             =   4950
      Width           =   915
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4575
      Left            =   210
      TabIndex        =   0
      Top             =   150
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   8070
      _Version        =   393216
      Style           =   1
      Tabs            =   2
      TabHeight       =   520
      TabCaption(0)   =   "基本信息"
      TabPicture(0)   =   "frmOutAdd.frx":0442
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "材料明细"
      TabPicture(1)   =   "frmOutAdd.frx":045E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "cmdDelRecord"
      Tab(1).Control(1)=   "MSFlexGrid1"
      Tab(1).Control(2)=   "Text7"
      Tab(1).Control(3)=   "cmdAddRecord"
      Tab(1).ControlCount=   4
      Begin VB.Frame Frame1 
         Caption         =   "出库单基本信息"
         Height          =   3795
         Left            =   240
         TabIndex        =   5
         Top             =   540
         Width           =   6375
         Begin VB.TextBox Text1 
            Height          =   315
            Left            =   2160
            TabIndex        =   12
            Top             =   480
            Width           =   2115
         End
         Begin VB.TextBox Text2 
            Height          =   315
            Left            =   2160
            TabIndex        =   11
            Top             =   945
            Width           =   2115
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   2160
            TabIndex        =   10
            Top             =   1395
            Width           =   2115
         End
         Begin VB.TextBox Text3 
            Height          =   315
            Left            =   2160
            TabIndex        =   9
            Top             =   1860
            Width           =   2115
         End
         Begin VB.TextBox Text4 
            Height          =   315
            Left            =   2160
            TabIndex        =   8
            Top             =   2295
            Width           =   2115
         End
         Begin VB.TextBox Text5 
            Height          =   315
            Left            =   2160
            TabIndex        =   7
            Top             =   2730
            Width           =   2115
         End
         Begin VB.TextBox Text6 
            Height          =   315
            Left            =   2160
            TabIndex        =   6
            Top             =   3210
            Width           =   2115
         End
         Begin VB.Label Label1 
            Caption         =   "出库单号码"
            Height          =   255
            Left            =   870
            TabIndex        =   19
            Top             =   510
            Width           =   1065
         End
         Begin VB.Label Label2 
            Caption         =   "发票号码"
            Height          =   255
            Left            =   870
            TabIndex        =   18
            Top             =   975
            Width           =   1065
         End
         Begin VB.Label Label3 
            Caption         =   "出库类型"
            Height          =   255
            Left            =   900
            TabIndex        =   17
            Top             =   1425
            Width           =   1065
         End
         Begin VB.Label Label4 
            Caption         =   "工程号"
            Height          =   255
            Left            =   900
            TabIndex        =   16
            Top             =   1890
            Width           =   1065
         End
         Begin VB.Label Label5 
            Caption         =   "出库日期"
            Height          =   405
            Left            =   900
            TabIndex        =   15
            Top             =   2325
            Width           =   1065
         End
         Begin VB.Label Label6 
            Caption         =   "经办人"
            Height          =   255
            Left            =   900
            TabIndex        =   14
            Top             =   2775
            Width           =   1065
         End
         Begin VB.Label Label7 
            Caption         =   "保管人"
            Height          =   255
            Left            =   900
            TabIndex        =   13
            Top             =   3240
            Width           =   1065
         End
      End
      Begin VB.CommandButton cmdAddRecord 
         Caption         =   "添加记录"
         Height          =   375
         Left            =   -73260
         TabIndex        =   4
         Top             =   3990
         Width           =   1005
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   -72960
         TabIndex        =   3
         Top             =   1350
         Width           =   945
      End
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   3375
         Left            =   -74730
         TabIndex        =   2
         Top             =   390
         Width           =   6345
         _ExtentX        =   11192
         _ExtentY        =   5953
         _Version        =   393216
      End
      Begin VB.CommandButton cmdDelRecord 
         Caption         =   "删除记录"
         Height          =   375
         Left            =   -70680
         TabIndex        =   1
         Top             =   3990
         Width           =   1005
      End
   End
End
Attribute VB_Name = "OutAdd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Myws As Workspace
Dim Mydb As Database
Dim Myrs1 As Recordset
Dim Myrs2 As Recordset

Private Sub cmdAdd_Click()
    Dim count As Integer, i As Integer
    Dim mrc As Recordset
    Dim SQLstring As String, str As String
    Dim Num As Integer
    Dim price As Single
    
    If Text1.Text = "" Then
        MsgBox "出库单号码不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text1.SetFocus
        Exit Sub
    End If
    While Myrs1.EOF = False
        If Myrs1.Fields(0) = Text1.Text Then
            MsgBox "此出库单号码已经存在，请认真核查！", vbOKOnly + vbExclamation, "警告"
            Text1.Text = ""
            Text2.Text = ""
            Text3.Text = ""
            Text4.Text = ""
            Text5.Text = ""
            Text6.Text = ""
            Combo1.ListIndex = 0
            Text1.SetFocus
            Exit Sub
        Else
            Myrs1.MoveNext
        End If
    Wend
    If Text2.Text = "" Then
        MsgBox "发票号码不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text2.SetFocus
        Exit Sub
    End If
    If Text4.Text = "" Then
        MsgBox "出库日期不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text4.SetFocus
        Exit Sub
    Else
        If IsDate(Text4.Text) Then
            Text4 = Format(Text4, "yyyy-mm-dd")
        Else
            MsgBox "出库时间格式应为：yyyy-mm-dd", vbOKOnly + vbExclamation, "警告"
            Text4.Text = ""
            Text4.SetFocus
            Exit Sub
        End If
    End If
    
    If MSFlexGrid1.Rows > 1 Then
        Myrs1.AddNew
        Myrs1.Fields("出库单号码") = Text1.Text
        Myrs1.Fields("发票号码") = Text2.Text
        Myrs1.Fields("出库类型") = Combo1.Text
        If Text3.Text = "" Then
            Myrs1.Fields("工程号") = Null
        Else
            Myrs1.Fields("工程号") = Text3.Text
        End If
        Myrs1.Fields("出库日期") = Text4.Text
        If Text5.Text = "" Then
            Myrs1.Fields("经办人") = Null
        Else
            Myrs1.Fields("经办人") = Text5.Text
        End If
        If Text6.Text = "" Then
            Myrs1.Fields("保管人") = Null
        Else
            Myrs1.Fields("保管人") = Text6.Text
        End If
        Myrs1.Update
        count = MSFlexGrid1.Rows
        For i = 1 To (count - 1)
            Myrs2.AddNew
            Myrs2.Fields("出库单号码") = Text1.Text
            Myrs2.Fields("材料编码") = MSFlexGrid1.TextMatrix(i, 0)
            Myrs2.Fields("数量") = Val(MSFlexGrid1.TextMatrix(i, 4))
            If MSFlexGrid1.TextMatrix(i, 5) = "" Then
                Myrs2.Fields("单价") = Null
            Else
                Myrs2.Fields("单价") = Val(MSFlexGrid1.TextMatrix(i, 5))
            End If
            Myrs2.Fields("金额") = Val(MSFlexGrid1.TextMatrix(i, 6))
            If MSFlexGrid1.TextMatrix(i, 7) = "" Then
                Myrs2.Fields("备注") = Null
            Else
                Myrs2.Fields("备注") = MSFlexGrid1.TextMatrix(i, 7)
            End If
            Myrs2.Update
            '更新余额库
            str = MSFlexGrid1.TextMatrix(i, 0)
            Num = MSFlexGrid1.TextMatrix(i, 4)
            price = MSFlexGrid1.TextMatrix(i, 6)
            SQLstring = "update msurplus set 数量=数量-" + CStr(Num) + ",金额=金额-" + CStr(price) + " where 材料编码='" & str & "'"
            Mydb.Execute (SQLstring)
            'Set mrc = mydb.OpenRecordset("select * from msurplus where 材料编码='" & str & "'")
            'If mrc.Fields("数量") = 0 Then
                'mrc.Delete
            'End If
            'mrc.Close
        Next i
        Unload Me
        Project.StatusBar1.Panels(2).Text = "就绪"
        Exit Sub
    Else
        MsgBox "出库单中必须至少包含一项材料明细。" & vbCrLf & "此出库单中未填写材料信息，请填写。", vbOKOnly + vbExclamation, "警告"
        Exit Sub
    End If
End Sub

Private Sub cmdAddRecord_Click()
    Project.StatusBar1.Panels(2).Text = "添加出库信息"
    OutInfo.Show 1
End Sub

Private Sub cmdCancel_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    Text6.Text = ""
    Combo1.ListIndex = 0
    Text1.SetFocus
End Sub

Private Sub cmdClose_Click()
    Myrs2.Close
    Myrs1.Close
    Mydb.Close
    Myws.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub

Private Sub cmdDelRecord_Click()
    Dim i As Integer, j As Integer
    
    Text7.Visible = False
    If MSFlexGrid1.Rows > 1 Then
        If MsgBox("确认要删除这条记录吗？", vbOKCancel + vbExclamation, "警告") = vbOK Then
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

Private Sub combo1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text3.SetFocus
    End If
End Sub

Private Sub Form_Activate()
    Project.StatusBar1.Panels(2).Text = "添加出库单"
End Sub

Private Sub Form_Load()
    MSFlexGrid1.Cols = 8
    MSFlexGrid1.Rows = 1
    MSFlexGrid1.Row = 0
    MSFlexGrid1.Col = 0
    MSFlexGrid1.Text = "材料编码"
    MSFlexGrid1.Col = 1
    MSFlexGrid1.Text = "材料名称"
    MSFlexGrid1.Col = 2
    MSFlexGrid1.Text = "规格型号"
    MSFlexGrid1.Col = 3
    MSFlexGrid1.Text = "计量单位"
    MSFlexGrid1.Col = 4
    MSFlexGrid1.Text = "数量"
    MSFlexGrid1.Col = 5
    MSFlexGrid1.Text = "单价"
    MSFlexGrid1.Col = 6
    MSFlexGrid1.Text = "金额"
    MSFlexGrid1.Col = 7
    MSFlexGrid1.Text = "备注"
    Text7.Visible = False
    Combo1.AddItem "修理"
    Combo1.AddItem "销售"
    Combo1.AddItem "改造"
    Combo1.AddItem "北拨"
    Combo1.AddItem "南拨"
    Combo1.ListIndex = 0
    cmdDelRecord.Enabled = False
    cmdCancel.Enabled = False
    Text4.Text = Date
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


Private Sub MSFlexGrid1_Scroll()
    Text7.Visible = False
End Sub

Private Sub Text1_Change()
    cmdCancel.Enabled = True
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
        cmdAdd.SetFocus
    End If
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

