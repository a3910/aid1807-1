VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form TotalRepair 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "统计修理成本"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4380
   Icon            =   "frmTotalRepair.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4380
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame1 
      Caption         =   "统计时间"
      Height          =   1575
      Left            =   240
      TabIndex        =   6
      Top             =   120
      Width           =   2625
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   480
         TabIndex        =   10
         Top             =   960
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   26935297
         CurrentDate     =   37496
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   480
         TabIndex        =   9
         Top             =   450
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   26935297
         CurrentDate     =   37496
      End
      Begin VB.Label Label2 
         Caption         =   "到"
         Height          =   315
         Left            =   240
         TabIndex        =   8
         Top             =   990
         Width           =   195
      End
      Begin VB.Label Label1 
         Caption         =   "从"
         Height          =   315
         Left            =   210
         TabIndex        =   7
         Top             =   480
         Width           =   195
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "统计结果"
      Height          =   1065
      Left            =   240
      TabIndex        =   2
      Top             =   1800
      Width           =   2625
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1080
         TabIndex        =   3
         Top             =   420
         Width           =   1035
      End
      Begin VB.Label Label4 
         Caption         =   "元"
         Height          =   345
         Left            =   2220
         TabIndex        =   5
         Top             =   480
         Width           =   225
      End
      Begin VB.Label Label3 
         Caption         =   "修理成本："
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   480
         Width           =   915
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "统计"
      Height          =   405
      Left            =   3210
      TabIndex        =   1
      Top             =   210
      Width           =   885
   End
   Begin VB.CommandButton Command3 
      Caption         =   "退出"
      Height          =   405
      Left            =   3210
      TabIndex        =   0
      Top             =   810
      Width           =   885
   End
End
Attribute VB_Name = "TotalRepair"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim Mydb As Database
    Dim myrecordset As Recordset
    Dim price As Single
    Dim mrc As Recordset
    If DTPicker1.Value = "" Then
        MsgBox "请填写此次查询的开始时间！", vbOKOnly + vbExclamation, "警告"
        Exit Sub
    End If
    If DTPicker2.Value = "" Then
        MsgBox "请填写此次查询的结束时间！", vbOKOnly + vbExclamation, "警告"
        Exit Sub
        'If IsDate(Text2.Text) Then
            'Text2 = Format(Text2, "yyyy-mm-dd")
        'Else
            'MsgBox "时间格式应为：yyyy-mm-dd，请正确填写！", vbOKOnly + vbExclamation, "警告"
            'Text2.Text = ""
            'Text2.SetFocus
            'Exit Sub
        'End If
    End If
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    Set myrecordset = Mydb.OpenRecordset("select * from outlib where 出库日期>=#" & DTPicker1.Value & "# and 出库日期<= #" & DTPicker2.Value & "# and 出库类型='修理'")
    price = 0
    While myrecordset.EOF = False
        Set mrc = Mydb.OpenRecordset("select * from outlibdetail where 出库单号码='" & myrecordset.Fields(0) & "'")
        While mrc.EOF = False
            price = price + Val(mrc.Fields("金额"))
            mrc.MoveNext
        Wend
        mrc.Close
        myrecordset.MoveNext
    Wend
    Text3.Text = Format(price, "#0.00")
    myrecordset.Close
    Mydb.Close
End Sub

Private Sub Command3_Click()
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub



Private Sub Form_Load()
    DTPicker1.Value = "2002-1-1"
    DTPicker2.Value = Date
End Sub
