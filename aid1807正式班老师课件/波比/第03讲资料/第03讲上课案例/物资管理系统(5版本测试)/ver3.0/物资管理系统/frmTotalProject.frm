VERSION 5.00
Begin VB.Form TotalProject 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "统计工程成本"
   ClientHeight    =   2805
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4200
   Icon            =   "frmTotalProject.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2805
   ScaleWidth      =   4200
   StartUpPosition =   2  '屏幕中心
   Begin VB.Frame Frame1 
      Caption         =   "选择工程号"
      Height          =   1125
      Left            =   150
      TabIndex        =   6
      Top             =   120
      Width           =   2625
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   930
         TabIndex        =   8
         Top             =   510
         Width           =   1425
      End
      Begin VB.Label Label1 
         Caption         =   "工程号"
         Height          =   285
         Left            =   150
         TabIndex        =   7
         Top             =   540
         Width           =   585
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "统计结果"
      Height          =   1065
      Left            =   150
      TabIndex        =   2
      Top             =   1470
      Width           =   2625
      Begin VB.TextBox Text1 
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
         Caption         =   "工程成本："
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
      Left            =   3120
      TabIndex        =   1
      Top             =   210
      Width           =   885
   End
   Begin VB.CommandButton Command3 
      Caption         =   "退出"
      Height          =   405
      Left            =   3120
      TabIndex        =   0
      Top             =   810
      Width           =   885
   End
End
Attribute VB_Name = "TotalProject"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Option Explicit
Dim Mydb As Database

Private Sub Command1_Click()
    Dim myrecordset As Recordset
    Dim price As Single
    Dim mrc As Recordset
    
    Set myrecordset = Mydb.OpenRecordset("select * from outlib where 工程号='" & Trim(Combo1) & "'")
    price = 0
    While myrecordset.EOF = False
        Text1.Text = myrecordset.Fields(0)
        Set mrc = Mydb.OpenRecordset("select * from outlibdetail where 出库单号码='" & Trim(Text1) & "'")
        While mrc.EOF = False
            price = price + Val(mrc.Fields("金额"))
            mrc.MoveNext
        Wend
        mrc.Close
        myrecordset.MoveNext
        Text1 = ""
    Wend
    Text1.Text = Format(price, "#0.00")
    myrecordset.Close
End Sub

Private Sub Command3_Click()
    Mydb.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub

Private Sub Form_Load()
    Dim txtSQL As String
    Dim mrc As Recordset
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    txtSQL = "select DISTINCT 工程号 from outlib"
    Set mrc = Mydb.OpenRecordset(txtSQL)
    If mrc.EOF = False Then
        With mrc
            Do While Not mrc.EOF
                If Not IsNull(mrc.Fields(0)) Then
                Combo1.AddItem mrc.Fields(0)
                End If
                mrc.MoveNext
            Loop
        End With
        Combo1.ListIndex = 0
    End If
    mrc.Close
End Sub

Private Sub combo1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command2.SetFocus
    End If
End Sub
