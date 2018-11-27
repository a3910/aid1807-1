VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form MaterialManage 
   Caption         =   "材料信息管理"
   ClientHeight    =   3720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7395
   Icon            =   "frmMaterialManage.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   3720
   ScaleWidth      =   7395
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame1 
      Height          =   3780
      Left            =   0
      TabIndex        =   2
      Top             =   -60
      Width           =   7410
      Begin VB.Frame Frame3 
         Height          =   3375
         Left            =   4290
         TabIndex        =   4
         Top             =   300
         Width           =   3024
         Begin VB.CommandButton Command1 
            Caption         =   "新 增"
            Height          =   315
            Left            =   180
            TabIndex        =   16
            Top             =   2400
            Width           =   1152
         End
         Begin VB.CommandButton Command3 
            Caption         =   " 修 改 "
            Height          =   315
            Left            =   180
            TabIndex        =   15
            Top             =   2865
            Width           =   1152
         End
         Begin VB.CommandButton Command2 
            Caption         =   "删 除"
            Height          =   315
            Left            =   1590
            TabIndex        =   14
            Top             =   2400
            Width           =   1152
         End
         Begin VB.TextBox Text1 
            Height          =   345
            Left            =   960
            TabIndex        =   12
            Top             =   1800
            Width           =   1755
         End
         Begin VB.TextBox PutText 
            Height          =   345
            Index           =   1
            Left            =   960
            MaxLength       =   30
            TabIndex        =   1
            Top             =   1295
            Width           =   1755
         End
         Begin VB.CommandButton Command4 
            Cancel          =   -1  'True
            Caption         =   "返 回"
            Height          =   315
            Left            =   1590
            TabIndex        =   8
            Top             =   2880
            Width           =   1152
         End
         Begin VB.TextBox PutText 
            Height          =   345
            Index           =   0
            Left            =   960
            MaxLength       =   30
            TabIndex        =   0
            Top             =   790
            Width           =   1755
         End
         Begin VB.Label Label4 
            Caption         =   "计量单位"
            Height          =   255
            Left            =   150
            TabIndex        =   11
            Top             =   1845
            Width           =   750
         End
         Begin VB.Label ShowID 
            Alignment       =   2  'Center
            BorderStyle     =   1  'Fixed Single
            Height          =   345
            Left            =   960
            TabIndex        =   10
            Top             =   285
            Width           =   1755
         End
         Begin VB.Label Label3 
            Caption         =   "材料编码"
            Height          =   255
            Left            =   150
            TabIndex        =   9
            Top             =   330
            Width           =   750
         End
         Begin VB.Label Label2 
            Caption         =   "材料名称"
            Height          =   255
            Left            =   150
            TabIndex        =   7
            Top             =   835
            Width           =   750
         End
         Begin VB.Label Label1 
            Caption         =   "规格型号"
            Height          =   255
            Left            =   150
            TabIndex        =   5
            Top             =   1340
            Width           =   750
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "材料列表"
         Height          =   3360
         Left            =   90
         TabIndex        =   3
         Top             =   300
         Width           =   4095
         Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
            Height          =   1000
            Left            =   150
            TabIndex        =   13
            Top             =   330
            Width           =   3795
            _ExtentX        =   6694
            _ExtentY        =   1773
            _Version        =   393216
            FixedRows       =   0
         End
         Begin VB.CommandButton Command5 
            Caption         =   "选择"
            Height          =   285
            Left            =   1380
            TabIndex        =   6
            Top             =   2940
            Width           =   1188
         End
      End
   End
End
Attribute VB_Name = "MaterialManage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim FocusMark As Integer
Dim myindex As Integer
Dim portindex As Integer
Dim NewID As Integer
Dim Mydb  As Database
Dim rs As Recordset

Private Sub Command1_Click()
    If (Trim(PutText(0).Text) = "") Then
        MsgBox "请输入材料名称", 64, "信息提示"
        Exit Sub
    End If
    If (Trim(PutText(1).Text) = "") Then
        MsgBox "请输入规格型号", 64, "信息提示"
        Exit Sub
    End If
    If (Trim(Text1) = "") Then
        MsgBox "请输入计量单位", 64, "信息提示"
        Exit Sub
    End If
   
    For i = 1 To MSFlexGrid1.Rows - 1
        If MSFlexGrid1.TextMatrix(i, 1) = PutText(0).Text And MSFlexGrid1.TextMatrix(i, 2) = PutText(1) And MSFlexGrid1.TextMatrix(i, 3) = Text1 Then
            MsgBox "表中已经存在此种材料的记录！", vbOKOnly + vbExclamation, "警告"
            ShowID = NewID
            PutText(0).Text = ""
            PutText(1).Text = ""
            Text1.Text = ""
            PutText(0).SetFocus
            Exit Sub
        End If
    Next i
    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
    MSFlexGrid1.Col = 0
    MSFlexGrid1.Text = NewID
    MSFlexGrid1.Col = 1
    MSFlexGrid1.Text = PutText(0).Text
    MSFlexGrid1.Col = 2
    MSFlexGrid1.Text = PutText(1).Text
    MSFlexGrid1.Col = 3
    MSFlexGrid1.Text = Text1.Text
    Set rs = Mydb.OpenRecordset("Select * from goods ")
    rs.AddNew
    rs.Fields("Goodsid") = Trim(NewID)
    rs.Fields("GoodsName") = Trim(PutText(0).Text)
    If Trim(PutText(1).Text) <> "" Then
        rs.Fields("Type") = Trim(PutText(1).Text)
    End If
    If Trim(Text1.Text) <> "" Then
        rs.Fields("Unit") = Trim(Text1)
    End If
    rs.Update
    rs.Close
    NewID = NewID + 1
    ShowID = NewID
    
End Sub

Private Sub Command2_Click()
    If ShowID = "" Then
        MsgBox "请选择材料", vbCritical, "信息提示"
        Exit Sub
    End If
    Set rs = Mydb.OpenRecordset("select * from Goods where Goodsid='" + Trim(ShowID) + "'")
    If Not rs.EOF Then
         If (vbYes = MsgBox("您确定要删除该纪录吗？,这可能回导致数据的丢失", vbYesNo + vbQuestion, "信息提示")) Then
            rs.Delete
            If MSFlexGrid1.Row = MSFlexGrid1.Rows - 1 Then
                MSFlexGrid1.Rows = MSFlexGrid1.Rows - 1
            Else
                For i = MSFlexGrid1.Row + 1 To MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Row = i
                    MSFlexGrid1.Col = 0
                    ll1 = MSFlexGrid1
                    MSFlexGrid1.Col = 1
                    ll2 = MSFlexGrid1
                    MSFlexGrid1.Col = 2
                    ll3 = MSFlexGrid1
                    MSFlexGrid1.Col = 3
                    ll4 = MSFlexGrid1
                    MSFlexGrid1.Row = i - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1 = ll1
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1 = ll2
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1 = ll3
                    MSFlexGrid1.Col = 3
                    MSFlexGrid1 = ll4
                Next
                MSFlexGrid1.Rows = MSFlexGrid1.Rows - 1
            End If
         End If
    End If
    rs.Close
End Sub

Private Sub Command3_Click()
    If ShowID = "" Then
        MsgBox "请选择材料", vbCritical, "信息提示"
        Exit Sub
    End If
    Set rs = Mydb.OpenRecordset("select * from Goods where Goodsid='" + ShowID + "'")
    If Not rs.EOF Then
        If (Trim(PutText(0).Text) = "") Then
            MsgBox "请输入材料名称", 64, "信息提示"
            Exit Sub
        End If
        If (Trim(PutText(1).Text) = "") Then
            MsgBox "请输入规格型号", 64, "信息提示"
            Exit Sub
        End If
        If (Trim(Text1) = "") Then
            MsgBox "请输入计量单位", 64, "信息提示"
            Exit Sub
        End If
        For i = 1 To MSFlexGrid1.Rows - 1
            If MSFlexGrid1.TextMatrix(i, 1) = PutText(0).Text And MSFlexGrid1.TextMatrix(i, 2) = PutText(1) And MSFlexGrid1.TextMatrix(i, 3) = Text1 Then
                MsgBox "表中已经存在此种材料的记录！", vbOKOnly + vbExclamation, "警告"
                PutText(0).SetFocus
                Exit Sub
            End If
        Next i
        rs.Edit
        rs.Fields("GoodsName") = Trim(PutText(0).Text)
        MSFlexGrid1.Col = 1
        MSFlexGrid1.Text = Trim(PutText(0).Text)
        MSFlexGrid1.Col = 2
        MSFlexGrid1.Text = Trim(PutText(1).Text)
        MSFlexGrid1.Col = 3
        MSFlexGrid1.Text = Trim(Text1.Text)
        If Trim(PutText(1).Text) <> "" Then
            rs.Fields("Type") = Trim(PutText(1).Text)
        End If
        If Trim(Text1.Text) <> "" Then
            rs.Fields("Unit") = Trim(Text1)
        End If
       rs.Update
    End If
    rs.Close
End Sub

Private Sub Command4_Click()
    Mydb.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub

Private Sub Command5_Click()
    Call MSFlexGrid1_DblClick
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = 13) Then
    If (FocusMark < 1) Then
        PutText(FocusMark + 1).SetFocus
    Else
        PutText(0).SetFocus
    End If
End If
End Sub

Private Sub Form_Load()
    MSFlexGrid1.Rows = 1
    MSFlexGrid1.Cols = 4
    MSFlexGrid1.Row = 0
    MSFlexGrid1.Col = 0
    MSFlexGrid1.Text = "材料编码"
    MSFlexGrid1.Col = 1
    MSFlexGrid1.Text = "材料名称"
    MSFlexGrid1.Col = 2
    MSFlexGrid1.Text = "规格型号"
    MSFlexGrid1.Col = 3
    MSFlexGrid1.Text = "计量单位"
    MSFlexGrid1.ColWidth(1) = 1200
    NewID = 1000
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    Set rs = Mydb.OpenRecordset("goods")
    
    Do While Not rs.EOF
        MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
        MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
        MSFlexGrid1.Col = 0
        MSFlexGrid1.Text = rs.Fields("GoodsId")
        MSFlexGrid1.Col = 1
        MSFlexGrid1.Text = rs.Fields("GoodsName")
        If NewID < rs.Fields("GoodsID") Then
            NewID = rs.Fields("GoodsID")
        End If
        MSFlexGrid1.Col = 2
        MSFlexGrid1.Text = rs.Fields("Type")
        MSFlexGrid1.Col = 3
        MSFlexGrid1.Text = rs.Fields("Unit")
        rs.MoveNext
    Loop
    rs.Close
    NewID = NewID + 1
    ShowID.Caption = Trim(Format(NewID))
    Command3.Enabled = False
    Command2.Enabled = False
End Sub

Private Sub MSFlexGrid1_DblClick()
    If (MSFlexGrid1.Row = 0) Then
        Exit Sub
    End If
    MSFlexGrid1.Col = 0
    Set rs = Mydb.OpenRecordset("Select * from goods where Goodsid='" + MSFlexGrid1.Text + "'")
    If Not rs.EOF Then
        ShowID.Caption = rs.Fields("goodsid")
        PutText(0).Text = rs.Fields("GoodsName")
        If (Not IsNull(rs.Fields("Type"))) Then
            PutText(1).Text = rs.Fields("type")
        Else
            PutText(1).Text = ""
        End If
        If (Not IsNull(rs.Fields("unit"))) Then
            Text1.Text = rs.Fields("unit")
        Else
            Text1.Text = ""
        End If
        
        Command3.Enabled = True
        Command2.Enabled = True
    End If
    rs.Close
End Sub

Private Sub PutText_GotFocus(Index As Integer)
    FocusMark = Index
End Sub
