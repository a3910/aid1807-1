VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm Project 
   BackColor       =   &H00808080&
   ClientHeight    =   8865
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   11895
   Icon            =   "frmProj.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   1  '所有者中心
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      Height          =   10200
      Left            =   0
      ScaleHeight     =   10140
      ScaleWidth      =   11835
      TabIndex        =   1
      Top             =   0
      Width           =   11895
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   8490
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            Bevel           =   2
            Object.Width           =   1746
            MinWidth        =   1235
            TextSave        =   "2008-7-25"
            Key             =   "key6"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Bevel           =   2
            Object.Width           =   1235
            MinWidth        =   1235
            TextSave        =   "11:48"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Bevel           =   2
            Object.Width           =   25400
            MinWidth        =   25400
            Text            =   "物资管理信息系统"
            TextSave        =   "物资管理信息系统"
            Key             =   "key3"
            Object.ToolTipText     =   "物资管理信息系统"
         EndProperty
      EndProperty
      OLEDropMode     =   1
   End
   Begin VB.Menu mnuSystem 
      Caption         =   "系统(&S)"
      Begin VB.Menu mnuUser 
         Caption         =   "用户管理(&U)"
         Begin VB.Menu mnuUserAdd 
            Caption         =   "添加用户(&A)"
         End
         Begin VB.Menu mnuUserDelete 
            Caption         =   "删除用户(&D)"
         End
         Begin VB.Menu sparator1 
            Caption         =   "-"
         End
         Begin VB.Menu mnuUserUpdata 
            Caption         =   "修改密码(&U)"
         End
      End
      Begin VB.Menu sparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "退出(&X)"
      End
   End
   Begin VB.Menu mnuMaterial 
      Caption         =   "物资管理(&M)"
      Begin VB.Menu mnuMaterailInfo 
         Caption         =   "材料信息(&I)"
      End
   End
   Begin VB.Menu mnuStore 
      Caption         =   "仓库管理(&M)"
      Begin VB.Menu mnuIn 
         Caption         =   "入库信息(&I)"
         Begin VB.Menu mnuInadd 
            Caption         =   "添加入库信息(&A)"
         End
         Begin VB.Menu mnuInedit 
            Caption         =   "编辑入库信息(&E)"
         End
      End
      Begin VB.Menu mnuOut 
         Caption         =   "出库信息(&O)"
         Begin VB.Menu mnuOutadd 
            Caption         =   "添加出库信息(&A)"
         End
         Begin VB.Menu mnuOutedit 
            Caption         =   "编辑出库信息(&E)"
         End
      End
   End
   Begin VB.Menu mnuQuery 
      Caption         =   "物资信息查询(&Q)"
      Begin VB.Menu mnuQin 
         Caption         =   "材料入库信息查询(&I)"
      End
      Begin VB.Menu mnuQout 
         Caption         =   "材料出库信息查询(&O)"
      End
      Begin VB.Menu sparator7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQsub 
         Caption         =   "仓库中剩余材料信息查询(&S)"
      End
      Begin VB.Menu spatator7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPrice 
         Caption         =   "仓库中所有材料的价格信息查询(&P)"
      End
   End
End
Attribute VB_Name = "Project"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Option Explicit

Private Sub MDIForm_Activate()
    Me.StatusBar1.Panels(3).Text = "物资管理信息系统"
    Me.Caption = StatusBar1.Panels(3).Text
End Sub

Private Sub MDIForm_Load()
    '放置背景文字
    Picture1.Picture = LoadPicture(App.Path & "\back.jpg")
End Sub

Private Sub MDIForm_Resize()
    On Error GoTo err1
    Picture1.ScaleTop = Me.Top
    Picture1.ScaleLeft = Me.Left
    Picture1.ScaleWidth = Me.ScaleWidth
    Picture1.ScaleHeight = Me.ScaleHeight - StatusBar1.Height
    Exit Sub
err1:
    Exit Sub
End Sub

Private Sub mnuAbout_Click()
    StatusBar1.Panels(3).Text = "显示版本信息"
    About.Show 1
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub mnuInadd_Click()
    StatusBar1.Panels(3).Text = "添加进库单"
    InAdd.Show 1
End Sub

Private Sub mnuInedit_Click()
    StatusBar1.Panels(3).Text = "编辑进库单"
    InUpdate.Show 1
End Sub

Private Sub mnuMaterailInfo_Click()
    StatusBar1.Panels(3).Text = "材料基本信息管理"
    MaterialManage.Show 1
End Sub

Private Sub mnuOutadd_Click()
    StatusBar1.Panels(3).Text = "添加出库单"
    OutAdd.Show 1
End Sub

Private Sub mnuOutedit_Click()
    StatusBar1.Panels(3).Text = "编辑出库单"
    OutUpdate.Show 1
End Sub

Private Sub mnuPrice_Click()
    StatusBar1.Panels(3).Text = "查询材料的最高价和最低价"
    PriceQuery.Show 1
End Sub

Private Sub mnuPriceRepair_Click()
    StatusBar1.Panels(3).Text = "统计修理成本"
    TotalRepair.Show 1
End Sub

Private Sub mnuPriceUpdate_Click()
    StatusBar1.Panels(3).Text = "统计改造成本"
    TotalRevise.Show 1
End Sub

Private Sub mnuPriceWork_Click()
    StatusBar1.Panels(3).Text = "统计特定工程的成本"
    TotalProject.Show 1
End Sub

Private Sub mnuQin_Click()
    StatusBar1.Panels(3).Text = "查询材料入库信息"
    InQuery.Show 1
End Sub

Private Sub mnuQout_Click()
    StatusBar1.Panels(3).Text = "查询材料出库信息"
    OutQuery.Show 1
End Sub
Private Sub mnuQsub_Click()
    StatusBar1.Panels(3).Text = "查询仓库余额信息"
    Surplus.Show 1
End Sub
Private Sub mnuReportIn_Click()
    StatusBar1.Panels(3).Text = "查询、打印进库材料报表"
    ReportIn.Show 1
End Sub
Private Sub mnuReportTotal_Click()
    StatusBar1.Panels(3).Text = "查询、打印仓库报表"
    ReportStore.Show 1
End Sub
Private Sub mnuRetail_Click()
    StatusBar1.Panels(3).Text = "统计销售额"
    TotalSale.Show 1
End Sub
Private Sub mnuUserAdd_Click()
    StatusBar1.Panels(3).Text = "添加用户"
    UserAdd.Show 1
End Sub
Private Sub mnuUserDelete_Click()
    StatusBar1.Panels(3).Text = "删除用户"
    UserDel.Show 1
End Sub
Private Sub mnuUserUpdata_Click()
    StatusBar1.Panels(3).Text = "修改密码"
    UserUpdate.Show 1
End Sub

