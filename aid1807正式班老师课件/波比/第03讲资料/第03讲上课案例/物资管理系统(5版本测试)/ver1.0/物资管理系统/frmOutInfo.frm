VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form OutInfo 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "出库材料信息"
   ClientHeight    =   5085
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5985
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   5985
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame1 
      Caption         =   "材料信息"
      Height          =   4845
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5685
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid2 
         Height          =   2175
         Left            =   1800
         TabIndex        =   20
         Top             =   600
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   3836
         _Version        =   393216
         Appearance      =   0
      End
      Begin VB.TextBox Text8 
         Height          =   345
         Left            =   1890
         TabIndex        =   11
         Top             =   3690
         Width           =   2295
      End
      Begin VB.TextBox Text7 
         Height          =   345
         Left            =   1890
         TabIndex        =   10
         Top             =   3210
         Width           =   2295
      End
      Begin VB.TextBox Text6 
         Height          =   345
         Left            =   1890
         TabIndex        =   9
         Top             =   2735
         Width           =   2295
      End
      Begin VB.TextBox Text5 
         Height          =   345
         Left            =   1890
         TabIndex        =   8
         Top             =   2260
         Width           =   2295
      End
      Begin VB.TextBox Text4 
         Height          =   345
         Left            =   1890
         TabIndex        =   7
         Top             =   1785
         Width           =   2295
      End
      Begin VB.TextBox Text3 
         Height          =   345
         Left            =   1890
         TabIndex        =   6
         Top             =   1310
         Width           =   2295
      End
      Begin VB.TextBox Text2 
         Height          =   345
         Left            =   1890
         TabIndex        =   5
         Top             =   835
         Width           =   2295
      End
      Begin VB.ComboBox Combo1 
         Height          =   300
         Left            =   1890
         TabIndex        =   4
         Top             =   330
         Width           =   2295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "添加"
         Height          =   345
         Left            =   420
         TabIndex        =   3
         Top             =   4230
         Width           =   1095
      End
      Begin VB.CommandButton Command2 
         Caption         =   "取消"
         Height          =   345
         Left            =   2085
         TabIndex        =   2
         Top             =   4230
         Width           =   1095
      End
      Begin VB.CommandButton Command3 
         Caption         =   "退出"
         Height          =   345
         Left            =   3480
         TabIndex        =   1
         Top             =   4230
         Width           =   1095
      End
      Begin VB.Label Label8 
         Caption         =   "备   注"
         Height          =   345
         Left            =   420
         TabIndex        =   19
         Top             =   3690
         Width           =   975
      End
      Begin VB.Label Label7 
         Caption         =   "金额(元)"
         Height          =   345
         Left            =   420
         TabIndex        =   18
         Top             =   3210
         Width           =   975
      End
      Begin VB.Label Label6 
         Caption         =   "单价(元)"
         Height          =   345
         Left            =   420
         TabIndex        =   17
         Top             =   2735
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "数   量"
         Height          =   345
         Left            =   420
         TabIndex        =   16
         Top             =   2260
         Width           =   975
      End
      Begin VB.Label Label4 
         Caption         =   "计量单位"
         Height          =   345
         Left            =   420
         TabIndex        =   15
         Top             =   1785
         Width           =   975
      End
      Begin VB.Label Label3 
         Caption         =   "规格型号"
         Height          =   345
         Left            =   420
         TabIndex        =   14
         Top             =   1310
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "材料名称"
         Height          =   345
         Left            =   420
         TabIndex        =   13
         Top             =   835
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "材料编码"
         Height          =   345
         Left            =   420
         TabIndex        =   12
         Top             =   360
         Width           =   975
      End
   End
End
Attribute VB_Name = "OutInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim MSFlexGrid1 As MSFlexGrid
Dim Mydb As Database
Dim myrecordset As Recordset

Private Sub Combo1_Change()
    Command2.Enabled = True
End Sub

Private Sub Combo1_GotFocus()
    MSFlexGrid2.Visible = True
End Sub

Private Sub Command1_Click()
    Dim i As Integer
    
    Set MSFlexGrid1 = OutAdd.MSFlexGrid1
    If Combo1.Text = "" Then
        MsgBox "材料编码字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Combo1.SetFocus
        Exit Sub
    End If
    For i = 1 To MSFlexGrid1.Rows - 1
        If MSFlexGrid1.TextMatrix(i, 0) = Combo1.Text Then
            MsgBox "表中已经存在此材料编码的记录！", vbOKOnly + vbExclamation, "警告"
            Combo1.Text = ""
            Text2.Text = ""
            Text3.Text = ""
            Text4.Text = ""
            Text5.Text = ""
            Text6.Text = ""
            Text7.Text = ""
            Text8.Text = ""
            Combo1.SetFocus
            Exit Sub
        End If
    Next i
    If Text2.Text = "" Then
        MsgBox "材料名称字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text2.SetFocus
        Exit Sub
    End If
    If Text3.Text = "" Then
        MsgBox "规格型号字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text3.SetFocus
        Exit Sub
    End If
    If Text4.Text = "" Then
        MsgBox "计量单位字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text4.SetFocus
        Exit Sub
    End If
    If Combo1.Text <> "修理" Then
        If Text5.Text = "" Then
            MsgBox "数量字段不能为空，请填写。若为修理，可填为0！", vbOKOnly + vbExclamation, "警告"
            Text5.SetFocus
            Exit Sub
        Else
            If Not IsNumeric(Text5.Text) Then
                MsgBox "数量字段值为数字,请正确填写！", vbOKOnly + vbExclamation, "警告"
                Text5.Text = ""
                Text5.SetFocus
                Exit Sub
            End If
        End If
        If Text6.Text = "" Then
            MsgBox "单价字段不能为空，请填写。若为修理，可填为0！", vbOKOnly + vbExclamation, "警告"
            Text6.SetFocus
            Exit Sub
        Else
            If IsNumeric(Text6.Text) Then
                Text6.Text = Format(Text6.Text, "#0.00")
            Else
                MsgBox "单价字段值为数字,请正确填写！", vbOKOnly + vbExclamation, "警告"
                Text6.Text = ""
                Text6.SetFocus
                Exit Sub
            End If
        End If
    End If
    If Text7.Text = "" Then
        MsgBox "金额字段不能为空，请填写！", vbOKOnly + vbExclamation, "警告"
        Text7.SetFocus
        Exit Sub
    Else
        If IsNumeric(Text7.Text) Then
            Text7.Text = Format(Text7.Text, "#0.00")
        Else
            MsgBox "金额字段值为数字,请正确填写！", vbOKOnly + vbExclamation, "警告"
            Text7.Text = ""
            Text7.SetFocus
            Exit Sub
        End If
    End If
    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
    MSFlexGrid1.Col = 0
    MSFlexGrid1.Text = Combo1.Text
    MSFlexGrid1.Col = 1
    MSFlexGrid1.Text = Text2.Text
    MSFlexGrid1.Col = 2
    MSFlexGrid1.Text = Text3.Text
    MSFlexGrid1.Col = 3
    MSFlexGrid1.Text = Text4.Text
    MSFlexGrid1.Col = 4
    If Text5.Text = "" Then
        MSFlexGrid1.Text = ""
    Else
        MSFlexGrid1.Text = Text5.Text
    End If
    MSFlexGrid1.Col = 5
    If Text6.Text = "" Then
        MSFlexGrid1.Text = ""
    Else
        MSFlexGrid1.Text = Text6.Text
    End If
    MSFlexGrid1.Col = 6
    MSFlexGrid1.Text = Text7.Text
    MSFlexGrid1.Col = 7
    If Text8.Text = "" Then
        MSFlexGrid1.Text = ""
    Else
        MSFlexGrid1.Text = Text8.Text
    End If
    Combo1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    Text6.Text = ""
    Text7.Text = ""
    Text8.Text = ""
    Combo1.SetFocus
    
    OutAdd.cmdDelRecord.Enabled = True
    
    Unload Me
End Sub

Private Sub Command2_Click()
    Combo1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    Text6.Text = ""
    Text7.Text = ""
    Text8.Text = ""
    Command2.Enabled = False
End Sub

Private Sub Command3_Click()
    Mydb.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "添加出库单"
End Sub


Private Sub Form_Load()
    MSFlexGrid2.Rows = 1
    MSFlexGrid2.Cols = 4
    MSFlexGrid2.Row = 0
    MSFlexGrid2.Col = 0
    MSFlexGrid2.Text = "材料编码"
    MSFlexGrid2.Col = 1
    MSFlexGrid2.Text = "材料名称"
    MSFlexGrid2.Col = 2
    MSFlexGrid2.Text = "规格型号"
    MSFlexGrid2.Col = 3
    MSFlexGrid2.Text = "计量单位"
    MSFlexGrid2.ColWidth(1) = 1000
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    Set myrecordset = Mydb.OpenRecordset("select * from goods order by goodsid")
    Do While Not myrecordset.EOF
        MSFlexGrid2.Rows = MSFlexGrid2.Rows + 1
        MSFlexGrid2.Row = MSFlexGrid2.Rows - 1
        MSFlexGrid2.Col = 0
        MSFlexGrid2.Text = myrecordset.Fields("GoodsId")
        MSFlexGrid2.Col = 1
        MSFlexGrid2.Text = myrecordset.Fields("GoodsName")
        MSFlexGrid2.Col = 2
        MSFlexGrid2.Text = myrecordset.Fields("Type")
        MSFlexGrid2.Col = 3
        MSFlexGrid2.Text = myrecordset.Fields("Unit")
        myrecordset.MoveNext
    Loop
    myrecordset.Close
    MSFlexGrid2.Visible = False
    Command2.Enabled = False
End Sub

Private Sub combo1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text2.SetFocus
    End If
End Sub

Private Sub MSFlexGrid2_DblClick()
    If MSFlexGrid2.Row <= 0 Then
        Exit Sub
    End If
    MSFlexGrid2.Col = 0
    Combo1.Text = MSFlexGrid2.Text
    If Combo1.Text <> "" Then
        Set myrecordset = Mydb.OpenRecordset("select * from Goods where Goodsid='" + Combo1.Text + "'")
        If Not myrecordset.EOF Then
            Text2 = myrecordset.Fields("goodsName")
            Text3 = myrecordset.Fields("type")
            Text4 = myrecordset.Fields("Unit")
        Else
            Exit Sub
        End If
        myrecordset.Close
    Else
        MsgBox "请选择正确的材料编码！", vbOKOnly + vbExclamation, "信息提示"
    End If
    MSFlexGrid2.Visible = False
    Text5.SetFocus
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
        Text6.SetFocus
    End If
End Sub

Private Sub Text6_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text7.SetFocus
    End If
End Sub

Private Sub Text7_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text8.SetFocus
    End If
End Sub

Private Sub Text8_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub


