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
   StartUpPosition =   1  '����������
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
            Text            =   "���ʹ�����Ϣϵͳ"
            TextSave        =   "���ʹ�����Ϣϵͳ"
            Key             =   "key3"
            Object.ToolTipText     =   "���ʹ�����Ϣϵͳ"
         EndProperty
      EndProperty
      OLEDropMode     =   1
   End
   Begin VB.Menu mnuSystem 
      Caption         =   "ϵͳ(&S)"
      Begin VB.Menu mnuUser 
         Caption         =   "�û�����(&U)"
         Begin VB.Menu mnuUserAdd 
            Caption         =   "����û�(&A)"
         End
         Begin VB.Menu mnuUserDelete 
            Caption         =   "ɾ���û�(&D)"
         End
         Begin VB.Menu sparator1 
            Caption         =   "-"
         End
         Begin VB.Menu mnuUserUpdata 
            Caption         =   "�޸�����(&U)"
         End
      End
      Begin VB.Menu sparator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "�˳�(&X)"
      End
   End
   Begin VB.Menu mnuMaterial 
      Caption         =   "���ʹ���(&M)"
      Begin VB.Menu mnuMaterailInfo 
         Caption         =   "������Ϣ(&I)"
      End
   End
   Begin VB.Menu mnuStore 
      Caption         =   "�ֿ����(&M)"
      Begin VB.Menu mnuIn 
         Caption         =   "�����Ϣ(&I)"
         Begin VB.Menu mnuInadd 
            Caption         =   "��������Ϣ(&A)"
         End
         Begin VB.Menu mnuInedit 
            Caption         =   "�༭�����Ϣ(&E)"
         End
      End
      Begin VB.Menu mnuOut 
         Caption         =   "������Ϣ(&O)"
         Begin VB.Menu mnuOutadd 
            Caption         =   "��ӳ�����Ϣ(&A)"
         End
         Begin VB.Menu mnuOutedit 
            Caption         =   "�༭������Ϣ(&E)"
         End
      End
   End
   Begin VB.Menu mnuQuery 
      Caption         =   "������Ϣ��ѯ(&Q)"
      Begin VB.Menu mnuQin 
         Caption         =   "���������Ϣ��ѯ(&I)"
      End
      Begin VB.Menu mnuQout 
         Caption         =   "���ϳ�����Ϣ��ѯ(&O)"
      End
      Begin VB.Menu sparator7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQsub 
         Caption         =   "�ֿ���ʣ�������Ϣ��ѯ(&S)"
      End
      Begin VB.Menu spatator7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPrice 
         Caption         =   "�ֿ������в��ϵļ۸���Ϣ��ѯ(&P)"
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
    Me.StatusBar1.Panels(3).Text = "���ʹ�����Ϣϵͳ"
    Me.Caption = StatusBar1.Panels(3).Text
End Sub

Private Sub MDIForm_Load()
    '���ñ�������
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
    StatusBar1.Panels(3).Text = "��ʾ�汾��Ϣ"
    About.Show 1
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub mnuInadd_Click()
    StatusBar1.Panels(3).Text = "��ӽ��ⵥ"
    InAdd.Show 1
End Sub

Private Sub mnuInedit_Click()
    StatusBar1.Panels(3).Text = "�༭���ⵥ"
    InUpdate.Show 1
End Sub

Private Sub mnuMaterailInfo_Click()
    StatusBar1.Panels(3).Text = "���ϻ�����Ϣ����"
    MaterialManage.Show 1
End Sub

Private Sub mnuOutadd_Click()
    StatusBar1.Panels(3).Text = "��ӳ��ⵥ"
    OutAdd.Show 1
End Sub

Private Sub mnuOutedit_Click()
    StatusBar1.Panels(3).Text = "�༭���ⵥ"
    OutUpdate.Show 1
End Sub

Private Sub mnuPrice_Click()
    StatusBar1.Panels(3).Text = "��ѯ���ϵ���߼ۺ���ͼ�"
    PriceQuery.Show 1
End Sub

Private Sub mnuPriceRepair_Click()
    StatusBar1.Panels(3).Text = "ͳ������ɱ�"
    TotalRepair.Show 1
End Sub

Private Sub mnuPriceUpdate_Click()
    StatusBar1.Panels(3).Text = "ͳ�Ƹ���ɱ�"
    TotalRevise.Show 1
End Sub

Private Sub mnuPriceWork_Click()
    StatusBar1.Panels(3).Text = "ͳ���ض����̵ĳɱ�"
    TotalProject.Show 1
End Sub

Private Sub mnuQin_Click()
    StatusBar1.Panels(3).Text = "��ѯ���������Ϣ"
    InQuery.Show 1
End Sub

Private Sub mnuQout_Click()
    StatusBar1.Panels(3).Text = "��ѯ���ϳ�����Ϣ"
    OutQuery.Show 1
End Sub
Private Sub mnuQsub_Click()
    StatusBar1.Panels(3).Text = "��ѯ�ֿ������Ϣ"
    Surplus.Show 1
End Sub
Private Sub mnuReportIn_Click()
    StatusBar1.Panels(3).Text = "��ѯ����ӡ������ϱ���"
    ReportIn.Show 1
End Sub
Private Sub mnuReportTotal_Click()
    StatusBar1.Panels(3).Text = "��ѯ����ӡ�ֿⱨ��"
    ReportStore.Show 1
End Sub
Private Sub mnuRetail_Click()
    StatusBar1.Panels(3).Text = "ͳ�����۶�"
    TotalSale.Show 1
End Sub
Private Sub mnuUserAdd_Click()
    StatusBar1.Panels(3).Text = "����û�"
    UserAdd.Show 1
End Sub
Private Sub mnuUserDelete_Click()
    StatusBar1.Panels(3).Text = "ɾ���û�"
    UserDel.Show 1
End Sub
Private Sub mnuUserUpdata_Click()
    StatusBar1.Panels(3).Text = "�޸�����"
    UserUpdate.Show 1
End Sub

