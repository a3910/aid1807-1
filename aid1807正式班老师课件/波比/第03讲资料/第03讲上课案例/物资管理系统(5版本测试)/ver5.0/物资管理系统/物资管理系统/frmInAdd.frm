VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form InAdd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "添加入库信息"
   ClientHeight    =   5130
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6945
   Icon            =   "frmInAdd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5130
   ScaleWidth      =   6945
   StartUpPosition =   2  '屏幕中心
   Begin VB.CommandButton cmdClose 
      Caption         =   "退出"
      Height          =   375
      Left            =   4560
      TabIndex        =   20
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "取消"
      Height          =   375
      Left            =   2910
      TabIndex        =   19
      Top             =   4560
      Width           =   1185
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "添加"
      Height          =   375
      Left            =   1260
      TabIndex        =   18
      Top             =   4560
      Width           =   1125
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4185
      Left            =   90
      TabIndex        =   0
      Top             =   60
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   7382
      _Version        =   393216
      Style           =   1
      Tabs            =   2
      Tab             =   1
      TabHeight       =   520
      TabCaption(0)   =   "基本信息"
      TabPicture(0)   =   "frmInAdd.frx":0442
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Command4"
      Tab(0).Control(1)=   "Command5"
      Tab(0).Control(2)=   "Frame1"
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "材料明细"
      TabPicture(1)   =   "frmInAdd.frx":045E
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
         Caption         =   "进库单基本信息"
         Height          =   3465
         Left            =   -74850
         TabIndex        =   7
         Top             =   450
         Width           =   6435
         Begin VB.TextBox Text1 
            Height          =   345
            Left            =   2100
            TabIndex        =   13
            Top             =   360
            Width           =   2145
         End
         Begin VB.TextBox Text2 
            Height          =   345
            Left            =   2100
            TabIndex        =   12
            Top             =   975
            Width           =   2145
         End
         Begin VB.TextBox Text3 
            Height          =   345
            Left            =   2100
            TabIndex        =   11
            Top             =   1605
            Width           =   2145
         End
         Begin VB.TextBox Text4 
            Height          =   345
            Left            =   2100
            TabIndex        =   10
            Top             =   2220
            Width           =   2145
         End
         Begin VB.TextBox Text5 
            Height          =   345
            Left            =   2100
            TabIndex        =   9
            Top             =   2850
            Width           =   2145
         End
         Begin VB.Label Label2 
            Caption         =   "发票号码"
            Height          =   345
            Left            =   630
            TabIndex        =   17
            Top             =   975
            Width           =   945
         End
         Begin VB.Label Label3 
            Caption         =   "进库日期"
            Height          =   465
            Left            =   630
            TabIndex        =   16
            Top             =   1590
            Width           =   1125
         End
         Begin VB.Label Label4 
            Caption         =   "经办人"
            Height          =   345
            Left            =   630
            TabIndex        =   15
            Top             =   2220
            Width           =   945
         End
         Begin VB.Label Label5 
            Caption         =   "保管人"
            Height          =   345
            Left            =   630
            TabIndex        =   14
            Top             =   2850
            Width           =   945
         End
         Begin VB.Label Label1 
            Caption         =   "进库单号码"
            Height          =   345
            Left            =   630
            TabIndex        =   8
            Top             =   420
            Width           =   945
         End
      End
      Begin VB.TextBox Text6 
         Height          =   285
         Left            =   1920
         TabIndex        =   6
         Top             =   1320
         Width           =   1005
      End
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   2715
         Left            =   240
         TabIndex        =   5
         Top             =   480
         Width           =   6225
         _ExtentX        =   10980
         _ExtentY        =   4789
         _Version        =   393216
      End
      Begin VB.CommandButton Command5 
         Caption         =   "推出"
         Height          =   615
         Left            =   -70230
         TabIndex        =   4
         Top             =   6540
         Width           =   1725
      End
      Begin VB.CommandButton Command4 
         Caption         =   "添加出苦"
         Height          =   525
         Left            =   -74130
         TabIndex        =   3
         Top             =   6630
         Width           =   2175
      End
      Begin VB.CommandButton cmdDelRecord 
         Caption         =   "删除记录"
         Height          =   375
         Left            =   3870
         TabIndex        =   2
         Top             =   3450
         Width           =   1095
      End
      Begin VB.CommandButton cmdAddRecord 
         Caption         =   "添加记录"
         Height          =   375
         Left            =   1560
         TabIndex        =   1
         Top             =   3450
         Width           =   1095
      End
   End
End
Attribute VB_Name = "InAdd"
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
    Dim SQLstring As String
    Dim mrc As Recordset, mrcc As Recordset
    Dim Num As Integer, price As Single
    
    If Text1.Text = "" Then
        MsgBox "进库单号码不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text1.SetFocus
        Exit Sub
    End If
    While Myrs1.EOF = False
        If Myrs1.Fields("进库单号码") = Text1.Text Then
            MsgBox "此进库单号码已经存在，请认真核查！", vbOKOnly + vbExclamation, "警告"
            Text1.Text = ""
            Text2.Text = ""
            Text3.Text = ""
            Text4.Text = ""
            Text5.Text = ""
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
    If Text3.Text = "" Then
        MsgBox "进库日期不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text3.SetFocus
        Exit Sub
    Else
        If IsDate(Text3.Text) Then
            Text3 = Format(Text3, "yyyy-mm-dd")
        Else
            MsgBox "进库时间格式应为：yyyy-mm-dd", vbOKOnly + vbExclamation, "警告"
            Text3.Text = ""
            Text3.SetFocus
            Exit Sub
        End If
    End If
    
    If MSFlexGrid1.Rows > 1 Then
        Myrs1.AddNew
        Myrs1.Fields("进库单号码") = Text1.Text
        Myrs1.Fields("发票号码") = Text2.Text
        Myrs1.Fields("进库日期") = Text3.Text
        If Text4.Text = "" Then
            Myrs1.Fields("经办人") = Null
        Else
            Myrs1.Fields("经办人") = Text4.Text
        End If
        If Text5.Text = "" Then
            Myrs1.Fields("保管人") = Null
        Else
            Myrs1.Fields("保管人") = Text5.Text
        End If
        Myrs1.Update
        count = MSFlexGrid1.Rows
        For i = 1 To (count - 1)
            Myrs2.AddNew
            Myrs2.Fields("进库单号码") = Text1.Text
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
            SQLstring = "select * from msurplus where 材料编码='" & MSFlexGrid1.TextMatrix(i, 0) & "'"
            Set mrc = Mydb.OpenRecordset(SQLstring)
            '如果材料余额表中没有当前材料编码的记录，就添加
            If mrc.EOF = True Then
                mrc.Close
                SQLstring = "select * from msurplus"
                Set mrcc = Mydb.OpenRecordset(SQLstring)
                mrcc.AddNew
                mrcc.Fields("材料编码") = MSFlexGrid1.TextMatrix(i, 0)
                mrcc.Fields("数量") = 0
                If MSFlexGrid1.TextMatrix(i, 5) = "" Then
                    mrcc.Fields("单价") = Null
                Else
                    mrcc.Fields("单价") = MSFlexGrid1.TextMatrix(i, 5)
                End If
                mrcc.Fields("金额") = 0
                mrcc.Fields("备注") = Null
                mrcc.Update
                mrcc.Close
            Else
                mrc.Close
            End If
            Num = Val(MSFlexGrid1.TextMatrix(i, 4))
            price = Val(MSFlexGrid1.TextMatrix(i, 6))
            SQLstring = "update msurplus set 数量=数量+" + CStr(Num) + ",金额=金额+" + CStr(price) + " where 材料编码='" & MSFlexGrid1.TextMatrix(i, 0) & "'"
            Mydb.Execute (SQLstring)
        Next i
        Unload Me
        Project.StatusBar1.Panels(2).Text = "就绪"
        Exit Sub
    Else
        MsgBox "进库单中必须至少包含一项材料明细。" & vbCrLf & "此进库单中未填写材料信息，请填写。", vbOKOnly + vbExclamation, "警告"
        Exit Sub
    End If
End Sub

Private Sub cmdAddRecord_Click()
    Project.StatusBar1.Panels(2).Text = "添加进库信息"
    Info.Show 1
    
End Sub

Private Sub cmdCancel_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text5.Text = ""
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
    
    Text6.Visible = False
    If MSFlexGrid1.Rows > 1 Then
        If MsgBox("确认要删除这条记录吗？", vbOKCancel + vbExclamation, "警告") = vbOK Then
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

Private Sub cmdEditRecord_Click()
    Dim c As Integer
    Dim r As Integer
    
    c = 1
    r = 1
    Text6.Left = MSFlexGrid1.Left + MSFlexGrid1.ColPos(c)
    Text6.Top = MSFlexGrid1.Top + MSFlexGrid1.RowPos(r)
    If MSFlexGrid1.Appearance = 1 Then
        Text6.Left = Text6.Left + 2 * Screen.TwipsPerPixelX
        Text6.Top = Text6.Top + 2 * Screen.TwipsPerPixelY
    End If
    Text6.Width = MSFlexGrid1.ColWidth(c)
    Text6.Height = MSFlexGrid1.RowHeight(r)
    Text6.Visible = True
    Text6.SetFocus
    Text6.Text = MSFlexGrid1.Text
End Sub

Private Sub Form_Activate()
    Project.StatusBar1.Panels(2).Text = "添加进库单"
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
    Text6.Visible = False
    cmdDelRecord.Enabled = False
    cmdCancel.Enabled = False
    Text3.Text = Date
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
        cmdAdd.SetFocus
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



