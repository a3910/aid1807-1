VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form InQuery 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "查询入库信息"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9510
   Icon            =   "frmInQuery.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   9510
   StartUpPosition =   2  '屏幕中心
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   3705
      Left            =   210
      TabIndex        =   24
      Top             =   2880
      Width           =   8085
      _ExtentX        =   14261
      _ExtentY        =   6535
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "退出"
      Height          =   435
      Left            =   8430
      TabIndex        =   17
      Top             =   1110
      Width           =   945
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   435
      Left            =   8430
      TabIndex        =   16
      Top             =   300
      Width           =   945
   End
   Begin VB.Frame Frame1 
      Caption         =   "材料进库信息"
      Height          =   2595
      Left            =   150
      TabIndex        =   0
      Top             =   120
      Width           =   8115
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1560
         TabIndex        =   29
         Top             =   405
         Width           =   1545
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1560
         TabIndex        =   28
         Top             =   952
         Width           =   1545
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1560
         TabIndex        =   27
         Top             =   1499
         Width           =   1545
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1560
         TabIndex        =   26
         Top             =   2046
         Width           =   1545
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   4650
         TabIndex        =   25
         Top             =   405
         Width           =   1545
      End
      Begin VB.OptionButton Option6 
         Caption         =   "进库日期"
         Height          =   345
         Left            =   3300
         TabIndex        =   23
         Top             =   960
         Width           =   1065
      End
      Begin VB.OptionButton Option5 
         Caption         =   "规格型号"
         Height          =   345
         Left            =   3300
         TabIndex        =   22
         Top             =   420
         Width           =   1215
      End
      Begin VB.OptionButton Option4 
         Caption         =   "材料名称"
         Height          =   345
         Left            =   210
         TabIndex        =   21
         Top             =   2061
         Width           =   1215
      End
      Begin VB.OptionButton Option3 
         Caption         =   "材料编码"
         Height          =   345
         Left            =   210
         TabIndex        =   20
         Top             =   1514
         Width           =   1215
      End
      Begin VB.OptionButton Option2 
         Caption         =   "发票号码"
         Height          =   345
         Left            =   210
         TabIndex        =   19
         Top             =   967
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "进库单号码"
         Height          =   345
         Left            =   210
         TabIndex        =   18
         Top             =   420
         Width           =   1215
      End
      Begin VB.Frame Frame2 
         Caption         =   "进库时间"
         Height          =   1395
         Left            =   4440
         TabIndex        =   1
         Top             =   960
         Width           =   3525
         Begin VB.ComboBox Combo6 
            Height          =   315
            Left            =   2550
            TabIndex        =   14
            Top             =   840
            Width           =   645
         End
         Begin VB.ComboBox Combo5 
            Height          =   315
            Left            =   1680
            TabIndex        =   12
            Top             =   840
            Width           =   645
         End
         Begin VB.ComboBox Combo4 
            Height          =   315
            Left            =   510
            TabIndex        =   10
            Top             =   840
            Width           =   945
         End
         Begin VB.ComboBox Combo3 
            Height          =   315
            Left            =   2550
            TabIndex        =   7
            Top             =   300
            Width           =   645
         End
         Begin VB.ComboBox Combo2 
            Height          =   315
            Left            =   1680
            TabIndex        =   5
            Top             =   315
            Width           =   645
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   510
            TabIndex        =   3
            Top             =   315
            Width           =   945
         End
         Begin VB.Label Label8 
            Caption         =   "日"
            Height          =   285
            Left            =   3210
            TabIndex        =   15
            Top             =   900
            Width           =   255
         End
         Begin VB.Label Label7 
            Caption         =   "月"
            Height          =   285
            Left            =   2340
            TabIndex        =   13
            Top             =   870
            Width           =   255
         End
         Begin VB.Label Label6 
            Caption         =   "年"
            Height          =   285
            Left            =   1500
            TabIndex        =   11
            Top             =   870
            Width           =   255
         End
         Begin VB.Label Label5 
            Caption         =   "到："
            Height          =   285
            Left            =   180
            TabIndex        =   9
            Top             =   840
            Width           =   375
         End
         Begin VB.Label Label4 
            Caption         =   "日"
            Height          =   285
            Left            =   3210
            TabIndex        =   8
            Top             =   330
            Width           =   255
         End
         Begin VB.Label Label3 
            Caption         =   "月"
            Height          =   285
            Left            =   2340
            TabIndex        =   6
            Top             =   330
            Width           =   255
         End
         Begin VB.Label Label2 
            Caption         =   "年"
            Height          =   285
            Left            =   1500
            TabIndex        =   4
            Top             =   330
            Width           =   255
         End
         Begin VB.Label Label1 
            Caption         =   "从："
            Height          =   285
            Left            =   180
            TabIndex        =   2
            Top             =   330
            Width           =   375
         End
      End
   End
End
Attribute VB_Name = "InQuery"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Mydb As Database
Dim Myrs1 As Recordset
Dim Myrs2 As Recordset

Private Sub Command1_Click()
    Dim mrc As Recordset
    Dim str1 As String, str2 As String
    
    If Option1.Value = True Then
        If Text1.Text = "" Then
            MsgBox "请正确填写进库单号码！", vbOKOnly + vbExclamation, "信息提示"
            Text1.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from inlib where 进库单号码='" & Trim(Text1) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                Set Myrs2 = Mydb.OpenRecordset("select * from inlibdetail,goods where 进库单号码='" & Trim(Text1) & "' And GoodsID = 材料编码")
                While Myrs2.EOF = False
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = Myrs1.Fields("进库单号码")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = Myrs1.Fields("发票号码")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = Myrs1.Fields("进库日期")
                    MSFlexGrid1.Col = 3
                    If IsNull(Myrs1.Fields("经办人")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("经办人")
                    End If
                    MSFlexGrid1.Col = 4
                    If IsNull(Myrs1.Fields("保管人")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("保管人")
                    End If
                    MSFlexGrid1.Col = 5
                    MSFlexGrid1.Text = Myrs2.Fields("goodsid")
                    MSFlexGrid1.Col = 6
                    MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = Myrs2.Fields("type")
                    MSFlexGrid1.Col = 8
                    MSFlexGrid1.Text = Myrs2.Fields("unit")
                    MSFlexGrid1.Col = 9
                    MSFlexGrid1.Text = Myrs2.Fields("数量")
                    MSFlexGrid1.Col = 10
                    MSFlexGrid1.Text = Format(Myrs2.Fields("单价"), "#0.00")
                    MSFlexGrid1.Col = 11
                    MSFlexGrid1.Text = Format(Myrs2.Fields("金额"), "#0.00")
                    MSFlexGrid1.Col = 12
                    If IsNull(Myrs2.Fields("备注")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs2.Fields("备注")
                    End If
                    Myrs2.MoveNext
                Wend
                Myrs2.Close
            Else
                MsgBox "不存在这个进库单号码", vbOKOnly + vbExclamation, "信息提示"
                Text1 = ""
                Text1.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option2.Value = True Then
        If Text2.Text = "" Then
            MsgBox "请正确填写发票号码！", vbOKOnly + vbExclamation, "信息提示"
            Text2.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from inlib where 发票号码='" & Trim(Text2) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                Set Myrs2 = Mydb.OpenRecordset("select * from inlibdetail where 进库单号码='" & Myrs1.Fields("进库单号码") & "'")
                Set mrc = Mydb.OpenRecordset("select * from goods where goodsid='" & Myrs2.Fields("材料编码") & "'")
                While Myrs2.EOF = False
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = Myrs1.Fields("进库单号码")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = Myrs1.Fields("发票号码")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = Myrs1.Fields("进库日期")
                    MSFlexGrid1.Col = 3
                    If IsNull(Myrs1.Fields("经办人")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("经办人")
                    End If
                    MSFlexGrid1.Col = 4
                    If IsNull(Myrs1.Fields("保管人")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs1.Fields("保管人")
                    End If
                    MSFlexGrid1.Col = 5
                    MSFlexGrid1.Text = Myrs2.Fields("材料编码")
                    MSFlexGrid1.Col = 6
                    MSFlexGrid1.Text = mrc.Fields("goodsname")
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = mrc.Fields("type")
                    MSFlexGrid1.Col = 8
                    MSFlexGrid1.Text = mrc.Fields("unit")
                    MSFlexGrid1.Col = 9
                    MSFlexGrid1.Text = Myrs2.Fields("数量")
                    MSFlexGrid1.Col = 10
                    MSFlexGrid1.Text = Format(Myrs2.Fields("单价"), "#0.00")
                    MSFlexGrid1.Col = 11
                    MSFlexGrid1.Text = Format(Myrs2.Fields("金额"), "#0.00")
                    MSFlexGrid1.Col = 12
                    If IsNull(Myrs2.Fields("备注")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs2.Fields("备注")
                    End If
                    Myrs2.MoveNext
                Wend
                mrc.Close
                Myrs2.Close
            Else
                MsgBox "不存在这个发票号码", vbOKOnly + vbExclamation, "信息提示"
                Text2 = ""
                Text2.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option3.Value = True Then
        If Text3.Text = "" Then
            MsgBox "请正确填写材料编码！", vbOKOnly + vbExclamation, "信息提示"
            Text3.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select DISTINCT 进库单号码 from inlibdetail where 材料编码='" & Trim(Text3) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from inlib where 进库单号码='" & Myrs1.Fields(0) & "'")
                    While mrc.EOF = False
                        Set Myrs2 = Mydb.OpenRecordset("select * from inlibdetail,goods where 材料编码='" & Trim(Text3) & "' and 进库单号码='" & Myrs1.Fields(0) & "' and goodsid=材料编码")
                        While Myrs2.EOF = False
                            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                            MSFlexGrid1.Col = 0
                            MSFlexGrid1.Text = mrc.Fields("进库单号码")
                            MSFlexGrid1.Col = 1
                            MSFlexGrid1.Text = mrc.Fields("发票号码")
                            MSFlexGrid1.Col = 2
                            MSFlexGrid1.Text = mrc.Fields("进库日期")
                            MSFlexGrid1.Col = 3
                            If IsNull(mrc.Fields("经办人")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("经办人")
                            End If
                            MSFlexGrid1.Col = 4
                            If IsNull(mrc.Fields("保管人")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("保管人")
                            End If
                            MSFlexGrid1.Col = 5
                            MSFlexGrid1.Text = Myrs2.Fields("材料编码")
                            MSFlexGrid1.Col = 6
                            MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                            MSFlexGrid1.Col = 7
                            MSFlexGrid1.Text = Myrs2.Fields("type")
                            MSFlexGrid1.Col = 8
                            MSFlexGrid1.Text = Myrs2.Fields("unit")
                            MSFlexGrid1.Col = 9
                            MSFlexGrid1.Text = Myrs2.Fields("数量")
                            MSFlexGrid1.Col = 10
                            MSFlexGrid1.Text = Format(Myrs2.Fields("单价"), "#0.00")
                            MSFlexGrid1.Col = 11
                            MSFlexGrid1.Text = Format(Myrs2.Fields("金额"), "#0.00")
                            MSFlexGrid1.Col = 12
                            If IsNull(Myrs2.Fields("备注")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("备注")
                            End If
                            Myrs2.MoveNext
                        Wend
                        Myrs2.Close
                        mrc.MoveNext
                    Wend
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "不存在这个材料编码", vbOKOnly + vbExclamation, "信息提示"
                Text3 = ""
                Text3.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option4.Value = True Then
        If Text4.Text = "" Then
            MsgBox "请正确填写材料名称！", vbOKOnly + vbExclamation, "信息提示"
            Text4.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from goods where goodsname='" & Trim(Text4) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from inlibdetail where 材料编码='" & Myrs1.Fields("goodsid") & "'")
                    While mrc.EOF = False
                        Set Myrs2 = Mydb.OpenRecordset("select * from inlib where 进库单号码='" & mrc.Fields("进库单号码") & "'")
                        While Myrs2.EOF = False
                            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                            MSFlexGrid1.Col = 0
                            MSFlexGrid1.Text = Myrs2.Fields("进库单号码")
                            MSFlexGrid1.Col = 1
                            MSFlexGrid1.Text = Myrs2.Fields("发票号码")
                            MSFlexGrid1.Col = 2
                            MSFlexGrid1.Text = Myrs2.Fields("进库日期")
                            MSFlexGrid1.Col = 3
                            If IsNull(Myrs2.Fields("经办人")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("经办人")
                            End If
                            MSFlexGrid1.Col = 4
                            If IsNull(Myrs2.Fields("保管人")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("保管人")
                            End If
                            MSFlexGrid1.Col = 5
                            MSFlexGrid1.Text = Myrs1.Fields("goodsid")
                            MSFlexGrid1.Col = 6
                            MSFlexGrid1.Text = Myrs1.Fields("goodsname")
                            MSFlexGrid1.Col = 7
                            MSFlexGrid1.Text = Myrs1.Fields("type")
                            MSFlexGrid1.Col = 8
                            MSFlexGrid1.Text = Myrs1.Fields("unit")
                            MSFlexGrid1.Col = 9
                            MSFlexGrid1.Text = mrc.Fields("数量")
                            MSFlexGrid1.Col = 10
                            MSFlexGrid1.Text = Format(mrc.Fields("单价"), "#0.00")
                            MSFlexGrid1.Col = 11
                            MSFlexGrid1.Text = Format(mrc.Fields("金额"), "#0.00")
                            MSFlexGrid1.Col = 12
                            If IsNull(mrc.Fields("备注")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("备注")
                            End If
                            Myrs2.MoveNext
                        Wend
                        Myrs2.Close
                        mrc.MoveNext
                    Wend
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "不存在这个材料名称", vbOKOnly + vbExclamation, "信息提示"
                Text4 = ""
                Text4.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option5.Value = True Then
        If Text5.Text = "" Then
            MsgBox "请正确填写规格型号！", vbOKOnly + vbExclamation, "信息提示"
            Text5.SetFocus
            Exit Sub
        Else
            Set Myrs1 = Mydb.OpenRecordset("select * from goods where type='" & Trim(Text5) & "'")
            MSFlexGrid1.Clear
            TableInit
            If Myrs1.RecordCount >= 1 Then
                While Myrs1.EOF = False
                    Set mrc = Mydb.OpenRecordset("select * from inlibdetail where 材料编码='" & Myrs1.Fields("goodsid") & "'")
                    While mrc.EOF = False
                        Set Myrs2 = Mydb.OpenRecordset("select * from inlib where 进库单号码='" & mrc.Fields("进库单号码") & "'")
                        While Myrs2.EOF = False
                            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                            MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                            MSFlexGrid1.Col = 0
                            MSFlexGrid1.Text = Myrs2.Fields("进库单号码")
                            MSFlexGrid1.Col = 1
                            MSFlexGrid1.Text = Myrs2.Fields("发票号码")
                            MSFlexGrid1.Col = 2
                            MSFlexGrid1.Text = Myrs2.Fields("进库日期")
                            MSFlexGrid1.Col = 3
                            If IsNull(Myrs2.Fields("经办人")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("经办人")
                            End If
                            MSFlexGrid1.Col = 4
                            If IsNull(Myrs2.Fields("保管人")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = Myrs2.Fields("保管人")
                            End If
                            MSFlexGrid1.Col = 5
                            MSFlexGrid1.Text = Myrs1.Fields("goodsid")
                            MSFlexGrid1.Col = 6
                            MSFlexGrid1.Text = Myrs1.Fields("goodsname")
                            MSFlexGrid1.Col = 7
                            MSFlexGrid1.Text = Myrs1.Fields("type")
                            MSFlexGrid1.Col = 8
                            MSFlexGrid1.Text = Myrs1.Fields("unit")
                            MSFlexGrid1.Col = 9
                            MSFlexGrid1.Text = mrc.Fields("数量")
                            MSFlexGrid1.Col = 10
                            MSFlexGrid1.Text = Format(mrc.Fields("单价"), "#0.00")
                            MSFlexGrid1.Col = 11
                            MSFlexGrid1.Text = Format(mrc.Fields("金额"), "#0.00")
                            MSFlexGrid1.Col = 12
                            If IsNull(mrc.Fields("备注")) Then
                                MSFlexGrid1.Text = ""
                            Else
                                MSFlexGrid1.Text = mrc.Fields("备注")
                            End If
                            Myrs2.MoveNext
                        Wend
                        Myrs2.Close
                        mrc.MoveNext
                    Wend
                    mrc.Close
                    Myrs1.MoveNext
                Wend
            Else
                MsgBox "不存在这个规格型号", vbOKOnly + vbExclamation, "信息提示"
                Text5 = ""
                Text5.SetFocus
                Exit Sub
            End If
            Myrs1.Close
        End If
    End If
    If Option6.Value = True Then
        If Val(Combo1) > Val(Combo4) Then
            MsgBox "请正确选择年份！", vbOKOnly + vbExclamation, "信息提示"
            Combo1.SetFocus
            Exit Sub
        Else
            If Val(Combo1) = Val(Combo4) Then
                If Val(Combo2) > Val(Combo5) Then
                    MsgBox "请正确选择月份！", vbOKOnly + vbExclamation, "信息提示"
                    Combo2.SetFocus
                    Exit Sub
                Else
                    If Val(Combo2) = Val(Combo5) Then
                        If Val(Combo3) > Val(Combo6) Then
                            MsgBox "请正确选择日期！", vbOKOnly + vbExclamation, "信息提示"
                            Combo3.SetFocus
                            Exit Sub
                        End If
                    End If
                End If
            End If
        End If
        str1 = Trim(Combo1) & "-" & Trim(Combo2) & "-" & Trim(Combo3)
        str2 = Trim(Combo4) & "-" & Trim(Combo5) & "-" & Trim(Combo6)
        str1 = Format(str1, "yyyy-mm-dd")
        str2 = Format(str2, "yyyy-mm-dd")
        Set Myrs1 = Mydb.OpenRecordset("select DISTINCT 进库单号码 from inlib where 进库日期>=#" + Format(str1, "yyyy-mm-dd") + "# and 进库日期<= #" + Format(str2, "yyyy-mm-dd") + "#")
        If Myrs1.RecordCount >= 1 Then
            MSFlexGrid1.Clear
            TableInit
            While Myrs1.EOF = False
                Set mrc = Mydb.OpenRecordset("select * from inlib where 进库单号码='" & Myrs1.Fields(0) & "'")
                Set Myrs2 = Mydb.OpenRecordset("select * from inlibdetail,goods where 进库单号码='" & Myrs1.Fields(0) & "'and 材料编码=goodsid")
                While Myrs2.EOF = False
                    MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
                    MSFlexGrid1.Row = MSFlexGrid1.Rows - 1
                    MSFlexGrid1.Col = 0
                    MSFlexGrid1.Text = mrc.Fields("进库单号码")
                    MSFlexGrid1.Col = 1
                    MSFlexGrid1.Text = mrc.Fields("发票号码")
                    MSFlexGrid1.Col = 2
                    MSFlexGrid1.Text = mrc.Fields("进库日期")
                    MSFlexGrid1.Col = 3
                    If IsNull(mrc.Fields("经办人")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = mrc.Fields("经办人")
                    End If
                    MSFlexGrid1.Col = 4
                    If IsNull(mrc.Fields("保管人")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = mrc.Fields("保管人")
                    End If
                    MSFlexGrid1.Col = 5
                    MSFlexGrid1.Text = Myrs2.Fields("材料编码")
                    MSFlexGrid1.Col = 6
                    MSFlexGrid1.Text = Myrs2.Fields("goodsname")
                    MSFlexGrid1.Col = 7
                    MSFlexGrid1.Text = Myrs2.Fields("type")
                    MSFlexGrid1.Col = 8
                    MSFlexGrid1.Text = Myrs2.Fields("unit")
                    MSFlexGrid1.Col = 9
                    MSFlexGrid1.Text = Myrs2.Fields("数量")
                    MSFlexGrid1.Col = 10
                    MSFlexGrid1.Text = Format(Myrs2.Fields("单价"), "#0.00")
                    MSFlexGrid1.Col = 11
                    MSFlexGrid1.Text = Format(Myrs2.Fields("金额"), "#0.00")
                    MSFlexGrid1.Col = 12
                    If IsNull(Myrs2.Fields("备注")) Then
                        MSFlexGrid1.Text = ""
                    Else
                        MSFlexGrid1.Text = Myrs2.Fields("备注")
                    End If
                    Myrs2.MoveNext
                Wend
                mrc.Close
                Myrs2.Close
                Myrs1.MoveNext
            Wend
        Else
            MsgBox "在这段期间内没有进库记录！", vbOKOnly + vbExclamation, "信息提示"
            Exit Sub
        End If
        Myrs1.Close
    End If
End Sub

Private Sub Command2_Click()
    Mydb.Close
    Unload Me
    Project.StatusBar1.Panels(2).Text = "就绪"
End Sub

Private Sub Form_Load()
    Dim i As Integer, j As Integer
    Dim txtSQL As String
    Dim mrc As Recordset
    Set Mydb = OpenDatabase(App.Path + "\store.mdb")
    txtSQL = "select DISTINCT Year(进库日期) from inlib"
    Set mrc = Mydb.OpenRecordset(txtSQL)
    If mrc.EOF = False Then
        With mrc
            Do While Not .EOF
                Combo1.AddItem .Fields(0)
                Combo4.AddItem .Fields(0)
                .MoveNext
            Loop
        End With
        Combo1.ListIndex = 0
        Combo4.ListIndex = 0
        For i = 1 To 12
            Combo2.AddItem i
            Combo5.AddItem i
        Next i
        Combo2.Text = Month(Now())
        Combo5.Text = Month(Now())
        For i = 1 To 31
            Combo3.AddItem i
            Combo6.AddItem i
        Next i
        Combo3.Text = Day(Now())
        Combo6.Text = Day(Now())
    Else
        Command1.Enabled = False
    End If
    mrc.Close
    Option1.Value = True
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
    TableInit
End Sub

Private Sub TableInit()
    MSFlexGrid1.Rows = 1
    MSFlexGrid1.Cols = 13
    MSFlexGrid1.TextMatrix(0, 0) = "进库单号码"
    MSFlexGrid1.TextMatrix(0, 1) = "发票号码"
    MSFlexGrid1.TextMatrix(0, 2) = "进库日期"
    MSFlexGrid1.TextMatrix(0, 3) = "经办人"
    MSFlexGrid1.TextMatrix(0, 4) = "保管人"
    MSFlexGrid1.TextMatrix(0, 5) = "材料编码"
    MSFlexGrid1.TextMatrix(0, 6) = "材料名称"
    MSFlexGrid1.TextMatrix(0, 7) = "规格型号"
    MSFlexGrid1.TextMatrix(0, 8) = "计量单位"
    MSFlexGrid1.TextMatrix(0, 9) = "数量"
    MSFlexGrid1.TextMatrix(0, 10) = "单价"
    MSFlexGrid1.TextMatrix(0, 11) = "金额"
    MSFlexGrid1.TextMatrix(0, 12) = "备注"
End Sub

Private Sub Option1_Click()
    Text1.Enabled = True
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option2_Click()
    Text2.Enabled = True
    Text2.SetFocus
    Text1.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option3_Click()
    Text3.Enabled = True
    Text3.SetFocus
    Text2.Enabled = False
    Text1.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option4_Click()
    Text4.Enabled = True
    Text4.SetFocus
    Text2.Enabled = False
    Text3.Enabled = False
    Text1.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option5_Click()
    Text5.Enabled = True
    Text5.SetFocus
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text1.Enabled = False
    Combo1.Enabled = False
    Combo2.Enabled = False
    Combo3.Enabled = False
    Combo4.Enabled = False
    Combo5.Enabled = False
    Combo6.Enabled = False
End Sub

Private Sub Option6_Click()
    Text1.Enabled = False
    Text2.Enabled = False
    Text3.Enabled = False
    Text4.Enabled = False
    Text5.Enabled = False
    Combo1.Enabled = True
    Combo2.Enabled = True
    Combo3.Enabled = True
    Combo4.Enabled = True
    Combo5.Enabled = True
    Combo6.Enabled = True
    Combo1.SetFocus
End Sub


Private Sub Text1_GotFocus()
    Text2 = ""
    Text3 = ""
    Text4 = ""
    Text5 = ""
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text2_GotFocus()
    Text1 = ""
    Text3 = ""
    Text4 = ""
    Text5 = ""
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text3_GotFocus()
    Text1 = ""
    Text2 = ""
    Text4 = ""
    Text5 = ""
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text4_GotFocus()
    Text1 = ""
    Text2 = ""
    Text3 = ""
    Text5 = ""
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Text5_GotFocus()
    Text1 = ""
    Text2 = ""
    Text3 = ""
    Text4 = ""
End Sub

Private Sub Text5_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Command1.SetFocus
    End If
End Sub
