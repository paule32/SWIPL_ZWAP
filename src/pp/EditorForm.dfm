object Form1: TForm1
  Left = 108
  Top = 155
  Width = 915
  Height = 605
  Caption = 'Prolog Transpiler (c) 2023 Jens Kallup - paule32'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 119
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 185
    Top = 75
    Height = 394
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 469
    Width = 897
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 536
    Width = 897
    Height = 23
    Panels = <
      item
        Text = ' Ready'
        Width = 64
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 897
    Height = 64
    Align = alBottom
    TabOrder = 1
    object JvStatusBox: TJvxCheckListBox
      Left = 1
      Top = 1
      Width = 895
      Height = 62
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      InternalVersion = 202
      Strings = (
        'rrr'
        0
        True
        'rrr'
        0
        True)
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 897
    Height = 75
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 31
        Width = 893
      end
      item
        Control = Panel3
        ImageIndex = -1
        MinHeight = 36
        Width = 893
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 880
      Height = 31
      ButtonHeight = 27
      ButtonWidth = 47
      Caption = 'ToolBar1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      Menu = JvMainMenu1
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 9
      Top = 33
      Width = 880
      Height = 36
      TabOrder = 1
      object JvSpeedButton1: TJvSpeedButton
        Left = 81
        Top = 1
        Width = 40
        Height = 34
        Hint = 'compile/translate a script ,,,'
        Align = alLeft
        Caption = 'TR'
        Color = 8454016
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -17
        HotTrackFont.Name = 'Arial Rounded MT Bold'
        HotTrackFont.Style = []
        ParentFont = False
        OnClick = JvSpeedButton1Click
      end
      object JvSpeedButton2: TJvSpeedButton
        Left = 41
        Top = 1
        Width = 40
        Height = 34
        Hint = 'save a file'
        Align = alLeft
        Caption = 'SF'
        Color = 8454016
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -17
        HotTrackFont.Name = 'Arial Rounded MT Bold'
        HotTrackFont.Style = []
        ParentFont = False
        OnClick = JvSpeedButton2Click
      end
      object JvSpeedButton3: TJvSpeedButton
        Left = 1
        Top = 1
        Width = 40
        Height = 34
        Hint = 'open a file'
        Align = alLeft
        Caption = 'OF'
        Color = 8454016
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        HotTrackFont.Charset = ANSI_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -17
        HotTrackFont.Name = 'Arial Rounded MT Bold'
        HotTrackFont.Style = []
        ParentFont = False
        OnClick = JvSpeedButton3Click
      end
      object SpeedButton1: TSpeedButton
        Left = 392
        Top = 8
        Width = 23
        Height = 22
        Caption = 'Q'
        OnClick = SpeedButton1Click
      end
      object Edit2: TEdit
        Left = 128
        Top = 6
        Width = 257
        Height = 24
        TabOrder = 0
        Text = 'E:\temp\output.pas'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 185
    Height = 394
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 3
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 392
      Align = alClient
      Indent = 22
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 188
    Top = 75
    Width = 709
    Height = 394
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'unnamed.pl'
      object SynMemo1: TSynMemo
        Left = 0
        Top = 0
        Width = 701
        Height = 363
        Align = alClient
        ActiveLineColor = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        OnKeyDown = SynMemo1KeyDown
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -13
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Gutter.ShowModification = True
        Highlighter = SynGeneralSyn1
        InsertCaret = ctVerticalLine2
        Lines.UnicodeStrings = 'SynMemo1'
        Options = [eoAutoIndent, eoDragDropEditing, eoEnhanceEndKey, eoGroupUndo, eoScrollPastEol, eoShowScrollHint, eoSmartTabDelete, eoTabIndent, eoTabsToSpaces]
        TabWidth = 4
        WantTabs = True
        FontSmoothing = fsmNone
      end
    end
  end
  object JvGradientCaption1: TJvGradientCaption
    Captions = <>
    FormCaption = 'Prolog Transpiler (c) 2023 Jens Kallup - paule32'
    Left = 528
    Top = 40
  end
  object JvMainMenu1: TJvMainMenu
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    ItemPainter = JvXPMenuItemPainter1
    Left = 704
    Top = 126
    object kkkkk1: TMenuItem
      Caption = 'File'
      OnClick = kkkkk1Click
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
    end
    object Options1: TMenuItem
      Caption = 'Project'
    end
    object Window1: TMenuItem
      Caption = 'Window'
    end
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object JvXPMenuItemPainter1: TJvXPMenuItemPainter
    SelectionFrameBrush.Color = 13811126
    SelectionFramePen.Color = 6956042
    Left = 736
    Top = 126
  end
  object JvPopupMenu1: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 704
    Top = 158
    object New2: TMenuItem
      Caption = 'New ...'
      object emplate1: TMenuItem
        Caption = 'Template'
      end
      object Application1: TMenuItem
        Caption = 'Application'
      end
      object Module1: TMenuItem
        Caption = 'Module'
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object LoadfromFile1: TMenuItem
      Caption = 'Load from File'
      ShortCut = 16463
      OnClick = LoadfromFile1Click
    end
    object SavetoFile1: TMenuItem
      Caption = 'Save to File'
      ShortCut = 16467
      OnClick = SavetoFile1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Exit2: TMenuItem
      Caption = 'Exit'
      ShortCut = 16499
      OnClick = Exit2Click
    end
  end
  object JvPopupMenu2: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 736
    Top = 158
    object MenuItem7: TMenuItem
      Caption = 'Help'
      ShortCut = 112
    end
    object MenuItem8: TMenuItem
      Caption = '-'
    end
    object MenuItem9: TMenuItem
      Caption = 'About ...'
      OnClick = MenuItem9Click
    end
  end
  object JvOpenDialog1: TJvOpenDialog
    Height = 560
    Width = 758
    Left = 672
    Top = 158
  end
  object SynGeneralSyn1: TSynGeneralSyn
    DefaultFilter = 'Prolog *.pl|*.pl'
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.LineCommentarStart = '%'
    Options.Visible = False
    CommentAttri.Foreground = clOlive
    Comments = [csAnsiStyle, csCStyle, csCPPStyle]
    DetectPreprocessor = False
    StringMultiLine = False
    Left = 736
    Top = 192
  end
  object JvSaveDialog1: TJvSaveDialog
    Height = 520
    Width = 758
    Left = 644
    Top = 158
  end
  object JvOpenDialog2: TJvOpenDialog
    Height = 560
    Width = 758
    Left = 672
    Top = 190
  end
end
