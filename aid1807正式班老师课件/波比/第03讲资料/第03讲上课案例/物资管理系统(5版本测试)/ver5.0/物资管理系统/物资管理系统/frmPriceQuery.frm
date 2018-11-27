VERSION 5.00
Begin VB.Form PriceQuery 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "查询材料的最高价和最低价"
   ClientHeight    =   5820
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5730
   Icon            =   "frmPriceQuery.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5820
   ScaleWidth      =   5730
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame3 
      Caption         =   "查询结果(最低)"
      Height          =   1965
      Left            =   3000
      TabIndex        =   11
      Top             =   2970
      Width           =   2565
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   990
         TabIndex        =   13
         Top             =   330
         Width           =   1425
      End
      Begin VB.TextBox Text4 
         Height          =   855
         Left            =   990
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   12
         Top             =   870
         Width           =   1425
      End
      Begin VB.Label Label6 
         Caption         =   "价格(元)"
         Height          =   345
         Left            =   150
         TabIndex        =   15
         Top             =   345
         Width           =   825
      End
      Begin VB.Label Label5 
         Caption         =   "备  注"
         Height          =   345
         Left            =   150
         TabIndex        =   14
         Top             =   885
         Width           =   705
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "查询结果(最高)"
      Height          =   1965
      Left            =   300
      TabIndex        =   4
      Top             =   2970
      Width           =   2655
      Begin VB.TextBox Text2 
         Height          =   855
         Left            =   1080
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   8
         Top             =   855
         Width           =   1545
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1080
         TabIndex        =   6
         Top             =   315
         Width           =   1425
      End
      Begin VB.Label Label3 
         Caption         =   "备  注"
         Height          =   345
         Left            =   240
         TabIndex        =   7
         Top             =   870
         Width           =   705
      End
      Begin VB.Label Label2 
         Caption         =   "价格(元)"
         Height          =   345
         Left            =   240
         TabIndex        =   5
         Top             =   330
         Width           =   825
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "退出"
      Height          =   405
      Left            =   3570
      TabIndex        =   2
      Top             =   5220
      Width           =   825
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   405
      Left            =   1290
      TabIndex        =   1
      Top             =   5220
      Width           =   825
   End
   Begin VB.Frame Frame1 
      Caption         =   "查询条件"
      Height          =   2715
      Left            =   300
      TabIndex        =   0
      Top             =   150
      Width           =   5265
      Begin VB.ListBox List1 
         Height          =   1680
         Left            =   480
         TabIndex        =   10
         Top             =   690
         Width           =   3405
      End
      Begin VB.Label Label4 
         Height          =   285
         Left            =   3180
         TabIndex        =   9
         Top             =   390
         Width           =   1335
      End
      Begin VB.Label Label1 
         Caption         =   "材料编码、材料名称和规格"
         Height          =   285
         Left            =   330
         TabIndex        =   3
         Top             =   450
         Width           =   2325
      End
   End
End
Attribute VB_Name = "PriceQuery"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim db As Database
Dim rs As Recordset

Private Sub Command1_Click()
    Dim pricemax As Single, pricemin As Single
    Dim rs1 As Recordset

    pricemax = 0
    pricemin = 0
    Set rs = db.OpenRecordset("select max(单价) as pricemax,min(单价) as pricemin from inlibdetail where 材料编码='" & Left(Trim(List1.Text), 4) & "'")
    If Not (IsNull(rs.Fields(0)) Or IsNull(rs.Fields(1))) Then
        Text1.Text = rs.Fields(0)
        Text3.Text = rs.Fields(1)
        Set rs1 = db.OpenRecordset("select 备注 from inlibdetail where 材料编码='" & Left(Trim(List1.Text), 4) & "'and 单价=" & rs.Fields(0) & "")
        While rs1.EOF = False
            If IsNull(rs1.Fields(0)) Then
                Text2.Text = ""
            Else
                Text2.Text = Text2.Text & vbCrLf & rs1.Fields(0)
            End If
            rs1.MoveNext
        Wend
        Set rs1 = db.OpenRecordset("select 备注 from inlibdetail where 材料编码='" & Left(Trim(List1.Text), 4) & "'and 单价=" & rs.Fields(1) & "")
        While rs1.EOF = False
            If IsNull(rs1.Fields(0)) Then
                Text4.Text = ""
            Else
                Text4.Text = Text4.Text & vbCrLf & rs1.Fields(0)
            End If
            rs1.MoveNext
        Wend
        rs1.Close
    Else
        Text1.Text = ""
        Text2.Text = ""
        Text3.Text = ""
        Text4.Text = ""
        MsgBox "这种材料无入库信息！", vbOKOnly + vbExclamation, "信息提示"
    End If
    rs.Close
End Sub

Private Sub Command2_Click()
    db.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub

Private Sub Form_Load()
    Set db = OpenDatabase(App.Path + "\store.mdb")
    Set rs = db.OpenRecordset("select * from goods")
    If rs.RecordCount >= 1 Then
        While rs.EOF = False
            List1.AddItem rs.Fields("goodsid") & vbTab & rs.Fields("goodsname") & vbTab & rs.Fields("type")
            rs.MoveNext
        Wend
        List1.ListIndex = 0
        rs.Close
    Else
        Exit Sub
    End If
End Sub

Private Sub List1_DblClick()
    Call Command1_Click
End Sub


