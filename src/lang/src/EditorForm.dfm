object Form1: TForm1
  Left = 704
  Top = 53
  ClientHeight = 702
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShortCut = FormShortCut
  OnShow = FormShow
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 589
    Width = 979
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Color = clSilver
    ParentColor = False
  end
  object LeftSplitter: TSplitter
    Left = 215
    Top = 78
    Width = 5
    Height = 511
    AutoSnap = False
    Color = clSilver
    MinSize = 42
    ParentColor = False
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 73
    Width = 979
    Height = 5
    Cursor = crVSplit
    Align = alTop
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 680
    Width = 979
    Height = 22
    Panels = <
      item
        Alignment = taCenter
        Text = 'Ready.'
        Width = 53
      end
      item
        Width = 117
      end
      item
        Width = 42
      end>
  end
  object LogPanel: TPanel
    Left = 0
    Top = 594
    Width = 979
    Height = 86
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      979
      86)
    object PageControl1: TJvPageControl
      Left = 1
      Top = 1
      Width = 875
      Height = 83
      ActivePage = TabSheet7
      TabOrder = 0
      ParentColor = False
      Color = clBtnFace
      object TabSheet7: TTabSheet
        Caption = 'Build'
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 869
          Height = 55
          Align = alLeft
          TabOrder = 0
          object buildListBox: TCheckListBox
            Left = 1
            Top = 1
            Width = 455
            Height = 53
            Align = alLeft
            ItemHeight = 13
            TabOrder = 0
          end
          object Button6: TJvImgBtn
            Left = 461
            Top = 0
            Width = 62
            Height = 21
            Caption = 'Copy'
            TabOrder = 1
            Color = clSilver
          end
          object Button7: TJvImgBtn
            Left = 461
            Top = 27
            Width = 62
            Height = 21
            Caption = 'Clear'
            TabOrder = 2
            Color = clSilver
          end
          object Button8: TJvImgBtn
            Left = 541
            Top = 0
            Width = 63
            Height = 21
            Caption = 'Export'
            TabOrder = 3
            Color = clSilver
          end
        end
      end
      object TabSheet55: TTabSheet
        Caption = 'Team Server'
        ImageIndex = 1
      end
    end
    object Memo1: TMemo
      Left = 648
      Top = 0
      Width = 188
      Height = 75
      Anchors = [akLeft, akTop, akBottom]
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssBoth
      TabOrder = 1
    end
    object PanelResizer3: TPanel
      Left = 856
      Top = 8
      Width = 102
      Height = 83
      Caption = 'PanelResizer'
      TabOrder = 2
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 78
    Width = 215
    Height = 511
    Align = alLeft
    Caption = 'LeftPanel'
    TabOrder = 2
    object PanelResizer2: TPanel
      Left = 13
      Top = 27
      Width = 121
      Height = 101
      Caption = 'PanelResizer'
      TabOrder = 0
    end
  end
  object EditPanel: TPanel
    Left = 220
    Top = 78
    Width = 759
    Height = 511
    Align = alClient
    Anchors = [akLeft, akTop, akRight]
    Caption = 'EditPanel'
    TabOrder = 3
    object Splitter3: TSplitter
      Left = 1
      Top = 351
      Width = 757
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Color = clSilver
      ParentColor = False
      ExplicitWidth = 758
    end
    object UpperPanel: TPanel
      Left = 1
      Top = 1
      Width = 757
      Height = 350
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Size: 22'
      ParentColor = True
      TabOrder = 0
      object Splitter5: TSplitter
        Left = 567
        Top = 1
        Width = 5
        Height = 348
        Color = clSilver
        ParentColor = False
        ExplicitLeft = 568
        ExplicitHeight = 349
      end
      object MainPageControl: TPageControl
        Left = 1
        Top = 1
        Width = 566
        Height = 348
        ActivePage = TabSheet_Options
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = MainPageControlChange
        object TabSheet2: TTabSheet
          Caption = 'Editor'
        end
        object TabSheet_Options: TTabSheet
          Caption = 'Options ...'
          ImageIndex = 1
        end
        object ChatTabSheet: TTabSheet
          Caption = 'Chat #fpc'
          ImageIndex = 3
        end
        object TabSheet22: TTabSheet
          Caption = 'Designer'
          ImageIndex = 4
          object PageControl14: TPageControl
            Left = 0
            Top = 0
            Width = 558
            Height = 318
            ActivePage = TabSheet32
            Align = alClient
            TabOrder = 0
            TabPosition = tpBottom
            object TabSheet32: TTabSheet
              Caption = 'Design View 1'
              object Splitter10: TSplitter
                Left = 0
                Top = 249
                Width = 550
                Height = 5
                Cursor = crVSplit
                Align = alBottom
                Color = clSilver
                ParentColor = False
                ExplicitTop = 229
                ExplicitWidth = 554
              end
              object ScrollBox3: TScrollBox
                Left = 0
                Top = 0
                Width = 550
                Height = 249
                Align = alClient
                TabOrder = 0
              end
              object Panel14: TPanel
                Left = 0
                Top = 254
                Width = 550
                Height = 36
                Align = alBottom
                TabOrder = 1
                object JvImgBtn21: TJvImgBtn
                  Left = 7
                  Top = 7
                  Width = 62
                  Height = 21
                  Caption = 'Cut'
                  TabOrder = 0
                  Color = clSilver
                end
                object JvImgBtn22: TJvImgBtn
                  Left = 80
                  Top = 7
                  Width = 63
                  Height = 21
                  Caption = 'Copy'
                  TabOrder = 1
                  Color = clSilver
                end
                object JvImgBtn23: TJvImgBtn
                  Left = 154
                  Top = 7
                  Width = 62
                  Height = 21
                  Caption = 'Paste'
                  TabOrder = 2
                  Color = clSilver
                end
                object JvImgBtn24: TJvImgBtn
                  Left = 227
                  Top = 7
                  Width = 63
                  Height = 21
                  Caption = 'Delete'
                  TabOrder = 3
                  Color = clSilver
                end
                object JvImgBtn25: TJvImgBtn
                  Left = 454
                  Top = 7
                  Width = 63
                  Height = 21
                  Caption = 'Save'
                  TabOrder = 4
                  Color = clSilver
                end
              end
            end
          end
        end
        object ConsoleTabSheet: TTabSheet
          Caption = 'Console'
          ImageIndex = 5
          object ScrollBox5: TScrollBox
            Left = 0
            Top = 0
            Width = 558
            Height = 318
            Align = alClient
            TabOrder = 0
          end
        end
        object C64TabSheet: TTabSheet
          Caption = 'C-64 Display'
          ImageIndex = 6
          object ScrollBox6: TScrollBox
            Left = 0
            Top = 0
            Width = 534
            Height = 340
            Color = 16744576
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -27
            Font.Name = 'C64 Elite Mono'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet28: TTabSheet
          Caption = 'SQL-Builder'
          ImageIndex = 7
          object PageControl12: TPageControl
            Left = 0
            Top = 0
            Width = 558
            Height = 318
            ActivePage = TabSheet30
            Align = alClient
            MultiLine = True
            TabOrder = 0
            TabPosition = tpBottom
            object TabSheet30: TTabSheet
              Caption = 'SQL View 1'
              object SqlScrollBox: TScrollBox
                Left = 0
                Top = 0
                Width = 550
                Height = 290
                Align = alClient
                TabOrder = 0
                object PaintBox1: TPaintBox
                  Left = 0
                  Top = 0
                  Width = 546
                  Height = 286
                  Align = alClient
                  OnDragDrop = PaintBox1DragDrop
                  OnDragOver = PaintBox1DragOver
                  ExplicitWidth = 551
                  ExplicitHeight = 267
                end
              end
            end
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Help Authoring'
          ImageIndex = 2
        end
        object NewModule_TabSheet: TTabSheet
          Caption = 'New Module ...'
          ImageIndex = 8
          object NewProjectPageControl: TPageControl
            Left = 0
            Top = 0
            Width = 558
            Height = 318
            ActivePage = TabSheet36
            Align = alClient
            MultiLine = True
            Style = tsButtons
            TabOrder = 0
            OnChange = NewProjectPageControlChange
            object TabSheet36: TTabSheet
              Caption = 'Application'
              object Splitter18: TSplitter
                Left = 0
                Top = 228
                Width = 550
                Height = 6
                Cursor = crVSplit
                Align = alBottom
                Color = clSilver
                ParentColor = False
                ExplicitTop = 234
                ExplicitWidth = 554
              end
              object Panel21: TPanel
                Left = 0
                Top = 234
                Width = 550
                Height = 25
                Align = alBottom
                TabOrder = 0
                object ProjectNameEdit: TJvEdit
                  Left = 1
                  Top = 1
                  Width = 427
                  Height = 23
                  Hint = 'Double Click, to open a Project'
                  EmptyValue = 'C:\Projects\temp.pro'
                  Caret.Width = 4
                  Caret.Height = 20
                  Align = alLeft
                  AutoSize = False
                  MaxLength = 255
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  Text = ''
                  OnDblClick = ProjectNameEditDblClick
                  OnEnter = ProjectNameEditEnter
                  OnExit = ProjectNameEditExit
                  TextHint = 'Type in the Project Path, and Name'
                end
                object CreateNewButton: TJvImgBtn
                  Left = 443
                  Top = 3
                  Width = 63
                  Height = 20
                  Caption = 'Create'
                  TabOrder = 1
                  OnClick = CreateNewButtonClick
                  Color = clSilver
                end
              end
              object NewProjectScrollBox: TScrollBox
                Left = 0
                Top = 0
                Width = 550
                Height = 228
                Align = alClient
                TabOrder = 1
              end
            end
            object TabSheet37: TTabSheet
              Caption = 'Module'
              ImageIndex = 1
              object ListView3: TListView
                Left = 0
                Top = 0
                Width = 550
                Height = 259
                Align = alClient
                Columns = <>
                TabOrder = 0
              end
            end
            object TabSheet38: TTabSheet
              Caption = 'DataBase'
              ImageIndex = 2
              object ListView4: TListView
                Left = 0
                Top = 0
                Width = 550
                Height = 259
                Align = alClient
                Columns = <>
                TabOrder = 0
              end
            end
            object TabSheet39: TTabSheet
              Caption = 'WWW - HTML/CSS/JS'
              ImageIndex = 3
              object ListView5: TListView
                Left = 0
                Top = 0
                Width = 550
                Height = 259
                Align = alClient
                Columns = <>
                TabOrder = 0
              end
            end
            object TabSheet40: TTabSheet
              Caption = 'Dialogs'
              ImageIndex = 4
              object ListView6: TListView
                Left = 0
                Top = 0
                Width = 550
                Height = 259
                Align = alClient
                Columns = <>
                TabOrder = 0
              end
            end
            object TabSheet41: TTabSheet
              Caption = 'Internet'
              ImageIndex = 5
              object ListView7: TListView
                Left = 0
                Top = 0
                Width = 550
                Height = 259
                Align = alClient
                Columns = <>
                TabOrder = 0
              end
            end
            object TabSheet42: TTabSheet
              Caption = 'InstallScript'
              ImageIndex = 6
              object ListView8: TListView
                Left = 0
                Top = 0
                Width = 550
                Height = 259
                Align = alClient
                Columns = <>
                TabOrder = 0
              end
            end
          end
        end
        object SpreadTabSheet: TTabSheet
          Caption = 'Spread'
          ImageIndex = 9
        end
      end
      object Panel8: TPanel
        Left = 572
        Top = 1
        Width = 184
        Height = 348
        Align = alClient
        TabOrder = 1
      end
    end
    object Frame_Panel: TPanel
      Left = 1
      Top = 357
      Width = 757
      Height = 153
      Cursor = crVSplit
      Align = alClient
      TabOrder = 1
      object Splitter19: TSplitter
        Left = 567
        Top = 1
        Width = 4
        Height = 151
        Align = alRight
        Color = clSilver
        ParentColor = False
        ExplicitLeft = 568
      end
      object Panel22: TPanel
        Left = 571
        Top = 1
        Width = 185
        Height = 151
        Align = alRight
        TabOrder = 0
        object ScrollBox4: TScrollBox
          Left = 1
          Top = 1
          Width = 183
          Height = 149
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
  object PanelResizer1: TPanel
    Left = 246
    Top = 240
    Width = 122
    Height = 101
    Caption = 'PanelResizer1'
    TabOrder = 4
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 979
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 5
  end
  object JvGradientCaption1: TJvGradientCaption
    Active = False
    Captions = <
      item
        Caption = 'Private Editor 1.0 (c) 2023 paule32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        InactiveColor = clGradientActiveCaption
      end>
    DefaultFont = False
    FontInactiveColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GradientInactive = True
    StartColor = clRed
    EndColor = clYellow
    Left = 417
    Top = 528
  end
  object OpenDialog1: TOpenDialog
    Left = 417
    Top = 120
  end
  object SaveDialog1: TSaveDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    OnCanClose = SaveDialog1CanClose
    Left = 441
    Top = 120
  end
  object PopupMenu_Help: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 2
    ImageMargin.Top = 2
    ImageMargin.Right = 2
    ImageMargin.Bottom = 2
    ImageSize.Height = 40
    ImageSize.Width = 40
    Left = 189
    Top = 312
    object PopupMenu_Help_Help: TMenuItem
      Bitmap.Data = {
        42190000424D4219000000000000420000002800000028000000280000000100
        20000300000000190000232E0000232E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000200000008000000110000001A0000002100000024000000230000
        001F000000160000000D00000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        00130000002A0D0400443D200168502A0185542D0194512C01964826018D3219
        0178070200600000005000000039000000200000000C00000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000111F0D00346336
        0281723F03C6774203F1754103FF6F3D03FF693A02FF663802FF643702FF6437
        02FF623602F35A3102D04625019E0C0400680000004800000023000000090000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000061A0A0022703E0285804803E77F46
        03FF734003FF643702FF5D3919FF675346FF6D5F56FF6B5D54FF5F4E43FF4B2F
        17FF482601FF502B01FF593002FF5B3202ED482601A8050100660000003C0000
        0013000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000075F33023F844A04CD874B03FF7A4403FF724F
        36FF918781FFA7A4A2FFB1B0AFFFABACABFFA4A4A4FF9FA09FFF9E9F9EFF9D9D
        9CFF918F8DFF78736FFF4D3A2EFF462501FF552E02FF572F02DD2B1400810000
        004C0000001A0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000007754103528D4F04ED894D04FF7C4E29FFA0958FFFBCBB
        BAFFB3B4B4FF9FA0A0FF8B8A89FF7E7874FF766D66FF726862FF6F6965FF706F
        6EFF787878FF878787FF949393FF7C7874FF452F20FF4B2801FF593002F3391D
        0193000000510000001A00000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000037C45034D925204F38D4F04FF8E6E5AFFBDBAB8FFBFBFBFFFA7A7
        A6FF8F8177FF866146FF845119FF814C0AFF7D4908FF794607FF754406FF7043
        12FF684A33FF635750FF6A6A6AFF828282FF8E8D8CFF584D46FF462501FF5830
        02F7391D01930000004C00000013000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00017A43022D965404EB925204FF997C6BFFC7C6C5FFBFC0BFFFA29A94FF9467
        41FF91560DFF8E540CFF89510BFF854E0AFF814C09FF7C4908FF794507FF7544
        06FF714106FF6C3E05FF664326FF615954FF737373FF8F8E8EFF605752FF4625
        01FF593002F32B1501810000003B000000090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004826
        010A985504C4985604FF9B765EFFCBCAC9FFC5C5C4FFA79588FF9D611DFF9A5C
        10FF955A0EFF91560DFF8E540CFF89510BFF7E4A09FF6D3F06FF6D3F06FF7644
        07FF754406FF714106FF6C3E05FF683D0BFF605147FF6E6E6EFF8F8E8EFF594D
        47FF4B2801FF572F02DD05020066000000230000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000019655
        05679D5905FF995F2DFFCAC6C3FFCDCDCDFFB29E91FFA66516FFA16112FF9E5F
        11FF9A5C10FF955A0EFF91560DFF8E5514FF938175FF837972FF5B360DFF7644
        07FF794607FF754406FF714106FF6C3E05FF683C06FF605147FF737373FF8F8D
        8CFF453020FF562F02FF482601A8000000470000000B00000000000000000000
        00000000000000000000000000000000000000000000000000006F3E030AA05B
        05DE9E5A05FFBBA89EFFD4D4D4FFC1B7B0FFAE6C23FFAA6714FFA66413FFA161
        12FF9E5F11FF9A5C10FF955A0EFF925A1CFFB3B3B1FFAFAFAEFF6A4218FF7C48
        08FF7D4908FF794607FF754406FF714106FF6C3E05FF683D0BFF615954FF8282
        82FF7C7875FF472501FF5C3202ED0D0400680000001F00000001000000000000
        00000000000000000000000000000000000000000000000000009F5A0554A45D
        05FFA46C40FFD6D4D3FFD1D1D0FFB8855BFFB26C16FFAE6914FFAA6714FFA664
        13FFA16112FF9E5F11FF9A5C10FF965C18FFA8978DFFA19389FF824F15FF844E
        0AFF814C09FF7D4908FF794607FF754406FF714106FF6C3E05FF664426FF6B6B
        6AFF959494FF4D3B2EFF593102FF4725019D0000003800000005000000000000
        0000000000000000000000000000000000000000000003010001A65E05A9A65E
        05FFBDA596FFDADADAFFCBBAAFFFBA7118FFB66F17FFB26C16FFAE6914FFAA67
        14FFA66413FFA16112FF9E5F11FF995C10FF8A520DFF6E4008FF744408FF864F
        0BFF854E0AFF814C09FF7D4908FF794607FF754406FF714106FF6C3E05FF6458
        50FF888888FF797470FF502B01FF5A3102CF0000004E0000000D000000000000
        0000000000000000000000000000000000000000000080480405A96005E9A75F
        05FFD2C8C2FFDBDBDBFFC79A7AFFBE7419FFBA7118FFB66F17FFB26C16FFAE69
        14FFAA6714FFA66413FFA16112FF9D5F13FFB6ACA5FFA59F9BFF633906FF864F
        0BFF89510BFF854E0AFF814C09FF7D4908FF794607FF754406FF714106FF684A
        33FF797979FF92908EFF492701FF623602F30702005F00000015000000000000
        00000000000000000000000000000000000000000000A75F0622AD6105FEAB67
        23FFDEDDDCFFDBDAD9FFC68036FFC2771AFFBE7419FFBA7118FFB66F17FFB26C
        16FFAE6914FFAA6714FFA66413FFA16112FFBFB9B4FFBAB9B7FF5B360EFF7C49
        0AFF8B520CFF89510BFF854E0AFF814C09FF7D4908FF794607FF754406FF7043
        12FF71706FFF9E9E9DFF4C2F17FF653802FF331A01770000001D000000010000
        00000000000000000000000000000000000000000000AD620642AF6306FFB580
        5AFFE2E2E2FFDCD3CDFFCA7C1CFFC6791BFFC2771AFFBE7419FFBA7118FFB66F
        17FFB26C16FFAE6914FFAA6714FFA66413FFBAA89DFFC5C5C5FF877B73FF6339
        06FF7F4B0AFF8B520CFF89510BFF854E0AFF814C09FF7D4908FF794607FF7544
        06FF706A66FF9FA09FFF5F4E43FF653702FF4927018C00000022000000010000
        00000000000000000000000000000000000000000000B1640652B16406FFBD8E
        70FFE4E4E4FFDDCEC5FFCE7E1DFFCA7C1CFFC6791BFFC2771AFFBE7419FFBA71
        18FFB66F17FFB26C16FFAE6914FFAA6714FFAB7649FFC6C2C0FFC2C1C1FF8376
        6DFF623806FF7F4A0AFF8B520CFF89510BFF854E0AFF814C09FF7D4908FF7946
        07FF736963FFA0A1A1FF6B5D55FF673902FF522C019500000023000000010000
        00000000000000000000000000000000000000000000B3650652B36506FFBF8F
        71FFE6E6E6FFE0D1C7FFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC2771AFFBE74
        19FFBA7118FFB66F17FFB26C16FFAE6914FFAA6714FFAE805CFFC5C1BEFFC3C3
        C2FF867A72FF653A07FF854F0BFF8D530CFF89510BFF854E0AFF814C09FF7D49
        08FF786E68FFA5A6A5FF6E5F56FF6A3B02FF552E01930000001F000000010000
        00000000000000000000000000000000000000000000B5660641B56606FFBC84
        5CFFE8E8E8FFE3DAD3FFD68320FFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC277
        1AFFBD7419FFB46D17FFAE6915FFB06A15FFAE6914FFAA6714FFAC7A50FFC5C0
        BDFFC2C1C1FF725E51FF79470AFF8F550DFF8E540CFF89510BFF854E0AFF814C
        0AFF7F7A76FFACADACFF685346FF703E03FF512B018300000018000000000000
        00000000000000000000000000000000000000000000B7670720B76706FEB76E
        25FFE8E6E5FFE7E6E5FFDA8D3DFFD6831FFFD2811EFFCE7E1DFFCA7C1CFFC679
        1BFFBA7219FF975C16FF895310FFA66414FFB16B16FFAE6914FFAA6714FFB28E
        74FFC9C9C9FFA29C97FF754409FF92570EFF91560DFF8E540CFF89510BFF8451
        1AFF8D8C8BFFB1B1B0FF5E3919FF764103FF3E2001650000000F000000000000
        00000000000000000000000000000000000000000000B5680E03B96806E8B767
        07FFE1D5CEFFEAEAEAFFE1AD87FFDA8620FFD6831FFFD2811EFFCE7E1DFFCA7C
        1CFFDBC1AFFFE4E1DEFF937D6FFF945911FFB16B16FFB26B16FFAD6914FFAB79
        50FFCDCDCDFFB1ACA9FF7D4A0BFF975B0FFF955A0EFF91560DFF8E540CFF8662
        48FFA1A2A2FFA8A4A2FF663803FF784203F10D04004100000007000000000000
        00000000000000000000000000000000000000000000BC7A3800BA6906A6B968
        06FFD2B4A2FFECECECFFE7D2C4FFDE8821FFDA8620FFD6831FFFD2811EFFCE7E
        1DFFDCB9A1FFEEEEEEFFC3BBB6FF77470CFF985B11FFA56413FF9F6012FFB29D
        8FFFD1D1D1FFADA29BFF90560FFF9D5E11FF9A5C10FF955A0EFF91560DFF9082
        7AFFB5B5B5FF918780FF744003FF733F02C40000002700000002000000000000
        0000000000000000000000000000000000000000000000000000BC6A074FBB69
        06FFBE7C47FFECE9E8FFEBEBEAFFE3A470FFDE8821FFDA8620FFD6831FFFD281
        1EFFD18841FFEEE7E3FFEDEDEDFFB8ADA6FF825F43FF845D3BFFAC9D93FFD7D6
        D6FFD2D0CFFF9D7250FFA26212FFA16112FF9E5F11FF9A5C10FF946843FFA9A9
        A8FFBCBBBAFF734F36FF7F4703FF6336027E0000001100000000000000000000
        0000000000000000000000000000000000000000000000000000BE6D0705BD6A
        06DBBB6906FFD8BFB0FFEDEEEEFFEADCD3FFE28F34FFDE8821FFDA8620FFD683
        1FFFD2811EFFD69B6CFFECE3DCFFEEEEEEFFEAEAEAFFE6E5E5FFE2E2E2FFD8D3
        CFFFB48B6EFFAA6714FFAA6714FFA66413FFA16112FF9D611DFFA49C96FFBFBF
        BFFFA0968FFF7B4403FF804803E61F0D00310000000400000000000000000000
        000000000000000000000000000000000000000000000000000000000000BE6C
        085EBD6A06FFBE7535FFE8E2DDFFEDEEEEFFE9CEBCFFE28C27FFDE8821FFDA86
        20FFD6831FFFD2811EFFCF8128FFD5A27DFFD7B49CFFD3B19AFFC89B7BFFB974
        29FFB56E17FFB26C16FFAE6914FFAA6714FFA66516FFA9968AFFC1C1C1FFBDBA
        B8FF7E4F29FF874C03FF703E02830000000F0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000C06D
        1402BF6C06BDBD6A06FFC7916DFFEDEBE8FFEDEDEDFFE9CEBCFFE28F34FFDE88
        21FFDA8620FFD6831FFFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC2771AFFBE74
        19FFBA7118FFB66F17FFB26C16FFAE6C23FFB3A093FFC6C6C6FFC7C6C5FF8F6E
        5AFF894D04FF854A04CC1B0B001F000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C06D071EBF6C06E7BD6A06FFCB9C7EFFEDEBE8FFEDEEEEFFEADCD3FFE3A4
        70FFDE8821FFDA8620FFD6831FFFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC277
        1AFFBE7419FFBA7118FFB9865CFFC2B8B2FFCDCDCDFFCBCAC9FF9A7D6BFF8D4F
        04FF8D4F04EC6134023C00000005000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C06D0837BF6C06F0BD6A06FFC7916DFFE8E2DDFFEDEEEEFFEBEB
        EAFFE7D2C4FFE1AD88FFDB8D3DFFD68320FFD2811EFFCE7E1DFFCA7C1CFFC780
        37FFC79B7BFFCCBBB0FFD2D2D1FFD4D4D4FFCAC6C3FF9C765EFF925204FF9252
        04F3774203500000000700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3B0500C06D0837BF6C06E7BD6A06FFBE7535FFD8BFB0FFECE9
        E8FFECECECFFEAEAEAFFE7E6E5FFE4DAD4FFE0D1C7FFDDCFC5FFDCD3CDFFDCDB
        DAFFDBDBDBFFDADADAFFD6D4D3FFBBA89EFF995F2EFF985604FF965404EA7E46
        034B000000060000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C06D0A1EBF6C06BDBD6A06FFBB6906FFBE7C
        47FFD2B4A2FFE1D5CEFFE8E6E5FFE8E8E8FFE6E6E6FFE4E4E4FFE2E2E2FFDEDD
        DBFFD2C8C2FFBEA496FFA46C3FFF9F5A05FF9E5905FF985504C37C45032C0000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C0711002BE6C075EBD6A06DBBB69
        06FFB96806FFB76707FFB76E25FFBC845CFFBF9071FFBD8E70FFB6805AFFAB67
        23FFA75F05FFA65E05FFA45D05FFA05B05DD975505664A280109000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BE6B0E05BC6A
        074FBA6906A6B96806E8B76706FEB56606FFB36506FFB16406FFAF6306FFAC61
        05FEA96005E8A65E05A89F5A0553723F03090000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000BC7A3800B7680E03B7670720B5670641B3650652B1640652AE620642A75F
        0622834A04050401000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      Caption = 'Help'
      ShortCut = 112
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object PopupMenu_Help_About: TMenuItem
      Caption = 'About ...'
      OnClick = PopupMenu_Help_AboutClick
    end
  end
  object PopupMenu_Mode: TJvPopupMenu
    Images = ModeImages
    MenuAnimation = [maLeftToRight]
    Style = msItemPainter
    ImageMargin.Left = 2
    ImageMargin.Top = 2
    ImageMargin.Right = 2
    ImageMargin.Bottom = 2
    ImageSize.Height = 38
    ImageSize.Width = 38
    TextMargin = 5
    Left = 821
    Top = 56
    object Pascal1: TMenuItem
      Caption = 'Pascal  Mode'
      ImageIndex = 4
      object MSDOS3: TMenuItem
        Caption = 'MS - DOS'
        ImageIndex = 0
      end
      object WindowsNT32Bit2: TMenuItem
        Caption = 'Windows NT 32-Bit'
        ImageIndex = 2
      end
    end
    object dBASE1: TMenuItem
      Caption = 'dBASE  Mode'
      ImageIndex = 5
      object MSDOS2: TMenuItem
        Caption = 'MS - DOS'
        ImageIndex = 0
      end
      object Windows3111: TMenuItem
        Caption = 'Windows 3.11  16-Bit'
        ImageIndex = 1
      end
      object WindowsNT32Bit1: TMenuItem
        Caption = 'Windows NT     32-Bit'
        ImageIndex = 2
      end
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object C64BASIC1: TMenuItem
      Caption = 'BASIC  Mode'
      ImageIndex = 6
      object MSDOS1: TMenuItem
        Caption = 'MS - DOS'
        ImageIndex = 0
      end
      object InstallScript1: TMenuItem
        Caption = 'Installshield Script'
        ImageIndex = 7
      end
      object C64BASIC2: TMenuItem
        Caption = 'Commodore 64 BASIC'
        ImageIndex = 3
      end
    end
  end
  object PopupMenu_Project: TJvPopupMenu
    MenuAnimation = [maLeftToRight]
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 14
    Left = 29
    Top = 344
    object MenuItem1: TMenuItem
      Caption = 'Convert'
      object FromPascaltoAsmJit1: TMenuItem
        Caption = 'From:  Pascal  to:   AsmJit'
      end
      object PascalC1: TMenuItem
        Caption = 'From:  Pascal  to:   C++'
      end
      object FromPascaltoJavaScript1: TMenuItem
        Caption = 'From:  Pascal  to:   JavaScript'
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object FromCtoPascal1: TMenuItem
        Caption = 'From:  C++  to:  Pascal'
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object AddNewProject1: TMenuItem
      Caption = 'Add New Project'
    end
    object AddtoTemplateLibrary1: TMenuItem
      Caption = 'Add to Template'#39's'
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Options1: TMenuItem
      Caption = 'Options ...'
      OnClick = Options1Click
    end
  end
  object IdIRC1: TIdIRC
    ConnectTimeout = 0
    ReadTimeout = 0
    CommandHandlers = <>
    ExceptionReply.Code = '500'
    ExceptionReply.Text.Strings = (
      'Unknown Internal Error')
    Username = 'username'
    RealName = 'Real name'
    Password = ''
    Replies.Version = 'TIdIRC 1.061 by Steve Williams'
    Replies.ClientInfo = 
      'TIdIRC 1.061 by Steve Williams Non-visual component for 32-bit D' +
      'elphi.'
    UserMode = []
    Left = 589
    Top = 363
  end
  object ImageList2: TImageList
    Height = 21
    Width = 21
    Left = 322
    Top = 339
    Bitmap = {
      494C010102000400040015001500FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000054000000150000000100200000000000901B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFC7FFFFFFC7FEFEFEC7FEFEFEC7FFFFFFC7FFFFFFC7FEFE
      FEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFE
      FEC7FFFFFFC7FFFFFFC7FEFEFEC7FEFEFEC7FFFFFFC7FFFFFFC7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD0000000000FFFFFFC7FCFCFCC8FCFC
      FCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFC
      FCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFCFCC8FCFC
      FCC8FCFCFCC8FFFFFFC700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6CDE40096A6D60096A6D50096A5
      D50096A5D50096A6D50096A6D50096A6D50096A6D50096A6D50096A6D50096A6
      D50096A6D50096A6D50096A6D50096A6D50096A5D50096A6D50096A6D50097A8
      D700DADDE700BDE0E0DF8CD5D5EE8CD5D5EE8BD5D5EE8BD5D5EE8CD5D5EE8BD5
      D5EE8BD5D5EE8BD5D5EE8BD5D5EE8BD5D5EE8BD5D5EE8BD5D5EE8BD5D5EE8BD5
      D5EE8CD5D5EE8BD5D5EE8CD5D5EE8CD5D5EE8DD6D6EDD3E6E6D8000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008293D7005578E1005578E1005679E1005679E200567AE200567AE200567A
      E200567AE200567AE200567AE200567AE200567AE200567AE200567AE2005679
      E2005679E2005579E1005578E1005477E100B0BCF1006DE6E6F512FEFEFF13FE
      FEFF13FEFEFF14FEFEFF14FEFEFF15FEFEFF16FEFEFF16FEFEFF16FEFEFF16FE
      FEFF16FEFEFF16FEFEFF16FEFEFF15FEFEFF14FEFEFF14FEFEFF13FEFEFF13FE
      FEFF12FEFEFF9EF8F8E900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E50000000000000000000000
      0000FEFFFF0000000000FEFFFF000000000000000000FEFFFF00FEFFFF000000
      000000000000FEFFFF00FEFFFF00FEFFFF00000000000000000000000000FEFF
      FF00FAFAFA006BE4E4F50BFFFFFF14FFFFFF15FFFFFF0FFFFFFF16FFFFFF16FF
      FFFF16FFFFFF16FFFFFF10FFFFFF10FFFFFF16FFFFFF16FFFFFF10FFFFFF16FF
      FFFF10FFFFFF16FFFFFF15FFFFFF13FFFFFF0BFEFEFF9DF8F8E9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B4D600B1B3E600B2B3E600B2B3E600B2B4E600B2B4E600B2B4E600B3B4
      E600B2B4E600B2B4E600B2B4E600B3B4E600B3B4E600B2B4E600B2B4E600B2B4
      E600B2B4E600B2B3E600B2B3E600B1B3E500D1D3EF006CE4E4F513FFFFFF15FF
      FFFF16FEFEFF16FFFFFF17FFFFFF17FFFFFF17FEFEFF17FEFEFF17FFFFFF17FF
      FFFF17FEFEFF17FEFEFF17FFFFFF17FFFFFF17FFFFFF16FFFFFF16FEFEFF14FF
      FFFF13FEFEFF9DF8F8E900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007876C1003830C7003A31C7003A32
      C7003B33C7003C33C7003C33C7003B33C7003B33C7003C33C7003C33C7003B33
      C7003B33C7003C33C7003C33C7003C33C7003B33C7003A32C7003931C700372F
      C600A9A8DE006BE4E4F513FFFFFF15FFFFFF16FFFFFF17FFFFFF17FFFFFF18FF
      FFFF18FFFFFF18FFFFFF18FFFFFF18FFFFFF18FFFFFF18FFFFFF18FFFFFF18FF
      FFFF17FFFFFF16FFFFFF16FFFFFF14FFFFFF13FEFEFF9DF8F8E9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D4DE00E8E5F400E8E6F400E8E6F400E9E6F400E9E6F400E8E6F400E9E6
      F400E9E6F400E8E6F400E8E6F400E9E6F400E9E6F400E8E6F400E8E6F400E8E6
      F400E9E6F400E8E6F400E8E6F400E8E5F400EEECF5006BB2E3F513B6FDFF14B6
      FDFF16B6FDFF16B6FDFF17B6FDFF17B6FDFF18B6FDFF18B6FDFF18B6FDFF18B6
      FDFF18B6FDFF18B6FDFF18B6FDFF17B6FDFF17B6FDFF16B6FDFF16B6FDFF14B6
      FDFF12B5FCFF9DCEF8E900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D2D200E5E2E200E5E2E200E5E2
      E200E5E2E200E5E2E200E5E2E200E5E2E200E5E2E200E5E2E200E5E2E200E5E2
      E200E5E2E200E4E2EA00E2E2F000E2E2F000E2E2F000E2E2F000E2E2EF00E2E1
      EF00E9E9F1006B6BE3F51310FDFF1411FDFF1613FDFF1614FDFF1715FDFF1715
      FDFF1715FDFF1715FDFF1715FDFF1715FDFF1715FDFF1715FDFF1715FDFF1715
      FDFF1714FDFF1613FDFF1513FDFF1311FDFF120FFCFF9D9DF8E9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C7873009E867D006C290A007C4E3C0092756C006B280A00957A71007A4C
      37006C280A00A18A82006E3212007D554A009B837A00531A9400320ABF00310A
      BD00310ABD002F0ABD002D0ABC002A0ABB00A7A5D8006B6BE3F51314FDFF1516
      FDFF1616FDFF1011FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718
      FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718FDFF1616FDFF1516FDFF1314
      FDFF1213FCFF9D9DF8E900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000907C78008A645600926F61007E4D
      3900835B4C0093736700876051007D4F3F008E6A5D00886355008E6E64008357
      4700815647009D8BA800C4C0E600C4C0E600C4C0E600C4C0E600C4BFE500C3BF
      E500DAD7EC006B6CE3F51415FDFF1617FDFF1718FDFF1111FDFF1718FDFF1718
      FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718FDFF1718
      FDFF1717FDFF1617FDFF1516FDFF1314FDFF1213FCFF9D9DF8E9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094807A00896457009D817700875A480088605100A1877E00845F5300855C
      4D00957A7000886459009A817900845F5400855E5100B7AAB000F0EEF800F0EE
      F800F0EEF800F0EEF800F0EEF800EFEEF800F0F0F6006C6CE3F51516FDFF1718
      FDFF191AFDFF1A1BFDFF191AFDFF1818FDFF1617FDFF1718FEFF1718FDFF1718
      FDFF1718FDFF1718FDFF1718FDFF1718FDFF1617FDFF1616FDFF1516FDFF1314
      FDFF1213FCFF9D9DF8E900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F797400AD958C007F4B2C00885B
      4600A38A8000824C3100A790850084553D007C492E00AA938B00784631008966
      59009D827700633A9B00523CC500513BC400513BC300503AC3004F39C3004E38
      C300AEA9DB006C6CE5F51617FEFF1819FEFF1A1BFEFF1C1DFEFF1C1DFEFF1D1E
      FEFF1B1CFEFF1A1AFEFF1819FEFF1718FEFF1718FEFF1718FEFF1718FEFF1718
      FEFF1617FEFF1617FEFF1516FEFF1314FEFF1213FEFF9D9DF9E9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097847E00783F2200AB938700885A44007D462800B0998F007E492D008D64
      5100A99084007B442600AB9389008B655700794022009582A200AFADDA00AFAC
      D900AFACDA00AFABDB00AFABDC00ADABDA00D0CFE6006C6C81F5171761FF1919
      61FF1A1B61FF181860FF1E1E61FF1D1D61FF1E1E61FF1E1E61FF1E1E61FF1D1D
      61FF1C1C61FF1B1B61FF1A1A62FF1A1A61FF1A1A61FF1A1A61FF1A1A61FF1919
      61FF161661FF9D9DABE900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000907A7500C4B5B0007C401500926A
      5800B9A7A0007D411900BDACA6008F634C007E441900C6B8B200804826009778
      6B00B49F9500C5B7B2000000000000000000000000000000000000000000FFFF
      FE00FAFAFA006B6B6BF5161616FF191919FF1A1A1AFF1D1D1CFF1E1E1EFF1E1E
      1EFF1E1E1EFF1E1E1EFF1E1E1EFF1E1E1EFF1E1E1EFF1E1E1EFF1E1E1EFF1E1E
      1EFF1D1D1DFF1C1C1CFF1A1A1AFF191919FF151515FF9D9D9DE9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097857F0079370A00AD948900895940007D411000B39B90007F4419008E63
      4E00AB9285007C3C0A00AD948A00926956007E410E008E74A2009C96D8009D96
      D7009D96D7009C96D7009C96D6009B95D500C6C5E2006B6B6BF5161616FF1919
      19FF1A1A1AFF161616FF1C1C1CFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D
      1DFF1D1D1DFF1D1D1DFF1D1D1DFF1D1D1DFF1C1C1CFF1B1B1BFF1A1A1AFF1818
      18FF151515FF9D9D9DE900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000907A7500B9A39800814926009266
      5000AE958A00824B2B00B29B910090634B00824A2600BCA79E0085503300946F
      5F00B1988E00774DA3006E54D0006E54CF006E53CF006D53CF006C51CF00694F
      CD00B1ADDE006B6B6BF5141414FF161616FF181818FF1A1A1AFF1A1A1AFF1A1A
      1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A1AFF1A1A
      1AFF1A1A1AFF191919FF171717FF161616FF131313FF9D9D9DE9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000978683009B735900B29B8F009F7A63009F7A6100B59E9300A07A6300A17D
      6A00B1998D009F7A6300B0988D00A68674009D786000CBBDBA00F9F7FB00F9F7
      FB00F9F7FB00F9F7FB00F8F7FB00F7F7FA00F6F5F800727272F44C4C4CFF5252
      52FF535353FF535353FF545454FF545454FF545454FF545454FF545454FF5454
      54FF545454FF545454FF545454FF545454FF545454FF535353FF535353FF5353
      53FF404040FFA2A2A2E700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E4E300CBC4C300D7D0CE00CEC8
      C600CBC4C300D8D1D000CBC4C300D0C9C700D5CFCC00CAC4C300D7D0CE00CEC6
      C400CAC4C300E3DFDE00F6F6F600F7F7F600F6F6F600F6F6F600F6F6F600F5F5
      F500F8F8F800DCDCDCD4BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBB
      BBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBB
      BBE0BBBBBBE0BBBBBBE0BBBBBBE0BBBBBBE0BCBCBCDFE8E8E8D0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FEFEFE00FEFEFE00FEFEFE00FEFEFE0000000000FFFFFFC7FEFEFEC7FEFE
      FEC7FEFEFEC7FEFEFEC7FDFDFDC8FDFDFDC8FDFDFDC8FDFDFDC8FDFDFDC8FDFD
      FDC8FDFDFDC8FDFDFDC8FDFDFDC8FDFDFDC8FDFDFDC8FEFEFEC7FEFEFEC7FEFE
      FEC7FEFEFEC7FEFEFEC700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE0000000000FEFEFE000000
      000000000000FFFFFFC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFE
      FEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFEFEC7FEFE
      FEC7FEFEFEC7FEFEFEC7FFFFFFC7FEFEFEC7FFFFFFC7FFFFFFC7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000540000001500000001000100
      00000000FC0000000000000000000000000000000000000000000000FFFFFF00
      FFFFF80000000000000000008000080000000000000000000000000000000000
      000000000000000000000000000000007598E000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003E0000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000800000000000000000080005800000000000000000000000000
      000000000000000000000000000000000000}
  end
  object ColorDialog1: TColorDialog
    Left = 414
    Top = 395
  end
  object C64ScreenTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = C64ScreenTimerTimer
    Left = 522
    Top = 283
  end
  object ModeImages: TImageList
    Height = 38
    Width = 38
    Left = 856
    Top = 56
    Bitmap = {
      494C010106000900040026002600FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000980000004C000000010020000000000080B4
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FEFEFEC7FEFEFEC7FEFEFEC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FEFEFEC7FEFEFEC7FEFEFEC7FEFE
      FEC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FEFEFEC7FFFFFFC7FEFEFEC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7F0F0F0CDCACACADCC5C5C5DEC9C9C9DCDDDD
      DDD4E0E0E0D3E0E0E0D3DFDFDFD4DEDDDCD9E0DCDCDCE0DCDCDCE1DDDDDCE5E1
      E1DCEAE7E6DCEEECECDCEFEDEDDCEFEDEEDCEAE7E7DCDAD8D9DBC6C6C6DDD9D9
      D9D6FBFBFBC8FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFF4F4F4FFEAEAEAFFD9D9
      D9FFD7D7D7FFD6D6D6FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD1D1D1FFCDCDCCFFC9C9C8FFC5C5
      C4FFC1C1C0FFBDBDBCFFB5B5B4FFB3B3B2FFB1B1B1FFB2B2B1FFB3B3B2FFB5B5
      B4FFBFBFBEFFC7C7C7FFD4D4D3FFE2E2E2FFEEEEEEFFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEC7CCCCCCDB575757FB454545FE636262FDB2AF
      AEF8BAB7B7F7BAB7B7F7B7B5B4F8ACA5A1FBA99D96FDAFA19EFDBFB2B0FDCEC4
      C3FDD4CCCDFDDCD6D6FDDDD8D8FDDCD6D7FDD7D0D0FDA8A4A3FC494A49FD6565
      65F9C4C4C4DEFEFEFEC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FFE4E4E4FFCCCCCCFFB9B9
      B9FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB5B5B5FFACACB0FF9C9CA3FF97979EFF929299FF8D8D
      95FF8A8A91FF86868DFF7F7F86FF7C7C84FF7A7A82FF7A7A83FF7C7C84FF7F7F
      86FF87878FFF919199FFA3A3ABFFB9B9C1FFCBCBD4FFD9D9E2FFE6E6EDFFFDFD
      FEFFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC4C0
      C0FFCDCACAFFCECACAFFCAC6C6FFB0A8A4FFA89A94FFBCADABFFD2C7C3FFDCD4
      D3FFCECACAFFD0CCCCFFCDCACAFFD1CBCCFFDCD7D7FFAAA8A6FF424342FE3D42
      3EFF676B67F8DEE2DFD4EEF1EFCEEEF1EECEF8F8F8CAFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAEAEAFFC9C9C9FF989898FF9C9C
      9CFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E
      9EFF9F9F9FFF9E9E9FFF969699FF747484FF434365FF404062FF3E3E61FF3C3C
      5FFF39395DFF37375BFF353557FF333356FF313155FF323255FF333356FF3535
      57FF38385AFF404063FF525274FF6D6D8FFF7F7FA2FF8C8CAFFFABABC6FFF8F8
      FBFFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC5C1
      C1FFCECBCBFFCECBCBFFCBC7C7FFB7AEACFFBCADABFFD2C6C3FFE4DBD9FFE7DF
      E0FFCECBCBFFCECBCBFFCAC7C7FFD1CDCDFFDCD8D8FFAAA8A6FF394C3AFF2F78
      41FF348248FF4D8C5AFB4E8C5BFB4F8F5EFBA7B6A9E6FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E3FFC1C1C1FF959595FFCDCD
      CDFFCFCFCFFFCECECEFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD1D1
      D1FFD2D2D2FFD2D2D1FFAFAFBBFF7E7EA4FF54549FFF5252A1FF50509FFF4F4F
      9FFF4E4E9EFF4D4D9DFF4B4B9CFF4B4B9CFF4A4A9BFF4B4B9BFF4C4C9CFF4D4D
      9CFF4D4D9DFF5050A0FF5757A6FF6161B0FF6A6AB8FF7272BCFF7676B3FFE0E0
      EAFFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC6C1
      C1FFCFCCCCFFD0CCCCFFCDC9C9FFC3BABAFFD1C6C3FFE4DBD9FFF0E7E8FFE8E0
      E2FFCECACAFFCFCCCCFFCAC7C7FFD2CDCEFFDCD7D7FFAAA8A6FF3B563EFF2694
      52FF0E9C4DFF089B4BFF069B4AFF2EA761FF98AE9BEBFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8E8E8FFC6C6C6FF9A9A9AFFE9E9
      E9FFE8E8E8FFE7E7E7FFE9E9E9FFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEEEE
      EEFFF0F0EFFFEFEFEFFFB4B4C9FF8383BDFF3131D6FF1919D6FF0D0DD2FF0D0D
      D2FF1313D3FF2020D5FF4141D9FF4343D9FF3A3BD8FF2727D5FF1818D3FF1212
      D2FF2627D5FF2A2BD6FF2A2BD6FF2323D5FF2A2AD8FF3D3DDCFF5757BAFFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC5C1
      C1FFCECBCBFFCFCBCBFFCCC9C9FFCFC8C6FFE4DAD9FFF0E6E8FFEFE7EAFFDED8
      D9FFCBC8C8FFCECBCBFFCAC7C7FFD0CDCCFFDAD6D6FFAAA8A6FF3C5840FF259A
      54FF0DA54FFF08A44DFF05A34CFF30AF66FF95AD98ECFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEEFFCECECEFF9F9F9FFFE9E9
      E9FFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFECECECFFEDEDEDFFEEEEEEFFEFEF
      EFFFF1F1F1FFEFEFEFFFB5B5CAFF8383BDFF2929D3FF1010D2FF0A0BCEFF1F1F
      D2FF5455D9FF8484E0FFB0B1E6FFB2B4E7FFACADE6FF9596E3FF6869DCFF4C4D
      D8FF8C8DE1FF9E9FE4FF9E9FE4FF7F7FDFFF5A5ADCFF3838D9FF5454BAFFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC6C1
      C1FFCFCCCCFFD0CCCCFFCECACAFFDAD3D4FFF0E6E8FFEFE7EAFFE7DEE0FFD6CE
      CFFFCAC6C6FFCFCBCBFFC9C6C6FFCDC9C8FFD5D0CFFFA7A5A2FF3D5D43FF23A2
      54FF0BAF54FF09AF53FF06AF52FF30B56AFF91AB96EDFBFCFBC8FBFCFBC8FBFC
      FBC8FCFDFCC8FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F3FFD3D3D3FFA1A1A1FFE9E9
      E9FFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFECECECFFEAEAEAFFE8E8E8FFE9E9
      E9FFEBEBEAFFE9E9E9FFB0B0C5FF8080BBFF2525D2FF1313D1FF2122D0FF5F60
      DAFF9B9CE2FFC7C9E9FFE1E3ECFFDDDFECFFD2D4EAFFC5C7E8FFA7A9E4FF9596
      E1FFCACCE9FFDBDDEBFFDCDDEBFFAFB1E5FF7475DFFF3737D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC6C1
      C1FFCFCCCCFFD0CCCCFFCECACAFFDFD8DAFFEFE7EAFFE7DDE0FFDDD5D7FFD7D3
      D3FFCCC8C8FFCDC9C8FFA7B1A5FF779B79FF7FA382FF648E69FF357D4CFF23B0
      5AFF0ABA58FF0AB958FF07B957FF2EBD6BFF689E76F6AEC6B3E5AFC5B3E4AFC3
      B3E4BEC9BFDFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4FFD5D5D5FFA3A3A3FFE9E9
      E9FFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFECECECFFE4E4E4FFDDDDDDFFDEDE
      DEFFE0E0DFFFDEDEDEFFA8A8BDFF7C7CB7FF2424D1FF2222D3FF4E4ED7FFB8BA
      E6FFDEE0ECFFEFF1EFFFDEE0ECFFC9CBE9FFB5B6E6FFB7B9E6FFC5C6E8FFD4D6
      EBFFE9EBEDFFEFF1EEFFF2F4EFFFC1C3E8FF7D7FE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE696767FEC4C0
      C0FFCDCACAFFCECACAFFCCC9C9FFDAD4D5FFE4DBDDFFDAD3D4FFDBD7D6FFDBD8
      D7FFD5D1D0FFCECBC9FF87A388FF3CA264FF2FAD64FF25AC5DFF2CB665FF1EBF
      62FF0AC55DFF0BC55EFF0AC25CFF18BE61FF27B360FF27A859FF29A055FF2D9A
      56FF5E8A65F8FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5FFD6D6D6FFA5A5A5FFEAEA
      EAFFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFECECECFFE2E2E2FFD9D9D9FFDADA
      DAFFDCDCDBFFDADADAFFA5A5BAFF7B7BB5FF2424D2FF4646D9FF8788DFFFDDDF
      EBFFEAECEEFFEBEDEEFF9B9DE2FF6263DAFF3939D4FF3A3BD4FF6162DAFF9A9C
      E2FFEAECEEFFEEF0EEFFF0F2EFFFC0C1E8FF7D7EE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE535352FE8A88
      87FF908E8EFF908D8DFF8F8D8DFF939090FF959292FF939090FF969393FF9693
      93FF969493FF92918FFF65896AFF49B073FF45BB79FF3AC074FF27C16BFF19C5
      65FF0BCE62FF0ACF62FF0ACC60FF0AC25CFF08B756FF08AD52FF06A24CFF129C
      4FFF66916DF7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5FFD7D7D7FFA7A7A7FFEAEA
      EAFFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFECECECFFE0E0E0FFD6D6D6FFD7D7
      D7FFD8D8D8FFD6D6D7FFA2A2B8FF7979B3FF3131D4FF7778E0FFC5C7E8FFECEE
      EEFFEFF1EEFFDADBEBFF3738D4FF0505CCFF0000CCFF0000CCFF0808CDFF3233
      D3FFDADCEBFFEFF1EEFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE6B6968FFC9C6
      C5FFD2D0D0FFD2D0D0FFD2D0D0FFD2D0D0FFD2D0D0FFD2D0D0FFD2D0D0FFD2D0
      D0FFD2D0D0FFCCCCCAFF88A68BFF49B073FF4BBC7DFF45C47EFF43CC80FF3ECF
      7EFF37D67EFF28D874FF1FD26EFF14C461FF0FB859FF0EAE54FF0CA24EFF159C
      51FF65906CF7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5FFD8D8D8FFA9A9A9FFEAEA
      EAFFE8E8E8FFE8E8E8FFEAEAEAFFECECECFFECECECFFE0E0E0FFD6D6D6FFD7D7
      D7FFD8D8D8FFD6D6D7FFA2A2B8FF7979B3FF3535D4FF7F80E1FFCCCEE9FFECEE
      EEFFF0F2EFFFD5D7EBFF2F2FD2FF0202CCFF0000CCFF0000CCFF0404CDFF2929
      D2FFD5D6EBFFF0F2EFFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF5F2
      F1FFFCF9F9FFFCF9F9FFFCF9F9FFFCF9F9FFFCF9F9FFFCF9F8FFFCF9F9FFFCF9
      F9FFFCF9F9FFF6F4F2FFA1BDA2FF4EAF76FF50BC80FF48C580FF45CC81FF41D0
      80FF3CD480FF3AD47FFF35D07AFF32C975FF29C16DFF28B467FF22A85DFF25A3
      5DFF5B8B64FAECEDECCFFDFEFDC8FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5F5FFD9D9D9FFAAAAAAFFEAEA
      EAFFE8E8E8FFE8E8E8FFE9E9E9FFECECECFFECECECFFE1E1E1FFD7D7D7FFD7D7
      D7FFD9D9D9FFD8D8D8FFA3A3B8FF7979B4FF3232D3FF797AE0FFC6C8E8FFECEE
      EEFFEFF1EEFFD9DAEBFF3636D3FF0505CCFF0000CCFF0000CCFF0707CDFF3131
      D3FFD9DAEBFFF0F2EFFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF4F1
      F0FFFAF7F7FFF9F6F6FFF9F6F6FFF9F6F6FFF9F6F6FFF9F6F6FFF9F6F6FFF9F6
      F6FFF9F6F6FFF2F1EFFF9CB599FF3F9C62FF4BA970FF48AF72FF4CB979FF49CA
      81FF41D080FF3ECF7FFF37CA78FF40C77BFF37B36AFF32A45FFF309E5AFF309C
      5AFF54845DFDDDDDDCEAE7E7E7D1FDFDFDC8FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFD9D9D9FFACACACFFE8E8
      E8FFE6E6E6FFE7E7E7FFE9E9E9FFEBEBEBFFECECECFFE1E1E1FFD8D8D8FFD8D8
      D8FFDADAD9FFD8D8D8FFA4A4B9FF7A7AB4FF2C2CD2FF696ADEFFB5B7E6FFEAEC
      EDFFEFF1EEFFE0E1ECFF5353D7FF1A1BCFFF0707CDFF0808CDFF1C1CD0FF5050
      D7FFE0E2ECFFEFF1EEFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF5F1
      F0FFFCF9F9FFFCF9F9FFFCF9F9FFFBF8F9FFFCF9F9FFFBF8F8FFFCF9F9FFFBF8
      F9FFFCF9F9FFFAF7F7FFDBE0D9FFB2C5B1FFB3C8B3FFA5BAA4FF41794EFF48B7
      77FF45C67EFF41C67DFF38C476FF4FC282FF48915EFF91B7A2FF92B8A2FF9AB8
      9FFFB3C1ACFFEDEBE2FDDADAD9ECEDEDEDD0FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFDADADAFFAEAEAEFFE1E1
      E1FFD9D9D9FFE3E3E3FFE9E9E9FFEBEBEBFFEBEBEBFFE0E0E0FFD6D6D6FFD7D7
      D7FFD9D9D8FFD7D7D7FFA3A3B8FF7A7AB4FF2424D2FF2B2CD5FF5C5CD9FFC0C1
      E7FFE1E2ECFFEEF0EEFFCBCDE9FFADAFE5FF9395E1FF9597E1FFA9AAE4FFC3C4
      E8FFE8EAEDFFEEF0EEFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF4F0
      EFFFF8F5F5FFF6F3F3FFF6F3F3FFF7F4F4FFF7F4F4FFF7F4F4FFF6F3F3FFF6F3
      F4FFF6F3F3FFF6F3F3FFF6F3F3FFF3F1F1FFF6F3F4FFE7E5E3FF48644AFF47B0
      73FF47C37EFF42C17BFF3ABD74FF51C182FF60956FFFD0E1E2FFD8E3DFFFE5E5
      D7FFE9E6D7FFF1EDDEFFF1EEE9FED8D8D8E6F6F6F6CCFFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFDBDBDBFFAFAFAFFFE3E3
      E3FFDCDCDCFFE3E3E3FFE8E8E8FFEBEBEBFFEBEBEBFFE4E4E4FFDEDEDEFFDEDE
      DEFFE0E0E0FFDFDFDFFFA9A9BEFF7D7DB7FF2424D2FF1515D2FF2B2BD2FF7879
      DDFFAFB0E5FFD3D5EBFFE3E5EDFFDDDFECFFD1D3EAFFC8CAE9FFB7B8E6FFAEAF
      E5FFDFE1ECFFEFF1EFFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF4F1
      F0FFFBF8F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF6
      F6FFFAF6F6FFFAF6F6FFFAF6F6FFFAF6F6FFFAF7F8FFE8E5E6FF465F48FF4FAA
      75FF4BBB7DFF45B778FF3FB574FF50BD80FF61966FFFD4E3E3FFE2E4DBFFEAE6
      D7FFEFEBDCFFF3ECE8FFF2EAEFFFEBE8EAFADFDEDFDAFEFEFEC8FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFDBDBDBFFB0B0B0FFE9E9
      E9FFE7E7E7FFE6E6E6FFE8E8E8FFEBEBEBFFEAEAEAFFEBEBEBFFEBEBEBFFECEC
      ECFFEEEEEDFFECECEDFFB2B2C8FF8181BCFF2525D2FF0C0CD0FF0808CCFF1F1F
      D0FF6161DAFF9B9CE2FFCED0EAFFD0D2EAFFC9CBE9FFAFB0E5FF7979DDFF5E5F
      D9FFD3D5EBFFF0F2EFFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF5F1
      F0FFFBF8F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF7F7FFFAF6
      F6FFFAF6F6FFFAF6F6FFF9F6F6FFFAF6F6FFFAF7F8FFE9E7E6FF455D46FF55A6
      76FF53BB81FF4DB57BFF4BB37AFF5AB984FF63956EFFDEE4DCFFE9E5D6FFEBE7
      DBFFEFE9E5FFF2EAF0FFEFE8EFFFF1ECF1FFDDDCDDEEF3F3F3CDFFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFDCDCDCFFB1B1B1FFE9E9
      E9FFE6E6E6FFE6E6E6FFE8E8E8FFEAEAEAFFEAEAEAFFE5E5E5FFE1E1E1FFE1E1
      E1FFE3E3E2FFE1E1E1FFAAAABFFF7D7DB7FF2525D2FF0C0CD0FF0202CCFF0808
      CDFF1B1BCFFF3031D3FF5253D8FF5455D8FF4C4DD7FF3839D4FF2425D1FF3434
      D3FFD3D4EBFFF0F2EFFFF0F2EFFFC0C1E8FF7D7DE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4A4A4AFD404040FE7E7C7BFFF4F1
      EFFFF8F5F5FFF7F4F4FFF7F4F4FFF7F4F4FFF7F4F4FFF6F3F3FFF7F3F3FFF7F4
      F4FFF7F4F4FFF7F4F4FFF7F4F4FFF7F4F4FFF9F6F6FFE8E5E5FF445544FF3372
      43FF397E4CFF4C8B5BFF4E8D5EFF4F8E5FFF809F7CFFE5E3D6FFEBE6DBFFEBE5
      E6FFF0E9F0FFF1EAF1FFEFE9EFFFEBE5EBFFEDEDEDFADFDFDFD6FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F6FFDDDDDDFFB4B4B4FFE9E9
      E9FFE6E6E6FFE6E6E6FFE8E8E8FFEAEAEAFFE9E9E9FFDFDFDFFFD6D6D6FFD6D6
      D6FFD7D7D7FFD5D5D6FFA1A1B7FF7979B4FF2525D2FF0C0CD0FF0000CCFF0000
      CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0202CCFF2626
      D2FFD2D4EBFFF0F2EFFFF0F2EFFFC0C1E8FF7D7EE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD4C4C4CFD4A4949FE7E7C7BFFF5F2
      F1FFFDFAFAFFFDFAFAFFFDFAFAFFFDFAFAFFFDFAFAFFFCF9F9FFFDFAFAFFFCFA
      FAFFFDFAFAFFFDFAFAFFFCF9F9FFFDFAFAFFFCF9F9FFE9E7E6FF4B4D49FF3A3C
      3AFF484A48FFC3C4C4FFDFE2E1FFD6D8D7FFDFDBD2FFEAE5DCFFEAE3E6FFEDE7
      EDFFF3EEF2FFF4EFF3FFF2F0F2FFEFEFEFFFECECECFDD7D7D7E2FCFCFCC8FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFDEDEDEFFB6B6B6FFE9E9
      E9FFE5E5E5FFE5E5E5FFE8E8E8FFEAEAEAFFE9E9E9FFDEDEDEFFD4D4D4FFD4D4
      D4FFD6D6D5FFD4D4D5FFA0A0B6FF7878B2FF2525D2FF0C0CD0FF0000CCFF0000
      CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0202CCFF2626
      D2FFD3D5EBFFF1F3EFFFF1F3EFFFC0C2E8FF7D7EE1FF3838D8FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD5F5D5DFD969394FF78736FFFDFD4
      CBFFE4D8D0FFE4D8D0FFE4D8D0FFE4D8D0FFE4D8D0FFE3D7D0FFE4D8D0FFE3D8
      D0FFE4D8D0FFE4D8D0FFE3D7D0FFE4D8D0FFE3D7D0FFD4C9C1FF4B4C49FF3A3A
      3AFF4A4A4AFFC5C6C5FFE3E6E4FFE7E6E3FFE2DDDAFFE6E1E5FFEAE5EAFFF0EC
      F0FFF6F6F6FFF6F7F6FFF5F5F5FFF4F4F4FFF0F0F0FFEBEBEBECF8F8F8CAFFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFDEDEDEFFB6B6B6FFE9E9
      E9FFE5E5E5FFE5E5E5FFE7E7E7FFE9E9E9FFE9E9E9FFDDDDDDFFD4D4D4FFD4D4
      D4FFD5D5D5FFD3D3D4FFA0A0B5FF7878B2FF2727D2FF0E0ED1FF0101CDFF0202
      CDFF0202CDFF0202CDFF0202CDFF0202CDFF0202CDFF0202CDFF0303CDFF1B1C
      D1FF9192E2FFA5A6E5FFA5A6E5FF8384DFFF5B5CDCFF3737D9FF5454B9FFC6C6
      D7FFFFFFFFFFFFFFFFFFFEFEFEC7C6C6C6DD5D5C5BFD8F8C8DFF64574AFFA77E
      55FFA17241FFA17241FFA17241FFA17241FFA17241FFA17242FFA17241FFA172
      41FFA17241FFA17241FFA17242FFA17241FFA17242FF9C744DFF4C4A48FF3A3A
      3BFF4E4E4EFED0D0D0F8E9E9E8FFE7E6E5FFE6E6E6FFE0DEE0FFE9E8E9FFEEEF
      EEFFF2F2F2FFF0F0F0FFF0F0F0FFEEEFEFFFEEEFEFFFEFEFEFF1F2F2F2CCFFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFDEDEDEFFB7B7B7FFE9E9
      E9FFE5E5E5FFE5E5E5FFE7E7E7FFE9E9E9FFE8E8E8FFDDDDDDFFD4D4D4FFD4D4
      D4FFD6D6D5FFD4D4D4FFA0A0B6FF7878B2FF3636D3FF2121D3FF1717D0FF1717
      D0FF1717D0FF1717D0FF1717D0FF1717D0FF1717D0FF1717D0FF1818D0FF2323
      D1FF5959D9FF6263DAFF6262DAFF5353D8FF4747D8FF4343D9FF5656B8FFC7C7
      D8FFFFFFFFFFFFFFFFFFFFFFFFC7D2D2D2D9656565F95A5959FB655B54FC926C
      4BFD906746FC906746FC906746FC8E6440FD8D613BFF8D623BFF8D623BFF8E62
      3CFF8E623CFF8E623CFF8E623CFF8E623CFF8E623CFF88684BFF525251FF5252
      51FD656665F9EAE9E9DAEFEFEEF3E6E5E6FFE5E5E5FFDDDDDDFFE6E6E6FFEDEC
      ECFFECECECFFEAEAEAFFE9E9E9FFE7E7E7FFE8E8E8FFE8E8E8F4EAEAEAD0FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FFE0E0E0FFBABABAFFE3E3
      E3FFDCDCDCFFE3E3E3FFE6E6E6FFE8E8E8FFE7E7E7FFDDDDDDFFD5D5D5FFD4D4
      D4FFD5D5D5FFD5D5D5FFBABAC5FF9191B5FF6767B1FF6464B2FF6262B1FF6262
      B1FF6262B1FF6262B1FF6262B1FF6262B1FF6262B1FF6363B2FF6565B3FF6666
      B5FF6666B5FF6161B1FF5656A5FF6060AFFF6A6AB7FF7272BBFF7B7BB6FFE4E4
      EDFFFFFFFFFFFFFFFFFFFFFFFFC7F9F9F9C9E3E3E3D2DDDDDCD5DDDDDCD5DDDC
      DBD5DDDBDAD6DDDBDAD6DDDBDAD5C6C4C2E5BCBAB8FDBDBAB8FFBDBAB8FFBFBC
      BAFFC0BEBCFFC0BEBDFFC1BEBDFFBDBBB8FFBEBCBAFFC0BDBCFFC2C1C0FFD5D5
      D4E9E5E4E4D5FBFBFBCDF0F0EFEDE6E5E6FFE5E5E5FFDEDEDEFFE4E3E4FFE8E8
      E8FFE7E7E7FFE5E5E5FFE4E4E4FFE2E2E2FFE3E3E3FFE5E5E5F4EBEBEBD0FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE1E1E1FFBBBBBBFFE1E1
      E1FFD8D8D8FFE1E1E1FFE6E6E6FFE7E7E7FFE7E7E7FFDCDCDCFFD3D3D3FFD3D3
      D3FFD4D4D4FFD4D4D4FFCBCBCFFFB1B1C1FF8B8BAEFF8A8AADFF8B8BAEFF8B8B
      AEFF8B8BAEFF8B8BAEFF8B8BAEFF8B8BAEFF8B8BAEFF8C8CAFFF9191B4FF9696
      B8FF9898BBFF8D8DB0FF707092FF8A8AACFF9B9BBDFFA4A4C6FFB3B3CFFFF7F7
      FAFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7E1E1E1DBE3E3E3FBE5E5E5FFE6E7E7FFE8E8
      E8FFE9EAEAFFECECECFFECECECFFE4E4E4FFE1E1E1FFE7E7E7FFE8E8E8FFF1F0
      EFF6F5F5F4E3F4F3F3E6E8E8E8FBE2E2E2FFE2E2E2FFD8D8D8FFE1E1E1FFE4E4
      E4FFE2E2E2FFE0E0E0FFE0E0E0FFDDDDDDFFDFDFDFFFECECECF1F2F2F2CCFFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE1E1E1FFBDBDBDFFE3E3
      E3FFDADADAFFE0E0E0FFE4E4E4FFE7E7E7FFE6E6E6FFDBDBDBFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD1D1D1FFD1D1D2FFD1D1D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD4D4D4FFDEDEDEFFE7E7
      E8FFEBEBECFFD9D9D9FFA7A7A7FFD3D3D3FFF1F1F1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7E3E3E3D7E9E8E8FAEAEBEBFFEDECECFFEDED
      EDFFEDEDEDFFF0F0F0FFEFF0F0FFE8E8E8FFDDE0E0FFE7E8E8FFE6E6E5FFE8E6
      E5FFE6E6E6FEE6E5E6FEE3E4E4FFE3E3E3FFDDDDDDFFD9D9D9FFDFDFDFFFE0E0
      E0FFDEDEDEFFDCDCDCFFDBDBDBFFD9D9D9FFDDDEDEFFECEDEDEFF8F8F8CAFFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE1E1E1FFBDBDBDFFE6E6
      E6FFE0E0E0FFE2E2E2FFE4E4E4FFE7E7E7FFE5E5E5FFDBDBDBFFD1D1D1FFD1D1
      D1FFD1D1D1FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD6D6D6FFDFDFDFFFE8E8
      E8FFECECECFFDADADAFFA9A9A9FFD4D4D4FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7EFEFEFCEECECECF5F0F0F0FFF3F3F3FFF5F5
      F5FFF6F6F6FFF5F5F5FFF0F1F1FFE1EAE9FFDAE7E6FFD9DFDBFFE6E5E1FFE6E4
      E3FFE4E4E4FFE4E4E4FFE5E4E5FFE0E0E0FFDADADAFFE1E1E1FFE3E3E3FFE0E0
      E0FFDCDCDCFFD8D8D8FFD7D7D7FFD6D5D5FFDADADAFDDFDFDFE4FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE3E3E3FFC0C0C0FFE6E6
      E6FFE1E1E1FFE1E1E1FFE3E3E3FFE6E6E6FFE5E5E5FFDADADAFFD2D2D2FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5
      D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFDFDFDFFFE7E7
      E7FFEBEBEBFFDADADAFFA9A9A9FFD4D4D4FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FDFDFDC8E3E1E1EAEEEEEEFEF1F1F1FFF5F5
      F5FFF9F9F9FFF9FAFAFFEBF4F5FFDCEEEEFFDAE9E7FFE1E2D8FFDED8D4FFDEDD
      DDFFE1E1E1FFE1E1E1FFDFDFDFFFDDDDDDFFE3E3E3FFE7E6E7FFE7E7E7FFE3E3
      E3FFDEDEDEFFDBDBDBFFD7D7D7FFD8D6D5FFE1E1E1FBDEDEDED7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE3E3E3FFC1C1C1FFE6E6
      E6FFE1E1E1FFE1E1E1FFE3E3E3FFE5E5E5FFE4E4E4FFDADADAFFD1D1D1FFD2D2
      D2FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD6D6D6FFDEDEDEFFE7E7
      E7FFEBEBEBFFD9D9D9FFA9A9A9FFD4D4D4FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7E4E4E4D8EFEFEFFBEFEFEFFFF3F3
      F3FFF5F6F6FFEFF6F6FFE0F0F1FFDAEBEBFFDDE8E4FFE4E1D6FFE0DBD9FFDBD7
      DAFFDCDCDCFFDEDEDEFFE2E2E2FFE6E6E6FFE8E8E8FFECECECFFEBEBEBFFE6E6
      E6FFE2E2E2FFDEDEDEFFDBDBDBFFDDDDDDFFDDDDDDF0F6F6F6CBFFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE3E3E3FFC2C2C2FFE6E6
      E6FFE0E0E0FFE0E0E0FFE2E2E2FFE4E4E4FFE4E4E4FFD9D9D9FFD0D0D0FFD0D0
      D0FFD1D1D1FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD3D3D3FFD4D4D4FFDDDDDDFFE6E6
      E6FFEAEAEAFFD9D9D9FFA9A9A9FFD4D4D4FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFBFBC9DCDCDCEDF1F1F1FFEEF0
      F0FFEBF4F5FFE3F1F2FFDAECEDFFDDE9E8FFE2E4DAFFE4E1D6FFE1DADDFFE0DA
      E0FFE5E4E5FFE9E9E9FFEAEBEBFFECECECFFEFEFEFFFF1F1F1FFEFEEEEFFE9E9
      E9FFE5E5E5FFE0E0E0FFDDDDDDFFE7E6E6FDE2E2E2D9FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE4E4E4FFC3C3C3FFE6E6
      E6FFE0E0E0FFE0E0E0FFE2E2E2FFE4E4E4FFE3E3E3FFD8D8D8FFCFCFCFFFCFCF
      CFFFCFCFCFFFD0D0D0FFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD3D3D3FFDCDCDCFFE5E5
      E5FFEAEAEAFFD9D9D9FFA9A9A9FFD4D4D4FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F1F1F1D2EAEBEBFAE7F1
      F1FFE2F1F2FFDDEFEFFFDAEAEAFFDFE6DFFFE3E2D6FFE1DDD6FFDDD8DBFFDFD9
      DFFFE6E6E7FFECECECFFF1F1F1FFF3F3F3FFF6F6F6FFF6F6F6FFF1F1F1FFECED
      EDFFE7E8E8FFE4E4E4FFE7E7E7FFDAD9DAEAFBFBFBCAFFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE4E4E4FFC3C3C3FFE6E6
      E6FFDFDFDFFFDFDFDFFFE2E2E2FFE4E4E4FFE2E2E2FFD7D7D7FFCECECEFFCECE
      CEFFCECECEFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD0D0
      D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD2D2D2FFDBDBDBFFE4E4
      E4FFE9E9E9FFD9D9D9FFAAAAAAFFD5D5D5FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FDFDFDC8ECECEBDCE8EF
      EEFBE0F0F1FFDAECECFFDCE7E4FFE3E4D9FFE2DFD4FFDED9DAFFDCD5DCFFE0DA
      DFFFE5E3E5FFEAEAEAFFEFF0F0FFF4F4F4FFFAFAFAFFF9FAFAFFF7F7F7FFF1F1
      F1FFECECECFFEAEAEAFFE2E1E1F1F5F5F5CFFFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F8F8FFE5E5E5FFC6C6C6FFE4E4
      E4FFDEDEDEFFDEDEDEFFE0E0E0FFE2E2E2FFE1E1E1FFDFDFDFFFDEDEDEFFDEDE
      DEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE3E3E3FFE4E4
      E4FFE8E8E8FFD8D8D8FFAAAAAAFFD5D5D5FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FAFAFACAE9EA
      EAE1E9EFEFFCE1EAE9FFDFE6DFFFE3E1D5FFE2DED4FFDDD7DBFFDDD6DDFFE0DB
      E0FFE3E2E3FFE7E8E8FFECEDEDFFF2F2F2FFF7F7F7FFF7F7F7FFF5F5F5FFF2F2
      F2FFF3F3F3FFE4E4E4F3F1F1F1D4FEFEFEC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FFE6E6E6FFC7C7C7FFE4E4
      E4FFDDDDDDFFDEDEDEFFE0E0E0FFE2E2E2FFE0E0E0FFE0E0E0FFE1E1E1FFE2E2
      E2FFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE7E7E7FFD8D8D8FFAAAAAAFFD5D5D5FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFB
      FBC9ECECECDBE5E5E5F8E9E9E4FFE3E0D4FFDED9D6FFDCD5DCFFDDD6DDFFDFD9
      DFFFE0E0E1FFE5E5E5FFE9EAEAFFF1F1F1FFF4F4F4FFF3F3F3FFF2F2F2FFF4F4
      F4FEE2E2E2EEF5F5F5CFFEFEFEC8FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FFE5E5E5FFC5C5C5FFE9E9
      E9FFE4E4E4FFE5E5E5FFE7E7E7FFE8E8E8FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7
      E7FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7
      E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FFE8E8E8FFD7D7D7FFA8A8A8FFD4D4D4FFF2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FEFEFEC8F5F4F4D1E4E3E3EAE9E7E5FAE0DCDCFEDFD9DEFFDED9DFFFDFDD
      DFFFE0E0E0FFE3E3E3FFE9E9E9FFEEEEEEFFF0F0F0FFEEEEEEFDECEBECF6E5E5
      E5E0F9F9F9CBFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFBFFE8E8E8FFC8C8C8FFDFDF
      DFFFDEDEDEFFDFDFDFFFDFDFDFFFE0E0E0FFDFDFDFFFDEDEDEFFDDDDDDFFDDDD
      DDFFDDDDDDFFDCDCDCFFDCDCDCFFDBDBDBFFDADADAFFDADADAFFD9D9D9FFD8D8
      D8FFD8D8D8FFD7D7D7FFD6D6D6FFD6D6D6FFD5D5D5FFD5D5D5FFD4D4D4FFD4D4
      D4FFD2D2D2FFC7C7C7FFABABABFFD9D9D9FFF6F6F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FCFCFCC8E7E7E7D7EBEBEBE7EBECECF2E2E2E2F8DEDD
      DEFADDDDDDFBDEDEDEFBE8E8E8F9EEEEEEF6F3F2F2EEE4E5E5E1F2F3F3CFFFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFAFAFAFFF2F2F2FFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFEAEAEAFFE9E9E9FFE8E8E8FFE8E8E8FFE7E7E7FFE7E7
      E7FFE6E6E6FFE5E5E5FFE5E5E5FFE4E4E4FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2
      E2FFE1E1E1FFE3E3E3FFEAEAEAFFF7F7F7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F4F5F5CDEFEFEFD4ECEC
      ECD7EDEDEDD9EBEBEBD8F1F1F1D5F2F2F2D1FCFBFBC9FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFEFEFEFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF9F9F9FFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
      F6FFF1EFEAFFEEEBE3FFEBE8DDFFECE8DDFFEEECE4FFF2F0EBFFF7F7F6FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF1F0EBFFE3DDCCFFD7CDADFFCDC0
      91FFCDBF8FFFD2C69EFFD6CBA9FFD6CBA8FFD2C59CFFCDBF8EFFCEC193FFD8CE
      B0FFE4DFCEFFF3F1EEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F6FFF8F7F6FFF8F7F6FFF8F7
      F6FFF8F7F6FFF8F7F6FFF4F3F2FFF4F3F2FFF4F3F2FFF4F3F2FFF3F3F2FFF4F3
      F2FFF6F6F5FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FFF4F3
      F2FFF4F3F2FFF4F3F2FFF4F3F2FFF3F3F2FFF4F4F3FFF7F6F5FFF8F7F6FFF8F7
      F6FFF8F7F6FFF8F7F6FFF8F7F6FFF4F3F2FFF4F3F2FFF4F3F2FFF4F3F2FFF4F3
      F2FFF3F2F2FFF5F4F3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFEDEAE2FFD7CDB0FFCBBC8EFFD9CFB4FFE6E1D3FFF0EE
      E9FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F5FFEFEDE7FFE5DF
      D0FFD7CDAFFFCBBC8DFFD9D0B5FFEEECE6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F0FFF2F1F0FFF2F1F0FFF2F1
      F0FFF2F1F0FFF2F1F0FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF8F7
      F6FFF4F3F3FFF1F1F0FFF2F1F0FFF2F1F0FFF2F1F0FFF2F1F0FFF2F1F0FFF9F8
      F8FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF7F7F6FFF3F3F2FFF2F1F0FFF2F1
      F0FFF2F1F0FFF2F1F0FFF2F1F0FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFF9F8
      F8FFF9F8F7FFF7F6F5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF2F1EEFFD7CEB5FFC9BC91FFE0D9C7FFF3F2EFFFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF2F0ECFFDDD6C2FFC8BA8EFFDAD2BBFFF4F3F1FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEEFFF1F0EFFFE2E1E0FF8F8F
      8EFF706F6FFF747373FF777676FF777676FF767675FF777776FF787777FF7878
      78FF777676FF757575FF767575FF777676FF777676FF777676FF787777FF7B7A
      7AFF7B7A7AFF7B7A7AFF7C7B7BFF7C7B7BFF7C7C7BFF7A7A7AFF797979FF7B7A
      7AFF7B7A7AFF7B7A7AFF7B7A7AFF807F7FFF807F7FFF7D7C7CFF9B9B9AFFECEB
      EAFFFBFAF9FFF8F7F6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE9E6
      DDFFC8BA92FFD7CFB7FFF3F2EFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF1F0ECFFD4CAAFFFCABD97FFECE9E2FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7F8F7F7D5BDB7B6FF8E807EFF5C3A30FF502003FF512000FF5120
      00FF512000FF512000FF502004FF61423AFFABA2A1FFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF737373FF3A3A
      3AFF3C3C3CFF3D3D3DFF3E3E3EFF3E3F3EFF3F403FFF404040FF414141FF4242
      42FF424242FF434343FF434343FF444444FF444444FF444444FF454545FF4646
      46FF464646FF464646FF474747FF474747FF484848FF484848FF494949FF4949
      49FF4A4A4AFF4A4A4AFF4B4B4BFF4B4B4BFF4C4C4CFF4B4B4BFF4A4A4AFF8180
      80FFFBFAF9FFF8F7F6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE2DDD0FFC3B6
      8CFFE5E1D6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE1DBCDFFC3B58BFFE6E2
      D7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7E0DE
      DEFFA09594FF572E21FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF383838FF3939
      39FF767676FF8F8F8EFF90918FFF929291FF929291FF929291FF929291FF9292
      92FF90908FFF8E8E8EFF908F8FFF908F8FFF908F8FFF908F8FFF919090FF9595
      94FF959594FF959594FF959594FF969695FF959594FF939292FF919191FF9392
      92FF939292FF939292FF939292FF979796FF9A9A99FF838282FF484848FF4848
      48FFFBFAF9FFF8F7F6FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE1DCD0FFC2B48CFFECE9
      E2FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE8E4DBFFC1B2
      89FFE5E1D7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FDFDFDCEEFEFEFFFB4ADACFF5831
      24FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FDFDFDCEFFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF393939FF3939
      39FFC7C6C6FFF1F0EFFFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFF9F8
      F8FFF4F3F2FFF0EFEFFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFF8F8F7FFF3F2F1FFF0F0EFFFF1F0
      EFFFF1F0EFFFF1F0EFFFF1F0EFFFFBFAF9FFFBFAF9FFD2D1D0FF494949FF4A4A
      4AFFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFECECECFFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE7E3DBFFBEB088FFEBE9E3FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF1F5F7FFF3F6F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE7E3
      DBFFBEAF87FFEBE8E2FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FEFEFECCE6E5E5FF887976FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF3A3A3AFF3939
      39FFBCBBBBFFEDECEBFFF6F5F4FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FFF6F5
      F5FFF1F0EFFFEDECECFFEEEDECFFEEEDECFFEEEDECFFEEEDECFFEEEDECFFF7F6
      F5FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFF7F7F6FFEEEDECFFEEEEEDFFEEED
      ECFFEEEDECFFEEEDECFFEFEEEDFFF6F5F4FFF8F7F6FFC7C6C6FF484848FF4A4A
      4AFFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
      F6FFF2F2F2FFF7F7F7FFF7F7F7FFA4A4A4FFE7E7E7FFF7F7F7FF949494FF8A8A
      8BFFDDDDDDFFF7F7F7FFC0C0C0FFF3F3F3FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF1EFEDFFBDAF8AFFE4E0D6FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFDEEEF9FF98D8FCFF42C8FEFF00C3FFFF00C3FFFF4CC9
      FEFF90D6FCFFC8E6FAFFF1F5F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFDDD8CAFFC0B492FFF3F3F1FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7EEEDEDE4725D57FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFEFEFECBFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF393A39FF3A3A
      3AFFC5C3C4FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF2F1
      F0FFF8F7F6FFFBFAF9FFFBFAF9FFFBFAF9FFFAF9F8FFF9F8F7FFFBFAF9FFF1F0
      EFFFE0DFDEFFC3C2C1FFB9B8B7FFCBCBCAFFEBEAEAFFF8F8F7FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC2C1C0FF494949FF4949
      49FFF0EFEFFFF4F3F2FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4F4
      F4FF4A4A4CFFB0B0B1FFF4F4F4FF0D1117FF13161BFFBEBEBEFF949494FF0E12
      18FF0E1218FFCCCCCCFF0C1016FF575859FFC5C5C5FFF5F5F5FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6
      F6FFF7F7F7FFF7F7F7FFF7F7F7FFCBC2ABFFD1C9B6FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFB1E0FBFF04C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF95D7FCFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFCAC0A8FFD2CAB7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7E6E5E5FF735D58FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF393A39FF393B
      39FFC4C4C3FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF1F0EFFFF0EFEEFFF0EF
      EEFFF7F6F5FFFAF9F8FFF9F8F7FFF9F8F7FFFBFAF9FFFBFAF9FFEAE9E9FF8786
      86FF535353FF434343FF444444FF484848FF626262FFABABAAFFF8F7F6FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC2C1C0FF4A4A4AFF4A4A
      4AFFF0EFEFFFF4F3F2FFF7F7F7FFF7F7F7FFF7F7F7FFC4C4C4FFF5F5F5FFF5F5
      F5FF4D4E4FFF0E1218FFE7E7E7FF363739FF0E1218FFA2A2A3FFA6A6A6FF0E12
      18FF0E1218FFC5C5C6FF0C1016FF0E1218FF0E1218FFB7B7B7FF858686FFDCDC
      DCFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE1E1E1FFA4A4A5FF9E9F
      9FFFF7F7F7FFF7F7F7FFE7E4DDFFB8AA87FFF3F2F0FFF7F7F7FFF7F6F3FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F5FFF5DE
      BEFFF7F5F1FFB2DFFBFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF3FC7FEFFF5F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFEFEDEAFFB5A680FFECEAE5FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7EFEFEFFF897B78FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF3A3B3AFF3A3B
      3AFFC5C4C4FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF2F1
      F0FFF8F7F6FFFBFAF9FFFBFAF9FFFBFAF9FFE2E2E1FFBEBEBDFFCECDCCFF4545
      45FF434343FF434343FF444444FF454545FF474747FF4B4B4BFFE3E3E2FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC3C2C1FF4A4A4AFF4B4B
      4BFFF0EFEFFFF4F3F2FFEBEBEBFFF7F7F7FFF7F7F7FF282A2DFFAAAAAAFFF7F7
      F7FFF2F2F2FFC0C1C1FFECECECFFEEEEEEFFAFAFB0FFADADADFFE6DCD5FFD3D2
      D1FF797A7AFFC5C5C6FF696A6BFF0E1218FF0E1218FFB7B7B7FF0E1218FF0E12
      18FF707071FFB7B8B8FFDEDEDEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF1F1F1FFD7D7D7FFB3B3B3FF6D6D6EFF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFC3B8A0FFD9D3C7FFF7F7F7FFF7F7F7FFF6F0E7FFF2C2
      66FFF4D9B3FFF5E8D5FFF6F1E8FFF7F4EDFFF6EDE1FFF4DEBDFFF2C166FFF1B4
      00FFF5E6D1FFDBEDF9FF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF00C3FFFFD8ECF9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFD1C9B9FFCAC2AEFFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FBFBFBD6B4ADACFF501F00FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF501F00FF532411FF6548
      3FFF63453CFF52220DFF502000FF512000FF8C7E7BFFFDFDFDCFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC8FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FDFDFDCDFCFCFCD3FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF3B3B3BFF3C3C
      3CFFC5C5C4FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF1F0EFFFDBDAD9FFC5C5
      C4FFE7E6E5FFE8E7E7FFD1D0CFFF9A9A99FF545453FF5C5C5CFFD9D8D7FF5151
      51FF454545FF454545FF444444FF464646FF474747FF4A4A4AFFD9D8D7FFFBFA
      F9FFFAF9F8FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC2C1C0FF4B4B4BFF4B4B
      4BFFF0EFEFFFF4F3F2FFACACACFFACADADFFF7F7F7FFDFDFDFFFC3C3C3FFF7F6
      F6FFE8E0DBFFF7F7F7FFF7F7F7FFB68A6CFFDDCFC8FFF6F5F5FFC6A892FFAD77
      4AFFD7C6BCFFEEEDECFF959696FFB1B1B1FF717172FFB7B7B7FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF15181DFF707172FF79797AFF79797AFF7879
      7AFF575859FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFEBE9E5FFB0A17EFFF3F2F1FFF7F7F7FFF7F7F7FFF7F7F7FFF2C1
      64FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF4D3A2FFF6F7F7FF46C8FEFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF00C3FFFFAFDEFBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFEEEDE9FFAE9E79FFF0EFEDFFF7F7F7FFFFFFFFC7FFFF
      FFC7E0DEDDFF583124FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF5B372DFFA59B9AFFD4D0CFFFEBEAE9FFF0EF
      EFFFEFEFEFFFE9E8E8FFD0CCCCFF9E9392FF8E817FFFFDFDFDCFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF3C3C3CFF3C3C
      3CFFC6C4C5FFFBFAF9FFEFEEEDFFF1F0EFFFEFEEEDFFF1F0EFFFC1C0BFFF4141
      41FF4E4D4DFF4E4E4EFF444444FF444444FF444444FF575656FFDCDBDAFF5D5D
      5DFF474747FF474747FF444444FF464646FF494949FF494949FFCAC9C9FFFBFA
      F9FFFAF9F8FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC3C2C1FF4B4B4BFF4B4B
      4BFFF0EFEFFFF4F3F2FFF7F7F7FFE4E4E4FFF7F7F7FFF7F7F7FFF7F7F7FFF6F5
      F4FFA56200FFBD977FFFF3F1EFFFA56200FFA56200FFCCB3A4FFC6A892FFA562
      00FFA56200FFDBCCC5FF0C1016FF0E1218FF9B9B9BFFD5D2D0FF3A2416FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFD2CCBFFFC9C0AFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4D6
      AAFFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF2BE55FFF7F7F7FF99D8FCFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF00C3FFFF6BCEFDFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFC0B6A0FFD9D4C9FFF7F7F7FFFFFFFFC7FDFD
      FDCEA09694FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF511F00FF918482FFE3E2E1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFD3D2E7FF8D8DF2FF8D8DF2FF8D8D
      F2FF8D8DF2FF8D8DF2FF8D8DF2FF8D8DF2FF8D8DF2FF8D8DF2FF8D8DF2FF8D8D
      F2FF8D8DF2FF8D8DF2FF9090F2FFFFFFFFC7FBFAF9FFFBFAF9FF3C3C3CFF3C3C
      3CFFC5C5C4FFFBFAF9FFEEEDEDFFF0EFEFFFEFEEEEFFF0EFEFFFD3D3D2FF4747
      47FF414141FF414141FF414141FF454545FF444444FF4C4C4CFFDBDAD9FF6868
      68FF4A4A4AFF484848FF464646FF464646FF494949FF4C4C4CFFB5B5B4FFFBFA
      F9FFF9F8F7FFFBFAF9FFFBFAF9FFEEEDEDFFF0EFEFFFC2C1C1FF4B4B4BFF4C4C
      4CFFF0EFEEFFF3F3F2FFF7F7F7FFF7F7F7FFF7F7F7FFC9AC98FFEEEAE7FFF7F6
      F6FFC19F88FFA56200FFEFEAE6FFBA9277FFA56200FFCAB1A1FFDAC9BFFFAA6E
      36FFA56200FFDBCCC5FF0C1016FF0E1218FF0E1218FFB8B0A9FFA56200FF8C53
      09FF673E11FF372316FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0C4B6AFF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFB8AC94FFE0DCD5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5E7
      D4FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF1B400FFF6EEE1FFCAE7FAFF00C3FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF00C3FFFF02C3FFFFE9F2F8FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFD7D2C8FFC1B8A4FFF7F7F7FFFFFFFFC7FBFB
      FBCE572F22FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FFA59D9BFFF0F0EFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD5D5F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF1919F2FFC3C3F2FFFFFFFFC7F7F6F5FFF7F6F5FF3C3C3CFF3D3D
      3DFFC3C3C2FFF7F6F5FFF3F2F1FFF5F4F3FFF4F3F2FFF4F4F3FFE5E4E4FF5151
      51FF434343FF444444FF424242FF434343FF454545FF454545FFC8C7C7FF8281
      81FF7B7B7AFFB5B4B3FFC8C8C7FFC7C6C6FFB3B2B2FF7B7B7BFFA7A6A6FFF7F6
      F5FFF5F4F3FFF7F6F5FFF7F6F5FFF3F2F1FFF5F4F3FFC6C5C4FF4B4B4BFF4C4C
      4CFFF4F3F3FFF5F4F4FFE5DCD7FFF2EFEDFFF7F7F7FFB27F55FFCBB1A3FFF7F7
      F7FFF7F7F7FFEAE4E0FFF4F2F0FFE6DED9FFE6DDD7FFDBCCC3FFD4BFB1FFD9C9
      BFFFCFB8ABFFDED1CAFFA0A0A0FF1E2024FF0E1218FFB8B0A9FFA56200FFA562
      00FFA56200FFA56200FF995B04FF7B490EFF0E1218FF0E1218FF0A6E9BFF097A
      ADFF068BC3FF0597D5FF02ABF1FF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFF3F2F1FFA49471FFF0EFEDFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6
      F4FFF1B82FFFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF1B400FFF4DBB8FFEDF4F8FF0AC4FFFF00C3FFFF00C3FFFF00C3FFFF00C3
      FFFF00C3FFFF00C3FFFF00C3FFFF00C3FFFFC4E5FAFFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFE8E6E2FFA99A79FFF6F6F6FFFFFFFFC7BDB7
      B6FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF918381FFF0EFEFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD5D5F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000
      F2FF1818F2FFC0C0F2FFFFFFFFC7FFFFFFC7F1F0EFFFF1F0F0FF3D3D3DFF3E3E
      3EFFBFBEBEFFF1F0F0FFF8F7F6FFFAF9F8FFFAF9F8FFFAF9F8FFF1F0EFFF5A5A
      5AFF454545FF464646FF454545FF434343FF464646FF464646FFBDBCBCFFEFEE
      EDFFD6D5D4FFA8A8A7FF898988FF898988FFAAAAA9FFD3D2D2FFE9E8E7FFF1F0
      F0FFF1F0F0FFF1F0F0FFF1F0F0FFF8F7F6FFFAF9F8FFC9C9C8FF4C4C4CFF4C4C
      4CFFFAF9F8FFF7F6F6FFD9C9C0FFCDB4A6FFF7F7F7FFF4F2F1FFE5DBD6FFF6F6
      F5FFCCB2A3FFEDE8E5FFF7F7F7FFA56200FFBB9479FFE7DED9FFC6A892FFA562
      00FFB78C6EFFEAE4E0FF6E6F6FFFBBBBBBFFA8A8A9FFBDB5AFFFA56200FFA562
      00FFA56200FFA56200FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFE8E6E2FFAA9C7FFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF3CC8DFFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF1B400FFF3C880FFF7F7F7FF7AD1FDFF00C3FFFF76D0FDFFBCE2FBFFD6EB
      F9FFDBEDF9FFCEE9F9FFB2DFFBFF75D0FDFF90D6FCFFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F4FFA2926FFFEEECEAFFFFFFFFC78F82
      7FFF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5B37
      2DFFE3E1E1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD5D5F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF1B1B
      F2FFC1C1F2FFFFFFFFC8FFFFFFC7FFFFFFC7F0EFEEFFF1F0EFFF3E3E3EFF3D3D
      3DFFBFBEBDFFF1F0EFFFF9F8F7FFFBFAF9FFFBFAF9FFFBFAF9FFF9F8F7FF6F6E
      6EFF474747FF464646FF464646FF444444FF747474FFC4C3C2FFEEEDECFFBBBB
      BAFF4F4F4FFF4A4A4AFF4A4A4AFF4B4B4BFF4B4B4BFF525252FFA2A1A1FFF1F0
      EFFFF1F0EFFFF1F0EFFFF1F0EFFFF9F8F7FFFBFAF9FFC9C8C8FF4D4D4DFF4D4D
      4DFFFBFAF9FFF8F7F6FFF7F7F7FFF6F5F4FFF7F7F7FFF2F0EEFFF7F7F7FFF6F5
      F4FFA56200FFA56202FFF0ECE9FFA56200FFA56200FFCAB1A1FFC6A892FFA562
      00FFA56200FFDBCCC5FF0C1016FF0E1218FF727373FFD6CFCAFFA56200FFA562
      00FFA56200FFA56200FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFDDD9D3FFB5AA95FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF5DFBFFFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF1B400FFF1B513FFF7F4EEFFC5E6FAFFD1EAF9FFF7F7F7FFECF3F0FFCEE8
      DDFFC2E3D5FFC4E4D6FFDAEDE5FFF3F6F5FFEAF3F8FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFA99B7FFFE6E4E0FFFCFCFCC85D3B
      31FF512000FF512000FF512000FF512000FF512000FF512000FF512000FFA79E
      9CFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD5D5F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF1919F2FFC3C3
      F2FFFFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF3E3E3EFF3E3E
      3EFFBFBEBDFFF1F0EFFFF9F8F7FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFE4E3
      E3FFB2B1B1FF9C9C9CFFA6A5A5FFCCCBCAFFDFDFDEFF969695FFAEAEADFFB0AF
      AEFF4B4B4BFF4C4C4CFF494949FF4A4A4AFF4D4D4DFF4C4C4CFF6E6E6DFFF0EF
      EEFFF1F0EFFFF1F0EFFFF1F0EFFFF9F8F7FFFBFAF9FFCAC9C9FF4D4D4DFF4E4E
      4EFFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFAE7742FFDFD2CAFFF7F7
      F7FFDFD2CBFFB88E71FFEFEAE6FFDBCCC4FFB48563FFCAB1A1FFE9E4E1FFC6A8
      95FFA56200FFDBCCC5FF0C1016FF0E1218FF0E1218FFB8B0A9FFA56200FFA562
      00FFA56200FFA56200FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFD8D4CDFFB8AE9DFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF6F0E7FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B400FFF1B4
      00FFF1B400FFF1B50BFFF6EADAFFF7F7F7FFE6F1ECFF95D7BDFF12C493FF00C3
      91FF00C391FF00C391FF00C391FF36C698FF9AD8BFFFE7F1EDFFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFB0A48FFFE0DDD7FFFCFCFCC85020
      02FF512000FF512000FF512000FF512000FF512000FF512000FF501F00FFD5D2
      D2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD5D5F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF0000F2FF0000F2FF0000F2FF0000F2FF1717F2FFC1C1F2FFFFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF3E3E3EFF3E3E
      3EFFBEBDBCFFF1F0EFFFF9F8F7FFFBFAF9FFFBFAF9FFF9F8F7FFFBFAF9FFB3B3
      B3FF9B9A9AFFB4B3B3FFACABAAFF888787FF575656FF4D4D4DFF8C8C8BFFC5C4
      C4FF494949FF484848FF494949FF4A4A4AFF4C4C4CFF4C4C4CFF656564FFEAE9
      E8FFF1F0EFFFF1F0EFFFF1F0EFFFF9F8F7FFFBFAF9FFCAC9C9FF4E4E4EFF4E4E
      4EFFFBFAF9FFF8F7F6FFD6C4BBFFE2D7D1FFF7F7F7FFCFB8ABFFCCB3A4FFF7F7
      F7FFF7F7F7FFF7F7F7FFF6F6F5FFBFC0C0FFF2F1F1FFECE7E4FF9B9B9BFFACAC
      ACFFE2DCD8FFE9E2DFFFA4A5A5FF535355FF0E1218FFB8B0A9FFA56200FFA562
      00FFA56200FFA56200FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFD7D3CCFFB7AD9CFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF5E2C8FFF3CB89FFF1B722FFF1B400FFF1B400FFF1B400FFF1B5
      0DFFF3CC8CFFF6ECDEFFF7F7F7FFF7F7F7FF5DCCA4FF00C391FF00C391FF00C3
      91FF00C391FF00C391FF00C391FF00C391FF00C391FFAEDECAFFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFAEA38EFFDEDBD6FFFAFAFAC95120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF572F23FFECEB
      EBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD5D5F2FF0000F2FF0000F2FF0000
      F2FF0000F2FF0000F2FF0000F2FF0000F2FF1515F2FFBFBFF2FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF3F3F3FFF3F3F
      3FFFBFBEBDFFF1F0EFFFF9F8F7FFFBFAF9FFFBFAF9FFF8F7F6FFFBFAF9FF9999
      99FF4B4B4BFF464646FF474747FF484848FF454545FF4C4C4CFF7A7979FFD1D0
      CFFF4A4A4AFF484848FF494949FF4B4B4BFF4A4A4AFF4B4B4BFF5A5A59FFE3E2
      E1FFF1F0EFFFF1F0EFFFF1F0EFFFF9F8F7FFFBFAF9FFCAC9C9FF4E4E4EFF4E4E
      4EFFFBFAF9FFF8F7F6FFEAE3E0FFDCCEC6FFF7F7F7FFF7F7F7FFF4F3F2FFF4F4
      F4FF797A7AFFCCCCCCFFF6F6F6FF0D1117FF4B4C4DFFCBCBCBFF949494FF0E12
      18FF3A3B3DFFD6D6D6FF0F1319FF989898FFAAAAABFFC6BFB9FFA56200FFA562
      00FFA56200FFA56200FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFD9D5CFFFB0A695FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFE9ECF7FFF3F4F7FFF7F6F3FFF6EDE0FFF6E8D6FFF6EADCFFF7F4
      EEFFF7F7F7FFE8EAF7FFA5B4F8FFF7F7F7FF9CD9C1FF00C391FF00C391FF00C3
      91FF00C391FF00C391FF00C391FF00C391FF00C391FF6ACEA9FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFA59881FFE3E0DDFFFFFFFFC75120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF65473FFFF1F1
      F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFFBFBFCD1FEFEFFC8FEFEFFC8FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFBFBD6FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF3F3F3FFF4040
      40FFC0BFBEFFF1F0EFFFF9F8F7FFFBFAF9FFFBFAF9FFFAF9F8FFFBFAF9FFB5B5
      B5FF494949FF474747FF474747FF474747FF494949FF494949FF6F6E6EFFDAD9
      D8FF484848FF494949FF605F5FFF6E6E6EFF656565FF505050FF4B4B4BFFD3D2
      D1FFF1F0EFFFF0EFEEFFF1F0EFFFF9F8F7FFFBFAF9FFCAC9C9FF4F4F4FFF4F4F
      4FFFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFDBDBDBFFF7F7F7FFF5F5
      F5FF101319FF0E1218FFE7E7E7FF0D1117FF0E1218FFA2A2A3FF979797FF0E12
      18FF0E1218FFC5C5C6FF0C1016FF0E1218FF242629FFC7C2BFFF9B5C04FFA562
      00FFA56200FFA56200FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B5FFFF0E1319FF0E1218FF0E1218FF9798
      98FFE3E1DDFFA39680FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFD5DBF7FF4D77F8FF9BACF8FFC6CEF7FFDADFF7FFDDE1F7FFCCD3
      F7FF9DADF8FF3B6EF8FF2C68F8FFE3E6F7FFCDE8DDFF00C391FF00C391FF00C3
      91FF00C391FF00C391FF00C391FF00C391FF00C391FF01C391FFE9F2EFFFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FF958567FFEAE8E6FFFDFDFDC85120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF65473FFFF1F1
      F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFFFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF404040FF3F3F
      3FFFC6C5C5FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFEFEEEDFFF1F0EFFFC3C2
      C1FF464646FF464646FF464646FF464646FF4A4A4AFF484848FF5B5A5AFFD3D3
      D2FF939292FFC2C1C0FFE8E7E6FFEEEEEDFFEEEDECFFD7D7D6FF9D9D9CFFD6D5
      D4FFFBFAF9FFFAF9F8FFFBFAF9FFEFEEEDFFF1F0EFFFC4C3C2FF4E4E4EFF4F4F
      4FFFF0EFEFFFF4F3F2FFF5F5F5FFF7F7F7FFF7F7F7FF28292CFFB7B7B7FFF7F7
      F7FFE5E5E5FFA2A2A2FFE9E9E9FFDEDEDEFF979797FFA2A3A3FFE3E5F1FFBDBD
      BDFF4C4C4EFFC5C5C6FF0D1117FF0E1218FF0E1218FFB7B7B7FF0F1218FF5F39
      13FF86500BFF9D5E03FFA56200FF955906FF0E1218FF0E1218FF03A4E8FF00B5
      FFFF00B5FFFF00B5FFFF00B5FFFF00B3FBFF0E1218FF0E1218FF0E1218FF9798
      98FFEFEEECFF908063FFF3F2F1FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF3F4F7FF4272F8FF2C68F8FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FFBBC5F7FFF0F5F3FF13C493FF00C391FF00C3
      91FF00C391FF00C391FF00C391FF00C391FF00C391FF00C391FFC3E5D7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFEAE8E6FF928165FFF5F5F4FFFFFFFFC75120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF572F24FFECEB
      EBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD8D5D5FF4E1D00FF4F1E00FF4F1E
      00FF4F1E00FF4F1E00FF4F1E00FF4F1E00FF532816FFC6C1C0FFFFFFFFC8FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF404040FF4040
      40FFC7C6C6FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF0EFEEFFF1F0EFFFD0D0
      CFFF464646FF454545FF454545FF464646FF494949FF494949FF807F7FFFE9E8
      E7FFF1F0EFFFF1F0EFFFF1F0EFFFF0F0EFFFF3F2F1FFF8F8F7FFFBFAF9FFFAF9
      F8FFFBFAF9FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC3C2C1FF4F4F4FFF5050
      50FFF0EFEFFFF4F3F2FFA6A6A7FFBFBFBFFFF7F7F7FFC8C8C8FFB2B2B3FFF6F7
      F7FFEFF0F7FFF7F7F7FFF7F7F7FF99A4F2FFE0E2F6FFF2F2F2FF99A5F2FF8391
      F0FFD3D6F0FFE9E9E9FFACADADFF9C9C9CFF1E2024FFB7B7B7FF0E1218FF0E12
      18FF0E1218FF0E1218FF382416FF482C15FF0E1218FF0E1218FF0883BAFF0499
      D8FF0691CDFF078BC3FF0A6E9BFF0D3347FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FF9D907BFFDFDDD9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FF91A4F8FF2C68F8FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FF889DF8FFF7F7F7FF80D2B2FF00C391FF00C3
      91FF00C391FF00C391FF00C391FF00C391FF00C391FF00C391FF8FD5B9FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFD5D2CCFFAA9F8FFFF7F7F7FFFDFDFDC85020
      02FF512000FF512000FF512000FF512000FF512000FF512000FF501F00FFD6D2
      D2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD8D5D5FF501F00FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF542A19FFC7C2C1FFFFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF404040FF4040
      40FFC7C6C6FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFE2E1
      E0FF6C6C6CFF4F4F4FFF4F4F4FFF565655FF7B7B7AFFC1C1C0FFF9F8F7FFF1F0
      EFFFEFEEEDFFEFEEEDFFF0EFEEFFF0F0EFFFF3F2F1FFF6F6F5FFF9F8F7FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC4C3C2FF505050FF5050
      50FFF0EFEFFFF4F3F2FFEDEDEDFFD5D6D6FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5
      F7FF4665EFFFAAB2F2FFF2F2F7FF2A56EEFF2B57EEFFB6BDF3FF99A5F2FF2B57
      EEFF2B57EEFFCBCFF4FF0C1016FF646566FFB5B5B5FFCED1E0FF2244BAFF1628
      6DFF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFBDB6ACFFC2BCB3FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFC2CBF7FF2C68F8FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FF356CF8FFF0F2F7FFB7E1CFFF00C391FF00C3
      91FF00C391FF00C391FF00C391FF00C391FF00C391FF00C391FF37C699FFF4F6
      F5FFF7F7F7FFF7F7F7FFF7F7F7FFB5ADA2FFC8C2BBFFF7F7F7FFFFFFFFC75D3A
      31FF512000FF512000FF512000FF512000FF512000FF512000FF512000FFA79E
      9DFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD8D5D5FF501F00FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF552B1AFFC9C5
      C4FFFFFFFFC8FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF414141FF4141
      41FFC6C5C5FFFBFAF9FFEFEEEDFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF2F1
      F0FFF4F3F2FFE0DFDEFFD9D8D7FFE7E6E6FFFBFAF9FFFBFAF9FFFBFAF9FFF1F0
      EFFFF1F0EFFFF1F0EFFFF1F0EFFFF0F0EFFFF3F2F1FFF8F8F7FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFEFEEEDFFF1F0EFFFC4C3C2FF505050FF5050
      50FFF0EFEFFFF4F3F2FFF7F7F7FFF7F7F7FFF7F7F7FFBAC1F4FFF3F3F7FFF6F6
      F7FF6178F0FF2B57EEFFE8EAF6FF546DEFFF2B57EEFFA5AEF2FFAFB7F3FF2B57
      EEFF2B57EEFFC6CBF4FF0C1016FF0E1218FF0E1218FFABAEC5FF2B57EEFF2B57
      EEFF2851DEFF2143B7FF1C3797FF15276BFF0E1218FF0E1218FF0E1218FF0E12
      18FF0E1218FF1A351FFF2D5E2CFF3E8139FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFDEDCD8FF958774FFF5F5F5FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFE8EBF7FF2C68F8FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FF2C68F8FFD0D6F7FFE0EFE9FF00C391FF00C3
      91FF00C391FF01C391FF2EC799FF32C79AFF04C392FF00C391FF00C391FFD6EB
      E2FFF7F7F7FFF7F7F7FFF1F0EFFF8B7B63FFE7E5E3FFF7F7F7FFFFFFFFC78F81
      7FFF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5B38
      2EFFE3E2E1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD8D5D5FF501F00FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF552C
      1BFFC8C3C2FFFFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FF424242FF4141
      41FFC5C4C4FFF8F7F6FFEDECEBFFEFEEEDFFEFEEEDFFEFEEEDFFEFEEEDFFEFEE
      EDFFF7F6F5FFFBFAF9FFFBFAF9FFFBFAF9FFF9F8F7FFF7F6F5FFF9F8F7FFEFEE
      EDFFEFEEEDFFEFEEEDFFEFEEEDFFEEEEEDFFF1F0EFFFF6F5F5FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFEDECEBFFEFEEEDFFC2C1C1FF505050FF5151
      51FFF0EFEFFFF4F3F2FFE6E7F6FFF6F6F7FFF7F7F7FF4265EFFFA7B0F2FFF7F7
      F7FFF4F5F7FFC8CDF4FFEEEFF6FFE7E9F6FFC1C6F4FFB6BDF3FFC8CEF4FFC7CC
      F4FF8A97F1FFC6CBF4FF575859FF0E1218FF0E1218FFABAEC5FF2B57EEFF2B57
      EEFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469240FF4DA1
      46FF4DA146FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF6F6F6FF998D7CFFD6D2CEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FF6E8BF8FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FF2C68F8FFA1B0F8FFF7F7F7FF56CAA1FF65CC
      A7FFC4E5D7FFEDF4F1FFF7F7F7FFF7F7F7FFF2F5F4FFD6EBE2FFAADDC8FFB9E2
      D1FFF7F7F7FFF7F7F7FFCAC6C0FFA59B8EFFF7F7F7FFF7F7F7FFFFFFFFC7D3CF
      CFEC512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF918481FFF0EFEFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD8D5D5FF501F00FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF552A19FFC7C2C1FFF9F9F9DFFFFFFFC7FBFAF9FFFBFAF9FF434343FF4242
      42FFCFCECDFFFBFAF9FFF0EFEEFFF0EFEEFFF0EFEEFFF0EFEEFFF0EFEEFFF1F1
      F0FFF8F7F6FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFF0EF
      EEFFF0EFEEFFF0EFEEFFF0EFEEFFF0EFEEFFF2F2F1FFF8F8F7FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFF0EFEEFFF0EFEEFFC9C8C7FF515151FF5353
      53FFEFEFEEFFF3F3F2FFAFB7F3FFA9B1F2FFF7F7F7FFE5E7F6FFC9CDF4FFF6F6
      F7FFC2C7F4FFF2F3F7FFF7F7F7FF3A5EEFFFA5AEF2FFE7E8F6FF99A5F2FF2B57
      EEFF9AA5F1FFE5E7F6FF8E8E8FFFABACACFF68696AFFABAEC5FF2B57EEFF2B57
      EEFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFD1CDC9FF998D7EFFF5F5F5FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFAEBBF8FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FF2C68F8FF5C80F8FFF6F7F7FFD7ECE4FFF4F6
      F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF2F1F0FF8E806DFFDAD7D4FFF7F7F7FFF7F7F7FFFFFFFFC7EEED
      EDEA572F22FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FFA69E9CFFF0F0F0FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFD8D5D5FF501F00FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF552B1AFFC9C5C4FFFFFFFFC7F6F5F4FFF6F5F5FF424242FF4242
      42FF7A7A7AFF939393FF8E8E8DFF90908FFF90908FFF908F8FFF919090FF9190
      90FF919190FF919190FF929292FF929292FF929292FF939393FF939393FF9494
      93FF949493FF949493FF959494FF949393FF959594FF959594FF959594FF9696
      96FF969696FF969696FF979797FF969695FF9A9A99FF848484FF515151FF5252
      52FFF5F4F3FFF5F5F4FFF7F7F7FFEAEBF6FFF7F7F7FFF6F6F7FFF7F7F7FFF5F5
      F7FF2B57EEFF526CEFFFECEDF6FF2A56EEFF2B57EEFFA5AEF2FF99A5F2FF2B57
      EEFF2B57EEFFC6CBF4FF0C1016FF0F1319FF9D9D9DFFCACDE0FF2B57EEFF2B57
      EEFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF5F5F5FF9A8E80FFC9C4BFFFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFD7DCF7FF2C68F8FF2C68F8FF2C68F8FF2C68
      F8FF2C68F8FF2C68F8FF2C68F8FF2C68F8FF7892F8FFF1F2F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFBCB6AFFFA49B90FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7F8F8
      F8E2A09594FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF501F00FF928583FFE4E2E2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F1FFD6D3D2FF9A8E8CFF9A8E8CFF9A8E
      8CFF9A8E8CFF9A8E8CFF9A8E8CFF9A8E8CFF9A8E8CFF9A8E8CFF9A8E8CFF9A8E
      8CFF9A8E8CFF9A8E8CFF9C918FFFF9F9F9CAF0EFEEFFF0F0EFFF434343FF4242
      42FF454545FF464646FF474747FF474747FF484848FF494949FF484848FF4949
      49FF4A4A4AFF4B4B4BFF4C4C4CFF4C4C4CFF4D4D4DFF4D4D4DFF4E4E4EFF4E4E
      4EFF4E4E4EFF4F4F4FFF505050FF505050FF505050FF515151FF525252FF5252
      52FF535353FF535353FF545454FF545454FF555555FF545454FF515151FF5252
      52FFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FF7688F1FFD8DBF5FFF7F7
      F7FFB6BDF3FF536DEFFFE8EAF6FFAAB2F2FF4162EFFFA5AEF2FFD7DAF5FF7485
      F0FF2B57EEFFC6CBF4FF0C1016FF0E1218FF0E1218FFABAEC5FF2B57EEFF2B57
      EEFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF7F7F7FFE1DFDDFF82725EFFE5E3E1FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFDFE3F7FFB1BCF8FF7D95F8FF376E
      F8FF2C68F8FF3C70F8FF8A9EF8FFCAD1F7FFF6F6F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFDCDAD7FF82735FFFE8E6E5FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FBFB
      FBD5E0DEDDFF583123FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF5C382EFFA69C9BFFD4D0D0FFEBEAEAFFF0EF
      EFFFF0EFEFFFEAE8E8FFD1CDCCFF9F9593FF8E817FFFFFFFFFC8FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FEFEFEC9FEFEFEC9FEFEFECAFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FAFAFACAF0EFEFFFF1F0EFFF424242FF4343
      43FF454545FF464646FF464646FF474747FF474747FF474747FF484848FF4949
      49FF494949FF4A4A4AFF4A4A4AFF4B4B4BFF4C4C4CFF4C4C4CFF4C4C4CFF4D4D
      4DFF4D4D4DFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F4FFF505050FF505050FF5050
      50FF515151FF525252FF525252FF525252FF545454FF535353FF525252FF5252
      52FFFBFAF9FFF8F7F6FFC7CCF4FFDEE0F5FFF7F7F7FF8C99F1FFA6AFF2FFF7F7
      F7FFF7F7F7FFF2F3F7FFF4F4F7FFDADADAFFEEEFF6FFD7DAF5FFACACADFFC7C8
      C8FFCDD1F3FFD7DAF5FF9A9B9BFF202226FF0E1218FFABAEC5FF2B57EEFF2B57
      EEFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFC5C0BBFF8F8375FFEEEDECFFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF4F5F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE8E7
      E6FF857766FFCFCBC7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FDFDFDCFB3ACABFF501F00FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF501F00FF532413FF6649
      41FF64463EFF52220FFF502000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF444444FF4343
      43FF454545FF454545FF454545FF464646FF464646FF474747FF474747FF4848
      48FF494949FF494949FF4A4A4AFF4B4B4BFF4B4B4BFF4B4B4BFF4C4C4CFF4C4C
      4CFF4C4C4CFF4D4D4DFF4D4D4DFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F4FFF5050
      50FF505050FF505050FF515151FF515151FF525252FF525252FF525252FF5353
      53FFFBFAF9FFF8F7F6FFD2D6F5FFB8BFF3FFF7F7F7FFF7F7F7FFE7E9F6FFF5F5
      F5FF9D9D9EFFE1E1E1FFF7F7F7FF0D1117FF7B7B7CFFD9D9D9FF949494FF0E12
      18FF636465FFDEDEDEFF575859FFAEAEAEFF9FA0A0FFAEB2C8FF2B57EEFF2B57
      EEFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFB1A9A2FF958A7FFFEEED
      EDFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFEAE9E8FF8C7F
      72FFBBB6B0FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7EFEFEFFF887A77FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF444444FF4444
      44FF454545FF454545FF464646FF464646FF464646FF474747FF484848FF4949
      49FF4A4A4AFF4A4A4AFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4C4C4CFF4C4C
      4CFF4D4D4DFF4E4E4EFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F4FFF4F4F4FFF5050
      50FF505050FF515151FF515151FF525252FF525252FF525252FF535353FF5353
      53FFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FFEBEBEBFFF7F7F7FFF4F4
      F4FF0E1218FF0E1218FFE7E7E7FF0D1117FF0E1218FFA2A2A3FF949494FF0E12
      18FF0E1218FFC5C5C6FF0C1016FF0E1218FF696A6AFFCFD0D8FF2346C1FF2A55
      EAFF2B57EEFF2B57EEFF2B57EEFF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4DA046FF4DA046FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFAEA7A0FF8D81
      76FFE6E5E4FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE0DEDCFF857769FFB8B2
      ADFFF7F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7E6E5E5FF725C57FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF454545FF4646
      46FF484848FF464646FF474747FF474747FF474747FF494949FF494949FF4A4A
      4AFF4A4A4AFF4B4B4BFF4B4B4BFF4C4C4CFF4C4C4CFF4C4C4CFF4D4D4DFF4D4D
      4DFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F4FFF505050FF505050FF505050FF5151
      51FF515151FF525252FF525252FF535353FF535353FF555555FF545454FF5454
      54FFFBFAF9FFF8F7F6FFF7F7F7FFF7F7F7FFF7F7F7FF434445FFC7C7C7FFF7F7
      F7FFD5D5D5FF828283FFE7E7E7FFC7C7C7FF6C6C6DFFA2A2A3FFE7E7E7FFA0A0
      A1FF1B1E22FFC5C5C6FF0C1016FF0E1218FF0E1218FFB7B7B7FF0E1218FF111B
      41FF1C3796FF2449C8FF2952E0FF274FD8FF0E1218FF0E1218FF469140FF4DA0
      46FF4DA046FF4DA046FF4C9F46FF41893CFF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFBDB8
      B4FF796A5AFFCBC8C5FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F4FFC3BFBBFF766654FFC6C2BFFFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7E1DFDEFF725C56FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFEFEFEC9FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7F0EFEFFFF1F0EFFF7C7C7CFF4848
      48FF474747FF484848FF484848FF494949FF4A4A4AFF4B4B4BFF4B4B4BFF4B4B
      4BFF4C4C4CFF4D4D4DFF4D4D4DFF4D4D4DFF4E4E4EFF4E4E4EFF4F4F4FFF5050
      50FF4F4F4FFF505050FF515151FF515151FF515151FF525252FF525252FF5353
      53FF545454FF545454FF545454FF555555FF555555FF565656FF585858FF8B8A
      8AFFFBFAF9FFF8F7F6FFB3B3B3FFCCCCCCFFF7F7F7FFB1B1B1FFA7A7A8FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE6E6E6FFF7F7F7FFF7F7
      F7FFE7E7E7FFE1E1E1FFC7C7C8FF6B6C6CFF0E1218FFB7B7B7FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1217FF0E1218FF0E1218FF2E602DFF336B
      30FF326A30FF295629FF15261CFF0E1218FF0E1218FF0E1218FF0E1218FF9798
      98FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFDAD8D6FF85786DFF958C84FFDAD8D6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF6F6F6FFD4D2CFFF8D8278FF8D8178FFE0DEDCFFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFBFBD5E6E5E5FF877875FF512000FF5120
      00FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFDFDFDCEFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FFECEBEAFF9B9B
      9AFF7C7C7BFF7E7D7DFF7B7A7AFF7B7A7AFF7B7A7AFF7B7A7AFF7B7A7AFF7C7C
      7BFF7F7F7EFF807F7FFF807F7FFF818080FF818080FF818080FF828181FF7F7E
      7EFF7F7E7EFF7F7E7EFF807F7FFF7F7F7FFF818181FF838383FF848383FF8584
      84FF848383FF858484FF858484FF838282FF848383FF838382FF9E9E9DFFE5E4
      E3FFF0EFEFFFF4F3F2FFE3E3E3FFCACBCBFFF7F7F7FFF7F7F7FFF3F3F3FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFCBCBCCFFC9CACAFF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FFA8A8
      A8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF2F2F2FFC1BDB9FF796A5EFF8D837AFFC4C0BDFFE6E5E4FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFE3E1
      E0FFC0BCB8FF867A70FF7F7166FFC7C4C1FFF4F4F4FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FEFEFECAEFEEEEFFB3ADABFF5730
      22FF512000FF512000FF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFFFFFFC8FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF2F1
      F0FFF8F7F6FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFF1F0
      EFFFF1F0EFFFF1F0EFFFF1F0EFFFF0F0EFFFF3F2F1FFF8F8F7FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0
      EFFFF0EFEFFFF4F3F2FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFDBDBDBFFA1A1
      A1FF48494AFF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E1218FF0E12
      18FF0E1218FF0E1218FF0E1218FF0E1218FF4B4B4DFFA2A3A3FFDDDDDDFFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF2F2F2FFCDCAC8FF9E9690FF6B5A4BFF7769
      5DFF99908AFFADA7A2FFB4AFABFFB4AEABFFABA4A0FF978E88FF736356FF6E5E
      4FFFA29B96FFD1CECCFFF4F4F3FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7E0DE
      DEFF9F9492FF562D1FFF512000FF512000FF512000FF512000FF512000FF5120
      00FF512000FF512000FF512000FF512000FF8C7E7BFFFEFEFECCFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FEFEFECAFDFDFDCEFFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FBFAF9FFFBFAF9FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF2F1
      F0FFF8F7F6FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFFBFAF9FFF1F0
      EFFFF1F0EFFFF1F0EFFFF1F0EFFFF0F0EFFFF3F2F1FFF8F8F7FFFBFAF9FFFBFA
      F9FFFBFAF9FFFBFAF9FFFBFAF9FFF1F0EFFFF1F0EFFFF1F0EFFFF1F0EFFFF1F0
      EFFFF0EFEFFFF4F3F2FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFDBDBDBFFBDBDBDFFA3A3A3FF7B7C7CFF787879FF747576FF7878
      79FF7A7A7BFFA1A1A2FFBCBCBDFFDADADBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF3F2F2FFDFDD
      DCFFCCC9C7FFBDB9B6FFB6B1ADFFB6B1ADFFBFBBB7FFCDCAC8FFE0DFDDFFF4F4
      F3FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7E5E3E3FFBCB6B5FF8D7F7DFF593529FF501F00FF512000FF5120
      00FF512000FF512000FF501F00FF5E3D34FFAAA2A0FFFFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7424D3E000000000000003E000000
      28000000980000004C0000000100010000000000F00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFF0000000003FFFFFFFFF00FFFFFFFF
      FFFFFFFFFFF0000000003FFFFFFFFF000000000003FFFFFFFFF0000000003FFF
      FFFFFF000000000003FFFFFFFFF0000000000000000000000000000003FFFFFF
      FFF0000000000000000000000000000003FFFFFFFFF000000000000000000000
      0000000003FFFFFFFFF000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
  end
  object PopupMenu_Window: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 2
    ImageMargin.Top = 2
    ImageMargin.Right = 2
    ImageMargin.Bottom = 2
    ImageSize.Height = 40
    ImageSize.Width = 40
    Left = 157
    Top = 312
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object ChatWindow1: TMenuItem
      Caption = 'Chat Window'
      OnClick = ChatWindow2Click
    end
    object PreviewWindow1: TMenuItem
      Caption = 'Preview'
    end
  end
  object PopupMenu_DataBase: TJvPopupMenu
    Images = ImageList2
    Style = msOffice
    ImageMargin.Left = 2
    ImageMargin.Top = 2
    ImageMargin.Right = 2
    ImageMargin.Bottom = 2
    ImageSize.Height = 21
    ImageSize.Width = 21
    TextMargin = 5
    Left = 128
    Top = 312
    object SQLExplorer1: TMenuItem
      Caption = 'SQL Explorer'
      OnClick = SQLExplorer1Click
    end
    object SQLMonitor1: TMenuItem
      Caption = 'SQL Monitor'
      OnClick = SQLMonitor1Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object FormWizard1: TMenuItem
      Caption = 'Form Wizard ...'
    end
  end
  object Editor_PopupMenu: TJvPopupMenu
    Images = ImageList2
    Style = msOffice
    ImageMargin.Left = 2
    ImageMargin.Top = 2
    ImageMargin.Right = 2
    ImageMargin.Bottom = 2
    ImageSize.Height = 21
    ImageSize.Width = 21
    TextMargin = 5
    Left = 288
    Top = 160
    object Run_MenuItem: TMenuItem
      Caption = 'Run Interpreter'
      ShortCut = 113
      OnClick = Run_MenuItemClick
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object Cut1: TMenuItem
      Caption = 'Cut to Clipboard'
      OnClick = Cut1Click
    end
    object Copy1: TMenuItem
      Caption = 'Copy to Clipboard'
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste to View'
      ShortCut = 16470
      OnClick = Paste1Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object Translate_MenuItem: TMenuItem
      Caption = 'Translate'
      object Translate_TO_gnuCPP: TMenuItem
        Caption = 'MingGW GNU C++'
        OnClick = Translate_TO_gnuCPPClick
      end
    end
    object Internal_FPC_Interpreter_MenuItem: TMenuItem
      Caption = 'Internal Interpreter'
      Checked = True
    end
    object InternalCompiler1: TMenuItem
      Caption = 'Internal Compiler'
    end
    object Compile_FPC_MenuItem: TMenuItem
      Caption = 'Compile with FPC'
      OnClick = Compile_FPC_MenuItemClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object Help1: TMenuItem
      Caption = 'Help'
      ShortCut = 112
      OnClick = Help1Click
    end
  end
  object JvPopupMenu1: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 2
    ImageMargin.Top = 2
    ImageMargin.Right = 2
    ImageMargin.Bottom = 2
    ImageSize.Height = 40
    ImageSize.Width = 40
    Left = 853
    Top = 8
    object MenuItem2: TMenuItem
      Bitmap.Data = {
        42190000424D4219000000000000420000002800000028000000280000000100
        20000300000000190000232E0000232E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000200000008000000110000001A0000002100000024000000230000
        001F000000160000000D00000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        00130000002A0D0400443D200168502A0185542D0194512C01964826018D3219
        0178070200600000005000000039000000200000000C00000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000111F0D00346336
        0281723F03C6774203F1754103FF6F3D03FF693A02FF663802FF643702FF6437
        02FF623602F35A3102D04625019E0C0400680000004800000023000000090000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000061A0A0022703E0285804803E77F46
        03FF734003FF643702FF5D3919FF675346FF6D5F56FF6B5D54FF5F4E43FF4B2F
        17FF482601FF502B01FF593002FF5B3202ED482601A8050100660000003C0000
        0013000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000075F33023F844A04CD874B03FF7A4403FF724F
        36FF918781FFA7A4A2FFB1B0AFFFABACABFFA4A4A4FF9FA09FFF9E9F9EFF9D9D
        9CFF918F8DFF78736FFF4D3A2EFF462501FF552E02FF572F02DD2B1400810000
        004C0000001A0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000007754103528D4F04ED894D04FF7C4E29FFA0958FFFBCBB
        BAFFB3B4B4FF9FA0A0FF8B8A89FF7E7874FF766D66FF726862FF6F6965FF706F
        6EFF787878FF878787FF949393FF7C7874FF452F20FF4B2801FF593002F3391D
        0193000000510000001A00000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000037C45034D925204F38D4F04FF8E6E5AFFBDBAB8FFBFBFBFFFA7A7
        A6FF8F8177FF866146FF845119FF814C0AFF7D4908FF794607FF754406FF7043
        12FF684A33FF635750FF6A6A6AFF828282FF8E8D8CFF584D46FF462501FF5830
        02F7391D01930000004C00000013000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00017A43022D965404EB925204FF997C6BFFC7C6C5FFBFC0BFFFA29A94FF9467
        41FF91560DFF8E540CFF89510BFF854E0AFF814C09FF7C4908FF794507FF7544
        06FF714106FF6C3E05FF664326FF615954FF737373FF8F8E8EFF605752FF4625
        01FF593002F32B1501810000003B000000090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004826
        010A985504C4985604FF9B765EFFCBCAC9FFC5C5C4FFA79588FF9D611DFF9A5C
        10FF955A0EFF91560DFF8E540CFF89510BFF7E4A09FF6D3F06FF6D3F06FF7644
        07FF754406FF714106FF6C3E05FF683D0BFF605147FF6E6E6EFF8F8E8EFF594D
        47FF4B2801FF572F02DD05020066000000230000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000019655
        05679D5905FF995F2DFFCAC6C3FFCDCDCDFFB29E91FFA66516FFA16112FF9E5F
        11FF9A5C10FF955A0EFF91560DFF8E5514FF938175FF837972FF5B360DFF7644
        07FF794607FF754406FF714106FF6C3E05FF683C06FF605147FF737373FF8F8D
        8CFF453020FF562F02FF482601A8000000470000000B00000000000000000000
        00000000000000000000000000000000000000000000000000006F3E030AA05B
        05DE9E5A05FFBBA89EFFD4D4D4FFC1B7B0FFAE6C23FFAA6714FFA66413FFA161
        12FF9E5F11FF9A5C10FF955A0EFF925A1CFFB3B3B1FFAFAFAEFF6A4218FF7C48
        08FF7D4908FF794607FF754406FF714106FF6C3E05FF683D0BFF615954FF8282
        82FF7C7875FF472501FF5C3202ED0D0400680000001F00000001000000000000
        00000000000000000000000000000000000000000000000000009F5A0554A45D
        05FFA46C40FFD6D4D3FFD1D1D0FFB8855BFFB26C16FFAE6914FFAA6714FFA664
        13FFA16112FF9E5F11FF9A5C10FF965C18FFA8978DFFA19389FF824F15FF844E
        0AFF814C09FF7D4908FF794607FF754406FF714106FF6C3E05FF664426FF6B6B
        6AFF959494FF4D3B2EFF593102FF4725019D0000003800000005000000000000
        0000000000000000000000000000000000000000000003010001A65E05A9A65E
        05FFBDA596FFDADADAFFCBBAAFFFBA7118FFB66F17FFB26C16FFAE6914FFAA67
        14FFA66413FFA16112FF9E5F11FF995C10FF8A520DFF6E4008FF744408FF864F
        0BFF854E0AFF814C09FF7D4908FF794607FF754406FF714106FF6C3E05FF6458
        50FF888888FF797470FF502B01FF5A3102CF0000004E0000000D000000000000
        0000000000000000000000000000000000000000000080480405A96005E9A75F
        05FFD2C8C2FFDBDBDBFFC79A7AFFBE7419FFBA7118FFB66F17FFB26C16FFAE69
        14FFAA6714FFA66413FFA16112FF9D5F13FFB6ACA5FFA59F9BFF633906FF864F
        0BFF89510BFF854E0AFF814C09FF7D4908FF794607FF754406FF714106FF684A
        33FF797979FF92908EFF492701FF623602F30702005F00000015000000000000
        00000000000000000000000000000000000000000000A75F0622AD6105FEAB67
        23FFDEDDDCFFDBDAD9FFC68036FFC2771AFFBE7419FFBA7118FFB66F17FFB26C
        16FFAE6914FFAA6714FFA66413FFA16112FFBFB9B4FFBAB9B7FF5B360EFF7C49
        0AFF8B520CFF89510BFF854E0AFF814C09FF7D4908FF794607FF754406FF7043
        12FF71706FFF9E9E9DFF4C2F17FF653802FF331A01770000001D000000010000
        00000000000000000000000000000000000000000000AD620642AF6306FFB580
        5AFFE2E2E2FFDCD3CDFFCA7C1CFFC6791BFFC2771AFFBE7419FFBA7118FFB66F
        17FFB26C16FFAE6914FFAA6714FFA66413FFBAA89DFFC5C5C5FF877B73FF6339
        06FF7F4B0AFF8B520CFF89510BFF854E0AFF814C09FF7D4908FF794607FF7544
        06FF706A66FF9FA09FFF5F4E43FF653702FF4927018C00000022000000010000
        00000000000000000000000000000000000000000000B1640652B16406FFBD8E
        70FFE4E4E4FFDDCEC5FFCE7E1DFFCA7C1CFFC6791BFFC2771AFFBE7419FFBA71
        18FFB66F17FFB26C16FFAE6914FFAA6714FFAB7649FFC6C2C0FFC2C1C1FF8376
        6DFF623806FF7F4A0AFF8B520CFF89510BFF854E0AFF814C09FF7D4908FF7946
        07FF736963FFA0A1A1FF6B5D55FF673902FF522C019500000023000000010000
        00000000000000000000000000000000000000000000B3650652B36506FFBF8F
        71FFE6E6E6FFE0D1C7FFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC2771AFFBE74
        19FFBA7118FFB66F17FFB26C16FFAE6914FFAA6714FFAE805CFFC5C1BEFFC3C3
        C2FF867A72FF653A07FF854F0BFF8D530CFF89510BFF854E0AFF814C09FF7D49
        08FF786E68FFA5A6A5FF6E5F56FF6A3B02FF552E01930000001F000000010000
        00000000000000000000000000000000000000000000B5660641B56606FFBC84
        5CFFE8E8E8FFE3DAD3FFD68320FFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC277
        1AFFBD7419FFB46D17FFAE6915FFB06A15FFAE6914FFAA6714FFAC7A50FFC5C0
        BDFFC2C1C1FF725E51FF79470AFF8F550DFF8E540CFF89510BFF854E0AFF814C
        0AFF7F7A76FFACADACFF685346FF703E03FF512B018300000018000000000000
        00000000000000000000000000000000000000000000B7670720B76706FEB76E
        25FFE8E6E5FFE7E6E5FFDA8D3DFFD6831FFFD2811EFFCE7E1DFFCA7C1CFFC679
        1BFFBA7219FF975C16FF895310FFA66414FFB16B16FFAE6914FFAA6714FFB28E
        74FFC9C9C9FFA29C97FF754409FF92570EFF91560DFF8E540CFF89510BFF8451
        1AFF8D8C8BFFB1B1B0FF5E3919FF764103FF3E2001650000000F000000000000
        00000000000000000000000000000000000000000000B5680E03B96806E8B767
        07FFE1D5CEFFEAEAEAFFE1AD87FFDA8620FFD6831FFFD2811EFFCE7E1DFFCA7C
        1CFFDBC1AFFFE4E1DEFF937D6FFF945911FFB16B16FFB26B16FFAD6914FFAB79
        50FFCDCDCDFFB1ACA9FF7D4A0BFF975B0FFF955A0EFF91560DFF8E540CFF8662
        48FFA1A2A2FFA8A4A2FF663803FF784203F10D04004100000007000000000000
        00000000000000000000000000000000000000000000BC7A3800BA6906A6B968
        06FFD2B4A2FFECECECFFE7D2C4FFDE8821FFDA8620FFD6831FFFD2811EFFCE7E
        1DFFDCB9A1FFEEEEEEFFC3BBB6FF77470CFF985B11FFA56413FF9F6012FFB29D
        8FFFD1D1D1FFADA29BFF90560FFF9D5E11FF9A5C10FF955A0EFF91560DFF9082
        7AFFB5B5B5FF918780FF744003FF733F02C40000002700000002000000000000
        0000000000000000000000000000000000000000000000000000BC6A074FBB69
        06FFBE7C47FFECE9E8FFEBEBEAFFE3A470FFDE8821FFDA8620FFD6831FFFD281
        1EFFD18841FFEEE7E3FFEDEDEDFFB8ADA6FF825F43FF845D3BFFAC9D93FFD7D6
        D6FFD2D0CFFF9D7250FFA26212FFA16112FF9E5F11FF9A5C10FF946843FFA9A9
        A8FFBCBBBAFF734F36FF7F4703FF6336027E0000001100000000000000000000
        0000000000000000000000000000000000000000000000000000BE6D0705BD6A
        06DBBB6906FFD8BFB0FFEDEEEEFFEADCD3FFE28F34FFDE8821FFDA8620FFD683
        1FFFD2811EFFD69B6CFFECE3DCFFEEEEEEFFEAEAEAFFE6E5E5FFE2E2E2FFD8D3
        CFFFB48B6EFFAA6714FFAA6714FFA66413FFA16112FF9D611DFFA49C96FFBFBF
        BFFFA0968FFF7B4403FF804803E61F0D00310000000400000000000000000000
        000000000000000000000000000000000000000000000000000000000000BE6C
        085EBD6A06FFBE7535FFE8E2DDFFEDEEEEFFE9CEBCFFE28C27FFDE8821FFDA86
        20FFD6831FFFD2811EFFCF8128FFD5A27DFFD7B49CFFD3B19AFFC89B7BFFB974
        29FFB56E17FFB26C16FFAE6914FFAA6714FFA66516FFA9968AFFC1C1C1FFBDBA
        B8FF7E4F29FF874C03FF703E02830000000F0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000C06D
        1402BF6C06BDBD6A06FFC7916DFFEDEBE8FFEDEDEDFFE9CEBCFFE28F34FFDE88
        21FFDA8620FFD6831FFFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC2771AFFBE74
        19FFBA7118FFB66F17FFB26C16FFAE6C23FFB3A093FFC6C6C6FFC7C6C5FF8F6E
        5AFF894D04FF854A04CC1B0B001F000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C06D071EBF6C06E7BD6A06FFCB9C7EFFEDEBE8FFEDEEEEFFEADCD3FFE3A4
        70FFDE8821FFDA8620FFD6831FFFD2811EFFCE7E1DFFCA7C1CFFC6791BFFC277
        1AFFBE7419FFBA7118FFB9865CFFC2B8B2FFCDCDCDFFCBCAC9FF9A7D6BFF8D4F
        04FF8D4F04EC6134023C00000005000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C06D0837BF6C06F0BD6A06FFC7916DFFE8E2DDFFEDEEEEFFEBEB
        EAFFE7D2C4FFE1AD88FFDB8D3DFFD68320FFD2811EFFCE7E1DFFCA7C1CFFC780
        37FFC79B7BFFCCBBB0FFD2D2D1FFD4D4D4FFCAC6C3FF9C765EFF925204FF9252
        04F3774203500000000700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005B3B0500C06D0837BF6C06E7BD6A06FFBE7535FFD8BFB0FFECE9
        E8FFECECECFFEAEAEAFFE7E6E5FFE4DAD4FFE0D1C7FFDDCFC5FFDCD3CDFFDCDB
        DAFFDBDBDBFFDADADAFFD6D4D3FFBBA89EFF995F2EFF985604FF965404EA7E46
        034B000000060000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C06D0A1EBF6C06BDBD6A06FFBB6906FFBE7C
        47FFD2B4A2FFE1D5CEFFE8E6E5FFE8E8E8FFE6E6E6FFE4E4E4FFE2E2E2FFDEDD
        DBFFD2C8C2FFBEA496FFA46C3FFF9F5A05FF9E5905FF985504C37C45032C0000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C0711002BE6C075EBD6A06DBBB69
        06FFB96806FFB76707FFB76E25FFBC845CFFBF9071FFBD8E70FFB6805AFFAB67
        23FFA75F05FFA65E05FFA45D05FFA05B05DD975505664A280109000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BE6B0E05BC6A
        074FBA6906A6B96806E8B76706FEB56606FFB36506FFB16406FFAF6306FFAC61
        05FEA96005E8A65E05A89F5A0553723F03090000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000BC7A3800B7680E03B7670720B5670641B3650652B1640652AE620642A75F
        0622834A04050401000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      Caption = 'Help'
      ShortCut = 112
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = 'About ...'
      OnClick = PopupMenu_Help_AboutClick
    end
  end
  object IdFTP1: TIdFTP
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 836
    Top = 581
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 868
    Top = 581
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = 0
    Left = 900
    Top = 581
  end
  object JvDataEmbedded1: TJvDataEmbedded
    Left = 617
    Top = 215
    EmbeddedData = {
      4A64000025646566696E65205052454649585F4F504552414E4453495A452064
      62203636680D0A0D0A494D4147455F5245534F555243455F444154415F49535F
      4449524543544F525920657175203830303030303030680D0A504147455F5245
      414457524954452065717520340D0A457863657074696F6E436F6E74696E7565
      457865637574696F6E2065717520300D0A0D0A444C4C5F50524F434553535F41
      54544143482065717520310D0A444C4C5F50524F434553535F44455441434820
      65717520300D0A0D0A494D4147455F53434E5F434E545F434F44452020202020
      2020202020202020202065717520303030303030303230680D0A494D4147455F
      53434E5F434E545F494E495449414C495A45445F444154412020206571752030
      3030303030303430680D0A494D4147455F53434E5F4D454D5F53484152454420
      20202020202020202020202065717520303130303030303030680D0A494D4147
      455F53434E5F4D454D5F45584543555445202020202020202020202020657175
      20303230303030303030680D0A494D4147455F53434E5F4D454D5F5245414420
      202020202020202020202020202065717520303430303030303030680D0A494D
      4147455F53434E5F4D454D5F5752495445202020202020202020202020202065
      717520303830303030303030680D0A0D0A4D454D5F434F4D4D49542065717520
      31303030680D0A0D0A425245414B504F494E5420657175203038303030303030
      33680D0A53494E474C455F5354455020657175203830303030303034680D0A41
      43434553535F56494F4C4154494F4E2065717520306330303030303035680D0A
      494E56414C49445F48414E444C452065717520304330303030303038680D0A49
      4E56414C49445F4C4F434B5F53455155454E4345206571752030433030303030
      3165680D0A494E54454745525F4449564944455F42595F5A45524F2065717520
      304330303030303934680D0A494E54454745525F4F564552464C4F5720657175
      20304330303030303935680D0A50524956494C454745445F494E535452554354
      494F4E2065717520304330303030303936680D0A0D0A73747275632065786365
      7074696F6E48616E646C65720D0A202020202E70457863657074696F6E207265
      73642031202020202020202020203B20455843455054494F4E5F5245434F5244
      0D0A202020202E70526567697374726174696F6E5265636F7264207265736420
      31203B20455843455054494F4E5F524547495354524154494F4E5F5245434F52
      440D0A202020202E70436F6E7465787420726573642031202020202020202020
      2020203B20434F4E544558540D0A656E6473747275630D0A0D0A53495A455F4F
      465F38303338375F524547495354455253206571752038300D0A4D4158494D55
      4D5F535550504F525445445F455854454E53494F4E20657175203531320D0A0D
      0A737472756320434F4E544558540D0A202020202E436F6E74657874466C6167
      7320207265736420310D0A202020203B434F4E544558545F44454255475F5245
      474953544552530D0A202020202E694472302020202020202020202072657364
      20310D0A202020202E69447231202020202020202020207265736420310D0A20
      2020202E69447232202020202020202020207265736420310D0A202020202E69
      447233202020202020202020207265736420310D0A202020202E694472362020
      20202020202020207265736420310D0A202020202E6944723720202020202020
      2020207265736420310D0A202020203B434F4E544558545F464C4F4154494E47
      5F504F494E540D0A202020202E436F6E74726F6C576F72642020207265736420
      310D0A202020202E537461747573576F7264202020207265736420310D0A2020
      20202E546167576F7264202020202020207265736420310D0A202020202E4572
      726F724F66667365742020207265736420310D0A202020202E4572726F725365
      6C6563746F72207265736420310D0A202020202E446174614F66667365742020
      20207265736420310D0A202020202E4461746153656C6563746F722020726573
      6420310D0A202020202E5265676973746572417265612020726573622053495A
      455F4F465F38303338375F5245474953544552530D0A202020202E4372304E70
      7853746174652020207265736420310D0A202020203B434F4E544558545F5345
      474D454E54530D0A202020202E72656747732020207265736420310D0A202020
      202E72656746732020207265736420310D0A202020202E726567457320202072
      65736420310D0A202020202E72656744732020207265736420310D0A20202020
      3B434F4E544558545F494E54454745520D0A202020202E726567456469202072
      65736420310D0A202020202E72656745736920207265736420310D0A20202020
      2E72656745627820207265736420310D0A202020202E72656745647820207265
      736420310D0A202020202E72656745637820207265736420310D0A202020202E
      72656745617820207265736420310D0A202020203B434F4E544558545F434F4E
      54524F4C0D0A202020202E72656745627020207265736420310D0A202020202E
      72656745697020207265736420310D0A202020202E7265674373202020726573
      6420310D0A202020202E726567466C6167207265736420310D0A202020202E72
      656745737020207265736420310D0A202020202E726567537320202072657364
      20310D0A202020203B434F4E544558545F455854454E4445445F524547495354
      4552530D0A202020202E457874656E6465645265676973746572732072657362
      204D4158494D554D5F535550504F525445445F455854454E53494F4E0D0A656E
      6473747275630D0A0D0A494D4147455F53495A454F465F53484F52545F4E414D
      452065717520380D0A0D0A737472756320494D4147455F444F535F4845414445
      520D0A20202E655F6D616769632020202020207265737720310D0A20202E655F
      63626C70202020202020207265737720310D0A20202E655F6370202020202020
      2020207265737720310D0A20202E655F63726C63202020202020207265737720
      310D0A20202E655F63706172686472202020207265737720310D0A20202E655F
      6D696E616C6C6F632020207265737720310D0A20202E655F6D6178616C6C6F63
      2020207265737720310D0A20202E655F73732020202020202020207265737720
      310D0A20202E655F73702020202020202020207265737720310D0A20202E655F
      6373756D202020202020207265737720310D0A20202E655F6970202020202020
      2020207265737720310D0A20202E655F63732020202020202020207265737720
      310D0A20202E655F6C6661726C6320202020207265737720310D0A20202E655F
      6F766E6F202020202020207265737720310D0A20202E655F7265732020202020
      2020207265737720340D0A20202E655F6F656D69642020202020207265737720
      310D0A20202E655F6F656D696E666F202020207265737720310D0A20202E655F
      7265733220202020202020726573772031300D0A20202E655F6C66616E657720
      202020207265736420310D0A656E6473747275630D0A0D0A737472756320494D
      4147455F4E545F484541444552530D0A20202E5369676E617475726520202020
      20202020207265736420310D0A3B20202E46696C654865616465722020202020
      2020207265736220494D4147455F46494C455F4845414445525F73697A650D0A
      3B20202E4F7074696F6E616C486561646572202020207265736220494D414745
      5F4F5054494F4E414C5F48454144455233325F73697A650D0A656E6473747275
      630D0A0D0A737472756320494D4147455F46494C455F4845414445520D0A2020
      2E4D616368696E6520202020202020202020202020207265737720310D0A2020
      2E4E756D6265724F6653656374696F6E7320202020207265737720310D0A2020
      2E54696D65446174655374616D7020202020202020207265736420310D0A2020
      2E506F696E746572546F53796D626F6C5461626C65207265736420310D0A2020
      2E4E756D6265724F6653796D626F6C732020202020207265736420310D0A2020
      2E53697A654F664F7074696F6E616C486561646572207265737720310D0A2020
      2E4368617261637465726973746963732020202020207265737720310D0A656E
      6473747275630D0A0D0A494D4147455F46494C455F4D414348494E455F493338
      362020202020202020206571752030313463680D0A494D4147455F46494C455F
      444C4C20657175203032303030680D0A494D4147455F4E545F4F5054494F4E41
      4C5F48445233325F4D41474943206571752030313062680D0A0D0A7374727563
      20494D4147455F4F5054494F4E414C5F48454144455233320D0A20202E4D6167
      6963202020202020202020202020202020202020202020202020726573772031
      0D0A20202E4D616A6F724C696E6B657256657273696F6E202020202020202020
      20207265736220310D0A20202E4D696E6F724C696E6B657256657273696F6E20
      202020202020202020207265736220310D0A20202E53697A654F66436F646520
      2020202020202020202020202020202020207265736420310D0A20202E53697A
      654F66496E697469616C697A6564446174612020202020202020726573642031
      0D0A20202E53697A654F66556E696E697469616C697A65644461746120202020
      20207265736420310D0A20202E416464726573734F66456E747279506F696E74
      202020202020202020207265736420310D0A20202E426173654F66436F646520
      2020202020202020202020202020202020207265736420310D0A20202E426173
      654F664461746120202020202020202020202020202020202020726573642031
      0D0A20202E496D61676542617365202020202020202020202020202020202020
      20207265736420310D0A20202E53656374696F6E416C69676E6D656E74202020
      202020202020202020207265736420310D0A20202E46696C65416C69676E6D65
      6E74202020202020202020202020202020207265736420310D0A20202E4D616A
      6F724F7065726174696E6753797374656D56657273696F6E2020726573772031
      0D0A20202E4D696E6F724F7065726174696E6753797374656D56657273696F6E
      20207265737720310D0A20202E4D616A6F72496D61676556657273696F6E2020
      202020202020202020207265737720310D0A20202E4D696E6F72496D61676556
      657273696F6E2020202020202020202020207265737720310D0A20202E4D616A
      6F7253756273797374656D56657273696F6E2020202020202020726573772031
      0D0A20202E4D696E6F7253756273797374656D56657273696F6E202020202020
      20207265737720310D0A20202E57696E333256657273696F6E56616C75652020
      202020202020202020207265736420310D0A20202E53697A654F66496D616765
      2020202020202020202020202020202020207265736420310D0A20202E53697A
      654F664865616465727320202020202020202020202020202020726573642031
      0D0A20202E436865636B53756D20202020202020202020202020202020202020
      20207265736420310D0A20202E53756273797374656D20202020202020202020
      202020202020202020207265737720310D0A20202E446C6C4368617261637465
      7269737469637320202020202020202020207265737720310D0A20202E53697A
      654F66537461636B526573657276652020202020202020202020726573642031
      0D0A20202E53697A654F66537461636B436F6D6D697420202020202020202020
      20207265736420310D0A20202E53697A654F6648656170526573657276652020
      202020202020202020207265736420310D0A20202E53697A654F664865617043
      6F6D6D6974202020202020202020202020207265736420310D0A20202E4C6F61
      646572466C616773202020202020202020202020202020202020726573642031
      0D0A20202E4E756D6265724F66527661416E6453697A65732020202020202020
      20207265736420310D0A20202E446174614469726563746F7279202020202020
      202020202020202020207265736220300D0A656E6473747275630D0A0D0A7374
      72756320494D4147455F444154415F4449524543544F52590D0A202056697274
      75616C41646472657373202020207265736420310D0A20206973697A65202020
      202020202020202020207265736420310D0A656E6473747275630D0A0D0A7374
      72756320494D4147455F444154415F4449524543544F52595F31360D0A202020
      202E4578706F727473564120202020202020207265736420310D0A202020202E
      4578706F72747353697A652020202020207265736420310D0A202020202E496D
      706F727473564120202020202020207265736420310D0A202020202E496D706F
      72747353697A652020202020207265736420310D0A202020202E5265736F7572
      63655641202020202020207265736420310D0A202020202E5265736F75726365
      53697A6520202020207265736420310D0A202020202E457863657074696F6E20
      202020202020207265736420320D0A202020202E536563757269747920202020
      20202020207265736420320D0A202020202E4669787570735641202020202020
      2020207265736420310D0A202020202E46697875707353697A65202020202020
      207265736420310D0A202020202E446562756756412020202020202020202072
      65736420310D0A202020202E446562756753697A652020202020202020726573
      6420310D0A202020202E4465736372697074696F6E2020202020207265736420
      320D0A202020202E4D495053202020202020202020202020207265736420320D
      0A202020202E544C5356412020202020202020202020207265736420310D0A20
      2020202E544C5353697A65202020202020202020207265736420310D0A202020
      202E4C6F6164202020202020202020202020207265736420320D0A202020202E
      426F756E64496D706F72747356412020207265736420310D0A202020202E426F
      756E64496D706F72747353697A65207265736420310D0A202020202E49415456
      412020202020202020202020207265736420310D0A202020202E49415453697A
      65202020202020202020207265736420310D0A202020202E44656C6179496D70
      6F72747356412020207265736420310D0A202020202E44656C6179496D706F72
      747353697A65207265736420310D0A202020202E434F4D202020202020202020
      20202020207265736420320D0A202020202E7265736572766564202020202020
      2020207265736420320D0A656E6473747275630D0A0D0A737472756320494D41
      47455F53454354494F4E5F4845414445520D0A202020202E4E616D6520202020
      202020202020202020202020202020207265736220494D4147455F53495A454F
      465F53484F52545F4E414D450D0A202020202E5669727475616C53697A652020
      20202020202020202020207265736420310D0A202020202E5669727475616C41
      646472657373202020202020202020207265736420310D0A202020202E53697A
      654F665261774461746120202020202020202020207265736420310D0A202020
      202E506F696E746572546F526177446174612020202020202020726573642031
      0D0A202020202E506F696E746572546F52656C6F636174696F6E732020202072
      65736420310D0A202020202E506F696E746572546F4C696E656E756D62657273
      202020207265736420310D0A202020202E4E756D6265724F6652656C6F636174
      696F6E7320202020207265737720310D0A202020202E4E756D6265724F664C69
      6E656E756D6265727320202020207265737720310D0A202020202E4368617261
      637465726973746963732020202020202020207265736420310D0A656E647374
      7275630D0A0D0A0D0A494D4147455F53554253595354454D5F57494E444F5753
      5F4355492020202065717520330D0A494D4147455F53554253595354454D5F57
      494E444F57535F4755492020202065717520320D0A494D4147455F46494C455F
      52454C4F43535F53545249505045442020202020202020206571752030303030
      31680D0A494D4147455F46494C455F45584543555441424C455F494D41474520
      20202020202020657175203030303032680D0A494D4147455F46494C455F4C49
      4E455F4E554D535F535452495050454420202020202065717520303030303468
      0D0A494D4147455F46494C455F4C4F43414C5F53594D535F5354524950504544
      2020202020657175203030303038680D0A494D4147455F46494C455F33324249
      545F4D414348494E452020202020202020202020657175203030313030680D0A
      0D0A256D6163726F205F20300D0A202020206E6F700D0A25656E646D6163726F
      0D0A0D0A256D6163726F205F6320300D0A20202020696E74330D0A2020202061
      6C69676E20342C20696E74330D0A25656E646D6163726F0D0A0D0A256D616372
      6F205F6420300D0A20202020646220300D0A20202020616C69676E2031362C20
      646220300D0A25656E646D6163726F0D0A0D0A0D0A256D6163726F2073657453
      454820310D0A2020202070757368202025310D0A20202020707573682064776F
      7264205B66733A305D0D0A202020206D6F76205B66733A305D2C206573700D0A
      25656E646D6163726F0D0A0D0A256D6163726F20636C65617253454820300D0A
      20202020706F702064776F7264205B66733A305D0D0A20202020616464206573
      702C20340D0A25656E646D6163726F0D0A0D0A737472756320494D4147455F4F
      5054494F4E414C5F48454144455236340D0A20202E4D61676963202020202020
      2020202020202020202020202020202020207265737720310D0A20202E4D616A
      6F724C696E6B657256657273696F6E2020202020202020202020726573622031
      0D0A20202E4D696E6F724C696E6B657256657273696F6E202020202020202020
      20207265736220310D0A20202E53697A654F66436F6465202020202020202020
      202020202020202020207265736420310D0A20202E53697A654F66496E697469
      616C697A65644461746120202020202020207265736420310D0A20202E53697A
      654F66556E696E697469616C697A656444617461202020202020726573642031
      0D0A20202E416464726573734F66456E747279506F696E742020202020202020
      20207265736420310D0A20202E426173654F66436F6465202020202020202020
      202020202020202020207265736420310D0A20202E496D616765426173652020
      2020202020202020202020202020202020207265737120310D0A20202E536563
      74696F6E416C69676E6D656E7420202020202020202020202020726573642031
      0D0A20202E46696C65416C69676E6D656E742020202020202020202020202020
      20207265736420310D0A20202E4D616A6F724F7065726174696E675379737465
      6D56657273696F6E20207265737720310D0A20202E4D696E6F724F7065726174
      696E6753797374656D56657273696F6E20207265737720310D0A20202E4D616A
      6F72496D61676556657273696F6E202020202020202020202020726573772031
      0D0A20202E4D696E6F72496D61676556657273696F6E20202020202020202020
      20207265737720310D0A20202E4D616A6F7253756273797374656D5665727369
      6F6E20202020202020207265737720310D0A20202E4D696E6F72537562737973
      74656D56657273696F6E20202020202020207265737720310D0A20202E57696E
      333256657273696F6E56616C7565202020202020202020202020726573642031
      0D0A20202E53697A654F66496D61676520202020202020202020202020202020
      20207265736420310D0A20202E53697A654F6648656164657273202020202020
      202020202020202020207265736420310D0A20202E436865636B53756D202020
      2020202020202020202020202020202020207265736420310D0A20202E537562
      73797374656D2020202020202020202020202020202020202020726573772031
      0D0A20202E446C6C436861726163746572697374696373202020202020202020
      20207265737720310D0A20202E53697A654F66537461636B5265736572766520
      202020202020202020207265737120310D0A20202E53697A654F66537461636B
      436F6D6D69742020202020202020202020207265737120310D0A20202E53697A
      654F664865617052657365727665202020202020202020202020726573712031
      0D0A20202E53697A654F6648656170436F6D6D69742020202020202020202020
      20207265737120310D0A20202E4C6F61646572466C6167732020202020202020
      202020202020202020207265736420310D0A20202E4E756D6265724F66527661
      416E6453697A6573202020202020202020207265736420310D0A20202E446174
      614469726563746F727920202020202020202020202020202020726573622030
      0D0A656E6473747275630D0A0D0A494D4147455F46494C455F4D414348494E45
      5F414D44363420202020202020206571752038363634680D0A494D4147455F4E
      545F4F5054494F4E414C5F48445236345F4D4147494320202065717520303230
      62680D0A0D0A494D4147455F52454C5F42415345445F4142534F4C5554452020
      20202020206571752030203B207573656420666F722070616464696E670D0A49
      4D4147455F52454C5F42415345445F4849474820202020202020202020206571
      7520310D0A494D4147455F52454C5F42415345445F4C4F572020202020202020
      202020206571752032203B20646F6573206E6F7468696E670D0A494D4147455F
      52454C5F42415345445F484947484C4F5720202020202020206571752033203B
      0D0A494D4147455F52454C5F42415345445F4849474841444A20202020202020
      206571752034203B2074616B657320616E20617267756D656E74206275742061
      637475616C6C7920646F6573206E6F7468696E670D0A494D4147455F52454C5F
      42415345445F4D4950535F4A4D50414444522020206571752035203B20756E74
      696C205737206F6E6C790D0A494D4147455F52454C5F42415345445F53454354
      494F4E20202020202020206571752036203B20756E74696C205737206F6E6C79
      203B20646F6573206E6F7468696E6720616E797761790D0A494D4147455F5245
      4C5F42415345445F52454C3332202020202020202020206571752037203B2075
      6E74696C205737206F6E6C79203B20646F6573206E6F7468696E6720616E7977
      61790D0A3B203820697320616C776179732072656A65637465642C2068697374
      6F726963616C6C790D0A494D4147455F52454C5F42415345445F4D4950535F4A
      4D504144445231362065717520390D0A494D4147455F52454C5F42415345445F
      494136345F494D4D3634202020202065717520390D0A494D4147455F52454C5F
      42415345445F4449523634202020202020202020206571752031300D0A494D41
      47455F52454C5F42415345445F484947483341444A2020202020202065717520
      3131203B2057696E326B206F6E6C790D0A0D0A435220657175203064680D0A45
      4F4620657175203161680D0A4C4620657175203061680D0A0D0A737472756320
      494D4147455F5245534F555243455F4449524543544F52590D0A202E43686172
      61637465726973746963732020202020202020207265736420310D0A202E5469
      6D65446174655374616D7020202020202020202020207265736420310D0A202E
      4D616A6F7256657273696F6E2020202020202020202020207265737720310D0A
      202E4D696E6F7256657273696F6E202020202020202020202020726573772031
      0D0A202E4E756D6265724F664E616D6564456E74726965732020202072657377
      20310D0A202E4E756D6265724F664964456E7472696573202020202020207265
      737720310D0A656E6473747275630D0A0D0A737472756320494D4147455F5245
      534F555243455F4449524543544F52595F454E5452590D0A202020202E4E616D
      654944207265736420310D0A202020202E4F6666736574546F44617461207265
      736420310D0A656E6473747275630D0A0D0A737472756320494D4147455F5245
      534F555243455F444154415F454E5452590D0A202020202E4F6666736574546F
      44617461207265736420310D0A202020202E53697A6531202020202020202072
      65736420310D0A202020202E436F64655061676520202020207265736420310D
      0A202020202E526573657276656420202020207265736420310D0A656E647374
      7275630D0A0D0A7374727563205F494D4147455F44454C41595F494D504F5254
      5F44455343524950544F520D0A202020202E6772417474727320202020202020
      72657364203120203B20617474726962757465730D0A202020202E727661444C
      4C4E616D652020202072657364203120203B2052564120746F20646C6C206E61
      6D650D0A202020202E727661486D6F642020202020202072657364203120203B
      20525641206F66206D6F64756C652068616E646C650D0A202020202E72766149
      4154202020202020202072657364203120203B20525641206F66207468652049
      41540D0A202020202E727661494E54202020202020202072657364203120203B
      20525641206F662074686520494E540D0A202020202E727661426F756E644941
      5420202072657364203120203B20525641206F6620746865206F7074696F6E61
      6C20626F756E64204941540D0A202020202E727661556E6C6F61644941542020
      72657364203120203B20525641206F66206F7074696F6E616C20636F7079206F
      66206F726967696E616C204941540D0A202020202E647754696D655374616D70
      20202072657364203120203B2030206966206E6F7420626F756E640D0A656E64
      73747275630D0A0D0A7374727563205452554E435F4F5054494F4E414C5F4845
      4144455233320D0A20202E4D6167696320202020202020202020202020202020
      20202020202020207265737720310D0A20202E4D616A6F724C696E6B65725665
      7273696F6E20202020202020202020207265736220310D0A20202E4D696E6F72
      4C696E6B657256657273696F6E20202020202020202020207265736220310D0A
      20202E53697A654F66436F646520202020202020202020202020202020202020
      7265736420310D0A20202E53697A654F66496E697469616C697A656444617461
      20202020202020207265736420310D0A20202E53697A654F66556E696E697469
      616C697A6564446174612020202020207265736420310D0A20202E4164647265
      73734F66456E747279506F696E74202020202020202020207265736420310D0A
      20202E426173654F66436F646520202020202020202020202020202020202020
      7265736420310D0A20202E426173654F66446174612020202020202020202020
      20202020202020207265736420310D0A20202E496D6167654261736520202020
      202020202020202020202020202020207265736420310D0A20202E5365637469
      6F6E416C69676E6D656E74202020202020202020202020207265736420310D0A
      20202E46696C65416C69676E6D656E7420202020202020202020202020202020
      7265736420310D0A20202E4D616A6F724F7065726174696E6753797374656D56
      657273696F6E20207265737720310D0A20202E4D696E6F724F7065726174696E
      6753797374656D56657273696F6E20207265737720310D0A20202E4D616A6F72
      496D61676556657273696F6E2020202020202020202020207265737720310D0A
      20202E4D696E6F72496D61676556657273696F6E202020202020202020202020
      7265737720310D0A20202E4D616A6F7253756273797374656D56657273696F6E
      20202020202020207265737720310D0A20202E4D696E6F725375627379737465
      6D56657273696F6E20202020202020207265737720310D0A20202E57696E3332
      56657273696F6E56616C75652020202020202020202020207265736420310D0A
      20202E53697A654F66496D616765202020202020202020202020202020202020
      7265736420310D0A20202E53697A654F66486561646572732020202020202020
      20202020202020207265736420310D0A20202E436865636B53756D2020202020
      202020202020202020202020202020207265736420310D0A20202E5375627379
      7374656D20202020202020202020202020202020202020207265736220312020
      3B207472756E6361746564206173206120627974650D0A20203B206E6F206D6F
      726520646174610D0A656E6473747275630D0A0D0A73747275632056535F4649
      58454446494C45494E464F0D0A20202E64775369676E61747572652020202020
      2020202020207265736420310D0A20202E6477537472756356657273696F6E20
      202020202020207265736420310D0A20202E647746696C6556657273696F6E4D
      53202020202020207265736420310D0A20202E647746696C6556657273696F6E
      4C53202020202020207265736420310D0A20202E647750726F64756374566572
      73696F6E4D53202020207265736420310D0A20202E647750726F647563745665
      7273696F6E4C53202020207265736420310D0A20202E647746696C65466C6167
      734D61736B202020202020207265736420310D0A20202E647746696C65466C61
      677320202020202020202020207265736420310D0A20202E647746696C654F53
      20202020202020202020202020207265736420310D0A20202E647746696C6554
      7970652020202020202020202020207265736420310D0A20202E647746696C65
      537562747970652020202020202020207265736420310D0A20202E647746696C
      65446174654D53202020202020202020207265736420310D0A20202E64774669
      6C65446174654C53202020202020202020207265736420310D0A656E64737472
      75630D0A0D0A43524541544550524F434553535F4D414E49464553545F524553
      4F555243455F49442045515520310D0A49534F4C4154494F4E41574152455F4D
      414E49464553545F5245534F555243455F49442045515520320D0A49534F4C41
      54494F4E41574152455F4E4F535441544943494D504F52545F4D414E49464553
      545F5245534F555243455F49442045515520330D0A0D0A0D0A73747275632041
      435443545820202020202020202020202020202020202020202020203B207479
      70656465662073747275637420746167414354435458207B0D0A2E636253697A
      65207265736420312020202020202020202020202020202020202020203B2020
      20554C4F4E47202020636253697A653B0D0A2E6477466C616773207265736420
      3120202020202020202020202020202020202020203B20202044574F52442020
      206477466C6167733B0D0A2E6C70536F75726365207265736420312020202020
      20202020202020202020202020203B2020204C504357535452206C70536F7572
      63653B0D0A2E7750726F636573736F7241726368697465637475726520726573
      77203120202020203B2020205553484F525420207750726F636573736F724172
      636869746563747572653B0D0A2E774C616E6749642072657377203120202020
      202020202020202020202020202020203B2020204C414E4749442020774C616E
      6749643B0D0A2E6C70417373656D626C794469726563746F7279207265736420
      3120202020202020203B2020204C504354535452206C70417373656D626C7944
      69726563746F72793B0D0A2E6C705265736F757263654E616D65207265736420
      31202020202020202020202020203B2020204C504354535452206C705265736F
      757263654E616D653B0D0A2E6C704170706C69636174696F6E4E616D65207265
      73642031202020202020202020203B2020204C504354535452206C704170706C
      69636174696F6E4E616D653B0D0A2E684D6F64756C6520726573642031202020
      20202020202020202020202020202020203B202020484D4F44554C4520684D6F
      64756C653B0D0A656E6473747275632020202020202020202020202020202020
      202020202020202020203B207D204143544354582C202A504143544354583B0D
      0A0D0A4143544354585F464C41475F50524F434553534F525F41524348495445
      43545552455F56414C49442065717520310D0A4143544354585F464C41475F4C
      414E4749445F56414C49442065717520320D0A4143544354585F464C41475F41
      5353454D424C595F4449524543544F52595F56414C49442065717520340D0A41
      43544354585F464C41475F5245534F555243455F4E414D455F56414C49442065
      717520380D0A4143544354585F464C41475F5345545F50524F434553535F4445
      4641554C54206571752031360D0A4143544354585F464C41475F4150504C4943
      4154494F4E5F4E414D455F56414C4944206571752033320D0A4143544354585F
      464C41475F484D4F44554C455F56414C494420657175203132380D0A0D0A3B20
      776964656368617220737472696E67206D6163726F0D0A256D6163726F205749
      444520310D0A2561737369676E2025255F5F6920310D0A257374726C656E2025
      255F5F6C656E2025310D0A257265702025255F5F6C656E0D0A09257375627374
      722025255F5F632025312025255F5F690D0A090964622025255F5F630D0A0909
      646220300D0A092561737369676E2025255F5F692025255F5F69202B20310D0A
      25656E647265700D0A09646220302C20300D0A25656E646D6163726F0D0A0D0A
      256D6163726F205F776964657374725F6E6F3020310D0A2561737369676E2025
      255F5F6920310D0A257374726C656E2025255F5F6C656E2025310D0A25726570
      2025255F5F6C656E0D0A09257375627374722025255F5F632025312025255F5F
      690D0A090964622025255F5F630D0A0909646220300D0A092561737369676E20
      25255F5F692025255F5F69202B20310D0A25656E647265700D0A25656E646D61
      63726F0D0A0D0A256D6163726F205F5F737472696E6720320D0A252573747269
      6E673A0D0A6477202525534C454E0D0A647720252556414C4C454E202F203220
      3B2064616D6D697420210D0A64772031203B207465787420747970650D0A5749
      44452025310D0A09616C69676E20342C20646220300D0A252576616C3A0D0A09
      574944452025320D0A09252556414C4C454E206571752024202D20252576616C
      0D0A09616C69676E20342C20646220300D0A2525534C454E206571752024202D
      202525737472696E670D0A25656E646D6163726F0D0A0D0A0D0A737472756320
      52554E54494D455F46554E4354494F4E0D0A202020202E46756E6374696F6E53
      74617274207265736420310D0A202020202E46756E6374696F6E456E64202020
      7265736420310D0A202020202E556E77696E64496E666F202020207265736420
      310D0A656E6473747275630D0A0D0A737472756320554E57494E445F494E464F
      0D0A202020202E566572335F466C6167732020202020726573622031203B2076
      657273696F6E7320616E6420666C6167730D0A202020202E50726F6C6F675369
      7A6520202020207265736220310D0A202020202E436E74556E77696E64436F64
      6573207265736220310D0A202020202E46725265675F46725265674F66662072
      6573622031203B206672616D6520726567697374657220616E64206F66667365
      74730D0A202020203B20646420457863657074696F6E48616E646C6572206F72
      2046756E6374696F6E456E7472790D0A202020203B20457863657074696F6E44
      6174610D0A656E6473747275630D0A0D0A737472756320554E57494E445F434F
      44450D0A202020202E50726F6C6F674F666620202020207265736220310D0A20
      2020202E4F70436F64655F4F70496E666F20726573622031203B206F70657261
      74696F6E20636F646520616E6420696E666F0D0A656E6473747275630D0A0D0A
      554E575F464C41475F4548414E444C45522065717520310D0A0D0A7374727563
      20494D4147455F44454255475F4449524543544F52590D0A202020202E436861
      72616374657269737469637320207265736420310D0A202020202E54696D6544
      6174655374616D70202020207265736420310D0A202020202E4D616A6F725665
      7273696F6E20202020207265737720310D0A202020202E4D696E6F7256657273
      696F6E20202020207265737720310D0A202020202E5479706520202020202020
      2020202020207265736420310D0A202020202E53697A654F6644617461202020
      202020207265736420310D0A202020202E416464726573734F66526177446174
      61207265736420310D0A202020202E506F696E746572546F5261774461746120
      7265736420310D0A656E6473747275630D0A0D0A494D4147455F44454255475F
      545950455F434F46462065717520310D0A494D4147455F44454255475F545950
      455F434F4445564945572065717520320D0A494D4147455F44454255475F5459
      50455F4D4953432065717520340D0A0D0A53594D4F50545F4445425547206571
      7520303830303030303030680D0A0D0A737472756320494D4147455F4558504F
      52545F4449524543544F52590D0A202020202E43686172616374657269737469
      6373202020202020207265736420310D0A202020202E54696D65446174655374
      616D702020202020202020207265736420310D0A202020202E4D616A6F725665
      7273696F6E202020202020202020207265737720310D0A202020202E4D696E6F
      7256657273696F6E202020202020202020207265737720310D0A202020202E6E
      4E616D6520202020202020202020202020202020207265736420310D0A202020
      202E6E4261736520202020202020202020202020202020207265736420310D0A
      202020202E4E756D6265724F6646756E6374696F6E7320202020207265736420
      310D0A202020202E4E756D6265724F664E616D65732020202020202020207265
      736420310D0A202020202E416464726573734F6646756E6374696F6E73202020
      207265736420310D0A202020202E416464726573734F664E616D657320202020
      202020207265736420310D0A202020202E416464726573734F664E616D654F72
      64696E616C73207265736420310D0A656E6473747275630D0A0D0A7374727563
      20494D4147455F494D504F52545F44455343524950544F520D0A202020202E4F
      726967696E616C46697273745468756E6B20726573642031203B204368617261
      637465726973746963730D0A202020202E54696D65446174655374616D702020
      202020207265736420310D0A202020202E466F72776172646572436861696E20
      202020207265736420310D0A202020202E4E616D653120202020202020202020
      202020207265736420310D0A202020202E46697273745468756E6B2020202020
      202020207265736420310D0A656E6473747275630D0A0D0A256D6163726F205F
      696D706F72745F64657363726970746F7220310D0A69737472756320494D4147
      455F494D504F52545F44455343524950544F520D0A20202020617420494D4147
      455F494D504F52545F44455343524950544F522E4F726967696E616C46697273
      745468756E6B2C2064642025315F68696E746E616D6573202D20494D41474542
      4153450D0A20202020617420494D4147455F494D504F52545F44455343524950
      544F522E4E616D6531202020202020202020202020202C206464202531202D20
      494D414745424153450D0A20202020617420494D4147455F494D504F52545F44
      455343524950544F522E46697273745468756E6B20202020202020202C206464
      2025315F696174202D20494D414745424153450D0A69656E640D0A25656E646D
      6163726F0D0A0D0A737472756320494D4147455F4C4F41445F434F4E4649475F
      4449524543544F525933320D0A202020202E53697A6520202020202020202020
      20202020202020202020202020202020207265736420310D0A202020202E5469
      6D65446174655374616D70202020202020202020202020202020202020726573
      6420310D0A202020202E4D616A6F7256657273696F6E20202020202020202020
      2020202020202020207265737720310D0A202020202E4D696E6F725665727369
      6F6E202020202020202020202020202020202020207265737720310D0A202020
      202E476C6F62616C466C616773436C6561722020202020202020202020202020
      207265736420310D0A202020202E476C6F62616C466C61677353657420202020
      202020202020202020202020207265736420310D0A202020202E437269746963
      616C53656374696F6E44656661756C7454696D656F757420207265736420310D
      0A202020202E4465436F6D6D697446726565426C6F636B5468726573686F6C64
      20202020207265736420310D0A202020202E4465436F6D6D6974546F74616C46
      7265655468726573686F6C6420202020207265736420310D0A202020202E4C6F
      636B5072656669785461626C6520202020202020202020202020202020726573
      642031203B2056410D0A202020202E4D6178696D756D416C6C6F636174696F6E
      53697A65202020202020202020207265736420310D0A202020202E5669727475
      616C4D656D6F72795468726573686F6C64202020202020202020726573642031
      0D0A202020202E50726F6365737348656170466C616773202020202020202020
      2020202020207265736420310D0A202020202E50726F63657373416666696E69
      74794D61736B2020202020202020202020207265736420310D0A202020202E43
      534456657273696F6E2020202020202020202020202020202020202020207265
      737720310D0A202020202E526573657276656431202020202020202020202020
      202020202020202020207265737720310D0A202020202E456469744C69737420
      20202020202020202020202020202020202020202020726573642031203B2056
      410D0A202020202E5365637572697479436F6F6B696520202020202020202020
      20202020202020726573642031203B2056410D0A202020202E534548616E646C
      65725461626C652020202020202020202020202020202020726573642031203B
      2056410D0A202020202E534548616E646C6572436F756E742020202020202020
      2020202020202020207265736420310D0A202020202E47756172644346436865
      636B46756E6374696F6E506F696E74657220202020726573642031203B205641
      0D0A202020202E52657365727665643220202020202020202020202020202020
      2020202020207265736420310D0A202020202E4775617264434646756E637469
      6F6E5461626C652020202020202020202020726573642031203B2056410D0A20
      2020202E4775617264434646756E6374696F6E436F756E742020202020202020
      2020207265736420310D0A202020202E4775617264466C616773202020202020
      2020202020202020202020202020207265736420310D0A656E6473747275630D
      0A0D0A737472756320494D4147455F4C4F41445F434F4E4649475F4449524543
      544F525936340D0A202020202E53697A65202020202020202020202020202020
      2020202020202020202020207265736420310D0A202020202E54696D65446174
      655374616D702020202020202020202020202020202020207265736420310D0A
      202020202E4D616A6F7256657273696F6E202020202020202020202020202020
      202020207265737720310D0A202020202E4D696E6F7256657273696F6E202020
      202020202020202020202020202020207265737720310D0A202020202E476C6F
      62616C466C616773436C65617220202020202020202020202020202072657364
      20310D0A202020202E476C6F62616C466C616773536574202020202020202020
      20202020202020207265736420310D0A202020202E437269746963616C536563
      74696F6E44656661756C7454696D656F757420207265736420310D0A20202020
      2E4465436F6D6D697446726565426C6F636B5468726573686F6C642020202020
      7265737120310D0A202020202E4465436F6D6D6974546F74616C467265655468
      726573686F6C6420202020207265737120310D0A202020202E4C6F636B507265
      6669785461626C6520202020202020202020202020202020726573712031203B
      2056410D0A202020202E4D6178696D756D416C6C6F636174696F6E53697A6520
      2020202020202020207265737120310D0A202020202E5669727475616C4D656D
      6F72795468726573686F6C642020202020202020207265737120310D0A202020
      202E50726F63657373416666696E6974794D61736B2020202020202020202020
      207265737120310D0A202020202E50726F6365737348656170466C6167732020
      202020202020202020202020207265736420310D0A202020202E435344566572
      73696F6E2020202020202020202020202020202020202020207265737720310D
      0A202020202E5265736572766564312020202020202020202020202020202020
      20202020207265737720310D0A202020202E456469744C697374202020202020
      2020202020202020202020202020202020726573712031203B2056410D0A2020
      20202E5365637572697479436F6F6B6965202020202020202020202020202020
      2020726573712031203B2056410D0A202020202E534548616E646C6572546162
      6C652020202020202020202020202020202020726573712031203B2056410D0A
      202020202E534548616E646C6572436F756E7420202020202020202020202020
      202020207265737120310D0A202020202E47756172644346436865636B46756E
      6374696F6E506F696E74657220202020726573712031203B2056410D0A202020
      202E526573657276656432202020202020202020202020202020202020202020
      207265737120310D0A202020202E4775617264434646756E6374696F6E546162
      6C652020202020202020202020726573712031203B2056410D0A202020202E47
      75617264434646756E6374696F6E436F756E7420202020202020202020207265
      737120310D0A202020202E4775617264466C6167732020202020202020202020
      202020202020202020207265736420310D0A656E6473747275630D0A0D0A5254
      5F49434F4E202020202020206571752020330D0A52545F535452494E47202020
      20206571752020360D0A52545F47524F55505F49434F4E206571752031340D0A
      52545F56455253494F4E202020206571752031360D0A52545F4D414E49464553
      542020206571752032340D0A0D0A73747275632047525049434F4E4449520D0A
      202020202E6964526573657276656420726573772031203B20616C7761797320
      30202D20656E666F726365640D0A202020202E69645479706520202020207265
      73772031203B20616C77617973203120666F722069636F6E730D0A202020202E
      6964436F756E74202020207265737720310D0A656E6473747275630D0A0D0A73
      747275632047525049434F4E444952454E5452590D0A202020202E6257696474
      68202020202020207265736220310D0A202020202E6248656967687420202020
      20207265736220310D0A202020202E62436F6C6F72436F756E74202072657362
      20310D0A202020202E625265736572766564202020207265736220310D0A2020
      20202E77506C616E65732020202020207265737720310D0A202020202E774269
      74436F756E74202020207265737720310D0A202020202E64774279746573496E
      526573207265736420310D0A202020202E6E4964202020202020202020207265
      737720310D0A656E6473747275630D0A0D0A256D6163726F205F7265736F7572
      63654469726563746F7279456E74727920320D0A69737472756320494D414745
      5F5245534F555243455F4449524543544F52595F454E5452590D0A2020202061
      7420494D4147455F5245534F555243455F4449524543544F52595F454E545259
      2E4E616D6549442C2064642025310D0A20202020617420494D4147455F524553
      4F555243455F4449524543544F52595F454E5452592E4F6666736574546F4461
      74612C20646420494D4147455F5245534F555243455F444154415F49535F4449
      524543544F5259207C20282532202D204469726563746F72795F456E7472795F
      5265736F75726365290D0A69656E640D0A25656E646D6163726F0D0A0D0A256D
      6163726F205F7265736F757263655F747265652033203B2049442C204F666673
      65742C2053697A650D0A69737472756320494D4147455F5245534F555243455F
      4449524543544F52590D0A20202020617420494D4147455F5245534F55524345
      5F4449524543544F52592E4E756D6265724F664964456E74726965732C206477
      20310D0A69656E640D0A69737472756320494D4147455F5245534F555243455F
      4449524543544F52595F454E5452590D0A20202020617420494D4147455F5245
      534F555243455F4449524543544F52595F454E5452592E4E616D6549442C2064
      642025310D0A20202020617420494D4147455F5245534F555243455F44495245
      43544F52595F454E5452592E4F6666736574546F446174612C20646420494D41
      47455F5245534F555243455F444154415F49535F4449524543544F5259207C20
      2825256C616E6775616765202D204469726563746F72795F456E7472795F5265
      736F75726365290D0A69656E640D0A0D0A25256C616E67756167653A0D0A6973
      7472756320494D4147455F5245534F555243455F4449524543544F52590D0A20
      202020617420494D4147455F5245534F555243455F4449524543544F52592E4E
      756D6265724F664964456E74726965732C20647720310D0A69656E640D0A6973
      7472756320494D4147455F5245534F555243455F4449524543544F52595F454E
      5452590D0A202020203B206C616E677561676520646F65736E2774206D617474
      65720D0A20202020617420494D4147455F5245534F555243455F444952454354
      4F52595F454E5452592E4F6666736574546F446174612C206464202525656E74
      7279202D204469726563746F72795F456E7472795F5265736F757263650D0A69
      656E640D0A0D0A2525656E7472793A0D0A69737472756320494D4147455F5245
      534F555243455F444154415F454E5452590D0A20202020617420494D4147455F
      5245534F555243455F444154415F454E5452592E4F6666736574546F44617461
      2C206464202532202D20494D414745424153450D0A20202020617420494D4147
      455F5245534F555243455F444154415F454E5452592E53697A65312C20646420
      25330D0A69656E640D0A25656E646D6163726F0D0A0D0A526963684B65792045
      515520303932303333643139680D0A0D0A737472756320494D4147455F544C53
      5F4449524543544F525933320D0A202020202E5374617274416464726573734F
      6652617744617461207265736420310D0A202020202E456E6441646472657373
      4F66526177446174612020207265736420310D0A202020202E41646472657373
      4F66496E64657820202020202020207265736420310D0A202020202E41646472
      6573734F6643616C6C4261636B73202020207265736420310D0A202020202E53
      697A654F665A65726F46696C6C20202020202020207265736420310D0A202020
      202E436861726163746572697374696373202020202020207265736420310D0A
      656E6473747275630D0A0D0A737472756320494D4147455F544C535F44495245
      43544F525936340D0A202020202E5374617274416464726573734F6652617744
      617461207265737120310D0A202020202E456E64416464726573734F66526177
      446174612020207265737120310D0A202020202E416464726573734F66496E64
      657820202020202020207265737120310D0A202020202E416464726573734F66
      43616C6C4261636B73202020207265737120310D0A202020202E53697A654F66
      5A65726F46696C6C20202020202020207265736420310D0A202020202E436861
      726163746572697374696373202020202020207265736420310D0A656E647374
      7275630D0A0D0A737472756320494D4147455F424F554E445F494D504F52545F
      44455343524950544F520D0A202020202E54696D65446174655374616D702020
      20202020202020202020202020207265736420310D0A202020202E4F66667365
      744D6F64756C654E616D65202020202020202020202020207265737720310D0A
      202020202E4E756D6265724F664D6F64756C6573466F72776172646572526566
      73207265737720310D0A656E6473747275630D0A0D0A73747275632057494E5F
      43455254494649434154450D0A202020202E64774C656E677468202020202020
      2020207265736420310D0A202020202E775265766973696F6E20202020202020
      207265737720310D0A202020202E774365727469666963617465547970652072
      65737720310D0A202020202E6243657274696669636174652020202020726573
      6220300D0A656E6473747275630D0A0D0A737472756320494D4147455F424153
      455F52454C4F434154494F4E0D0A202020202E5669727475616C416464726573
      73207265736420310D0A202020202E53697A654F66426C6F636B202020207265
      736420310D0A656E6473747275630D0A0D0A3B2063616E2774206D616B652061
      20737472756374206F662074686174206F6E652077697468205961736D203A28
      0D0A256D6163726F205F494D4147455F494D504F52545F42595F4E414D452031
      0D0A202020202E48696E74202020647720300D0A202020202E4E616D65202020
      64622025312C20300D0A25656E646D6163726F0D0A0D0A494D4147455F444C4C
      4348415241435445524953544943535F44594E414D49435F4241534520202020
      6571752030303430680D0A494D4147455F444C4C434841524143544552495354
      4943535F464F5243455F494E54454752495459206571752030303830680D0A49
      4D4147455F444C4C4348415241435445524953544943535F4E585F434F4D5041
      54202020202020206571752030313030680D0A494D4147455F444C4C43484152
      41435445524953544943535F4E4F5F5345482020202020202020202065717520
      30343030680D0A494D4147455F444C4C4348415241435445524953544943535F
      415050434F4E5441494E455220202020657175203130303068203B2057380D0A
      494D4147455F444C4C4348415241435445524953544943535F47554152445F43
      462020202020202020657175203430303068203B2057382E310D0A0D0A464C47
      5F53484F575F4C44525F534E4150532065717520320D0A0D0A4D425F4F4B2020
      202020202020202020657175203030303030303030680D0A4D425F49434F4E41
      5354455249534B20657175203030303030303430680D0A4D425F4150504C4D4F
      44414C20202020657175203030303030303030680D0A0D0A4C4F41445F4C4942
      524152595F41535F4441544146494C452065717520303030303030303032680D
      0A0D0A494D4147455F47554152445F43465F494E535452554D454E5445442020
      2020202020202020206571752030303030303031303068203B4D6F64756C6520
      706572666F726D7320636F6E74726F6C20666C6F7720696E7465677269747920
      636865636B73207573696E672073797374656D2D737570706C69656420737570
      706F72740D0A494D4147455F47554152445F4346575F494E535452554D454E54
      4544202020202020202020206571752030303030303032303068203B4D6F6475
      6C6520706572666F726D7320636F6E74726F6C20666C6F7720616E6420777269
      746520696E7465677269747920636865636B730D0A494D4147455F4755415244
      5F43465F46554E4354494F4E5F5441424C455F50524553454E54206571752030
      303030303034303068203B4D6F64756C6520636F6E7461696E732076616C6964
      20636F6E74726F6C20666C6F7720746172676574206D657461646174610D0A49
      4D4147455F47554152445F53454355524954595F434F4F4B49455F554E555345
      44202020206571752030303030303038303068203B4D6F64756C6520646F6573
      206E6F74206D616B6520757365206F6620746865202F47532073656375726974
      7920636F6F6B69650D0A0D0A434F4F4B49455F44454641554C54206571752030
      6262343065363465680D0A0D0A494D4147454241534520657175203430303030
      3030680D0A6F726720494D414745424153450D0A0D0A53454354494F4E414C49
      474E204551552031303030680D0A46494C45414C49474E204551552032303068
      0D0A0D0A69737472756320494D4147455F444F535F4845414445520D0A202020
      20617420494D4147455F444F535F4845414445522E655F6D616769632C202020
      20646220274D5A270D0A20202020617420494D4147455F444F535F4845414445
      522E655F63626C702C2020202020647720303930680D0A20202020617420494D
      4147455F444F535F4845414445522E655F63702C20202020202020647720330D
      0A20202020617420494D4147455F444F535F4845414445522E655F6370617268
      64722C202064772028646F735F73747562202D20494D4147454241534529203E
      3E20340D0A20202020617420494D4147455F444F535F4845414445522E655F6D
      6178616C6C6F632C206477203066666666680D0A20202020617420494D414745
      5F444F535F4845414445522E655F73702C20202020202020647720306238680D
      0A20202020617420494D4147455F444F535F4845414445522E655F6C6661726C
      632C202020647720303430680D0A20202020617420494D4147455F444F535F48
      45414445522E655F6C66616E65772C2020206464204E545F4865616465727320
      2D20494D414745424153450D0A69656E640D0A616C69676E20303130682C2064
      6220300D0A0D0A646F735F737475623A0D0A626974732031360D0A2020202070
      7573682063730D0A20202020706F70202064730D0A202020206D6F7620206478
      2C20646F735F6D7367202D20646F735F737475620D0A202020206D6F76202061
      682C20390D0A20202020696E7420203231680D0A202020206D6F76202061782C
      2034633031680D0A20202020696E7420203231680D0A646F735F6D73670D0A20
      20202064622027546869732070726F6772616D2063616E6E6F74206265207275
      6E20696E20444F53206D6F64652E272C203064682C203064682C203061682C20
      2724270D0A616C69676E2031362C20646220300D0A0D0A4E545F486561646572
      733A0D0A69737472756320494D4147455F4E545F484541444552530D0A202020
      20617420494D4147455F4E545F484541444552532E5369676E61747572652C20
      646220275045272C20302C20300D0A69656E640D0A0D0A46494C455F48454144
      45523A0D0A69737472756320494D4147455F46494C455F4845414445520D0A20
      202020617420494D4147455F46494C455F4845414445522E4D616368696E652C
      2020202020202020202020202020647720494D4147455F46494C455F4D414348
      494E455F493338360D0A20202020617420494D4147455F46494C455F48454144
      45522E4E756D6265724F6653656374696F6E732C20202020206477204E554D42
      45524F4653454354494F4E530D0A20202020617420494D4147455F46494C455F
      4845414445522E54696D65446174655374616D702C2020202020202020646420
      30346235316635303468202020202020203B20323031302F312F313620353A31
      39706D0D0A20202020617420494D4147455F46494C455F4845414445522E5369
      7A654F664F7074696F6E616C4865616465722C2064772053495A454F464F5054
      494F4E414C4845414445520D0A20202020617420494D4147455F46494C455F48
      45414445522E4368617261637465726973746963732C20202020202064772049
      4D4147455F46494C455F52454C4F43535F5354524950504544207C20494D4147
      455F46494C455F45584543555441424C455F494D414745207C205C0D0A202020
      202020202020202020494D4147455F46494C455F4C494E455F4E554D535F5354
      524950504544207C20494D4147455F46494C455F4C4F43414C5F53594D535F53
      54524950504544207C20494D4147455F46494C455F33324249545F4D41434849
      4E450D0A69656E640D0A0D0A6F7074696F6E616C5F6865616465723A0D0A6973
      7472756320494D4147455F4F5054494F4E414C5F48454144455233320D0A2020
      2020617420494D4147455F4F5054494F4E414C5F48454144455233322E4D6167
      69632C2020202020202020202020202020202020202020202020647720494D41
      47455F4E545F4F5054494F4E414C5F48445233325F4D414749430D0A20202020
      617420494D4147455F4F5054494F4E414C5F48454144455233322E4D616A6F72
      4C696E6B657256657273696F6E2C202020202020202020206462203035680D0A
      20202020617420494D4147455F4F5054494F4E414C5F48454144455233322E4D
      696E6F724C696E6B657256657273696F6E2C2020202020202020202064622030
      63680D0A20202020617420494D4147455F4F5054494F4E414C5F484541444552
      33322E53697A654F66436F64652C202020202020202020202020202020202020
      64642053495A454F46434F44450D0A20202020617420494D4147455F4F505449
      4F4E414C5F48454144455233322E53697A654F66496E697469616C697A656444
      6174612C2020202020202064642053495A454F46494E495449414C495A454444
      4154410D0A20202020617420494D4147455F4F5054494F4E414C5F4845414445
      5233322E53697A654F66556E696E697469616C697A6564446174612C20202020
      2064642053495A454F46554E494E495449414C495A4544444154410D0A202020
      20617420494D4147455F4F5054494F4E414C5F48454144455233322E41646472
      6573734F66456E747279506F696E742C202020202020202020646420456E7472
      79506F696E74202D20494D414745424153450D0A20202020617420494D414745
      5F4F5054494F4E414C5F48454144455233322E426173654F66436F64652C2020
      20202020202020202020202020202020646420626173655F6F665F636F646520
      2D20494D414745424153450D0A20202020617420494D4147455F4F5054494F4E
      414C5F48454144455233322E426173654F66446174612C202020202020202020
      202020202020202020646420626173655F6F665F64617461202D20494D414745
      424153450D0A20202020617420494D4147455F4F5054494F4E414C5F48454144
      455233322E496D616765426173652C2020202020202020202020202020202020
      2020646420494D414745424153450D0A20202020617420494D4147455F4F5054
      494F4E414C5F48454144455233322E53656374696F6E416C69676E6D656E742C
      20202020202020202020202064642053454354494F4E414C49474E0D0A202020
      20617420494D4147455F4F5054494F4E414C5F48454144455233322E46696C65
      416C69676E6D656E742C20202020202020202020202020202064642046494C45
      414C49474E0D0A20202020617420494D4147455F4F5054494F4E414C5F484541
      44455233322E4D616A6F724F7065726174696E6753797374656D56657273696F
      6E2C206477203034680D0A20202020617420494D4147455F4F5054494F4E414C
      5F48454144455233322E4D616A6F7253756273797374656D56657273696F6E2C
      20202020202020647720340D0A20202020617420494D4147455F4F5054494F4E
      414C5F48454144455233322E53697A654F66496D6167652C2020202020202020
      20202020202020202064642053495A454F46494D4147450D0A20202020617420
      494D4147455F4F5054494F4E414C5F48454144455233322E53697A654F664865
      61646572732C20202020202020202020202020202064642053495A454F464845
      41444552530D0A20202020617420494D4147455F4F5054494F4E414C5F484541
      44455233322E53756273797374656D2C20202020202020202020202020202020
      202020647720494D4147455F53554253595354454D5F57494E444F57535F4355
      490D0A20202020617420494D4147455F4F5054494F4E414C5F48454144455233
      322E53697A654F66537461636B526573657276652C2020202020202020202064
      6420313030303030680D0A20202020617420494D4147455F4F5054494F4E414C
      5F48454144455233322E53697A654F66537461636B436F6D6D69742C20202020
      2020202020202064642031303030680D0A20202020617420494D4147455F4F50
      54494F4E414C5F48454144455233322E53697A654F6648656170526573657276
      652C2020202020202020202020646420313030303030680D0A20202020617420
      494D4147455F4F5054494F4E414C5F48454144455233322E53697A654F664865
      6170436F6D6D69742C20202020202020202020202064642031303030680D0A20
      202020617420494D4147455F4F5054494F4E414C5F48454144455233322E4E75
      6D6265724F66527661416E6453697A65732C2020202020202020206464204E55
      4D4245524F46525641414E4453495A45530D0A69656E640D0A0D0A646174615F
      6469726563746F72793A0D0A69737472756320494D4147455F444154415F4449
      524543544F52595F31360D0A20202020617420494D4147455F444154415F4449
      524543544F52595F31362E496D706F72747356412C20646420496D706F72745F
      44657363726970746F72202D20494D414745424153452C204449524543544F52
      595F454E5452595F494D504F52545F53495A450D0A20202020617420494D4147
      455F444154415F4449524543544F52595F31362E49415456412C202020202064
      6420496D706F7274416464726573735461626C65202D20494D41474542415345
      2C204941545F73697A650D0A69656E640D0A4E554D4245524F46525641414E44
      53495A455320455155202824202D20646174615F6469726563746F727929202F
      202832202A2034290D0A0D0A0D0A3B204449524543544F52595F454E5452595F
      44454255472053697A652073686F756C6420626520736D616C6C2C206C696B65
      20307831303030206F72206C6573730D0A3B20496E646570656E64616E746C79
      206F66204E756D6265724F66527661416E6453697A65732E20746875732C2044
      776F726420617420444154415F4449524543544F5259202B203334680D0A0D0A
      73656374696F6E5F6865616465723A0D0A53495A454F464F5054494F4E414C48
      4541444552204551552024202D206F7074696F6E616C5F6865616465720D0A69
      737472756320494D4147455F53454354494F4E5F4845414445520D0A20202020
      617420494D4147455F53454354494F4E5F4845414445522E4E616D652C202020
      20202020202020202020646220272E74657874270D0A20202020617420494D41
      47455F53454354494F4E5F4845414445522E5669727475616C53697A652C2020
      2020202064642053454354494F4E3056530D0A20202020617420494D4147455F
      53454354494F4E5F4845414445522E5669727475616C416464726573732C2020
      2064642053656374696F6E305374617274202D20494D414745424153450D0A20
      202020617420494D4147455F53454354494F4E5F4845414445522E53697A654F
      66526177446174612C2020202064642053454354494F4E3053495A450D0A2020
      2020617420494D4147455F53454354494F4E5F4845414445522E506F696E7465
      72546F526177446174612C2064642053454354494F4E304F46465345540D0A20
      202020617420494D4147455F53454354494F4E5F4845414445522E4368617261
      637465726973746963732C20206464205C0D0A2020202020202020494D414745
      5F53434E5F434E545F434F4445207C20494D4147455F53434E5F4D454D5F4558
      4543555445207C20494D4147455F53434E5F4D454D5F524541440D0A69656E64
      0D0A69737472756320494D4147455F53454354494F4E5F4845414445520D0A20
      202020617420494D4147455F53454354494F4E5F4845414445522E4E616D652C
      20202020202020202020202020646220272E7264617461270D0A202020206174
      20494D4147455F53454354494F4E5F4845414445522E5669727475616C53697A
      652C20202020202064642053454354494F4E3156530D0A20202020617420494D
      4147455F53454354494F4E5F4845414445522E5669727475616C416464726573
      732C20202064642053656374696F6E315374617274202D20494D414745424153
      450D0A20202020617420494D4147455F53454354494F4E5F4845414445522E53
      697A654F66526177446174612C2020202064642053454354494F4E3153495A45
      0D0A20202020617420494D4147455F53454354494F4E5F4845414445522E506F
      696E746572546F526177446174612C2064642053454354494F4E314F46465345
      540D0A20202020617420494D4147455F53454354494F4E5F4845414445522E43
      68617261637465726973746963732C20206464205C0D0A202020202020202049
      4D4147455F53434E5F434E545F494E495449414C495A45445F44415441207C20
      494D4147455F53434E5F4D454D5F524541440D0A69656E640D0A697374727563
      20494D4147455F53454354494F4E5F4845414445520D0A20202020617420494D
      4147455F53454354494F4E5F4845414445522E4E616D652C2020202020202020
      2020202020646220272E64617461270D0A20202020617420494D4147455F5345
      4354494F4E5F4845414445522E5669727475616C53697A652C20202020202064
      642053454354494F4E3256530D0A20202020617420494D4147455F5345435449
      4F4E5F4845414445522E5669727475616C416464726573732C20202064642053
      656374696F6E325374617274202D20494D414745424153450D0A202020206174
      20494D4147455F53454354494F4E5F4845414445522E53697A654F6652617744
      6174612C2020202064642053454354494F4E3253495A450D0A20202020617420
      494D4147455F53454354494F4E5F4845414445522E506F696E746572546F5261
      77446174612C2064642053454354494F4E324F46465345540D0A202020206174
      20494D4147455F53454354494F4E5F4845414445522E43686172616374657269
      73746963732C20206464205C0D0A2020202020202020494D4147455F53434E5F
      434E545F494E495449414C495A45445F44415441207C20494D4147455F53434E
      5F4D454D5F52454144207C20494D4147455F53434E5F4D454D5F57524954450D
      0A69656E640D0A4E554D4245524F4653454354494F4E5320455155202824202D
      2073656374696F6E5F68656164657229202F20494D4147455F53454354494F4E
      5F4845414445525F73697A650D0A}
  end
  object JvDataEmbedded2: TJvDataEmbedded
    Left = 649
    Top = 215
    EmbeddedData = {
      6A050000496D706F72745F44657363726970746F723A0D0A6973747275632049
      4D4147455F494D504F52545F44455343524950544F520D0A2020202061742049
      4D4147455F494D504F52545F44455343524950544F522E4F726967696E616C46
      697273745468756E6B2C206464206B65726E656C33322E646C6C5F68696E746E
      616D6573202D20494D414745424153450D0A20202020617420494D4147455F49
      4D504F52545F44455343524950544F522E4E616D65312C202020202020202020
      20202020206464206B65726E656C33322E646C6C202D20494D41474542415345
      0D0A20202020617420494D4147455F494D504F52545F44455343524950544F52
      2E46697273745468756E6B2C2020202020202020206464206B65726E656C3332
      2E646C6C5F696174202D20494D414745424153450D0A69656E640D0A69737472
      756320494D4147455F494D504F52545F44455343524950544F520D0A20202020
      617420494D4147455F494D504F52545F44455343524950544F522E4F72696769
      6E616C46697273745468756E6B2C206464206D73766372742E646C6C5F68696E
      746E616D6573202D20494D414745424153450D0A20202020617420494D414745
      5F494D504F52545F44455343524950544F522E4E616D65312C20202020202020
      202020202020206464206D73766372742E646C6C202D20494D41474542415345
      0D0A20202020617420494D4147455F494D504F52545F44455343524950544F52
      2E46697273745468756E6B2C2020202020202020206464206D73766372742E64
      6C6C5F696174202D20494D414745424153450D0A69656E640D0A697374727563
      20494D4147455F494D504F52545F44455343524950544F520D0A69656E640D0A
      5F640D0A0D0A6B65726E656C33322E646C6C5F68696E746E616D65733A0D0A20
      202020646420686E4578697450726F63657373202D20494D414745424153450D
      0A20202020646420300D0A6D73766372742E646C6C5F68696E746E616D65733A
      0D0A20202020646420686E7072696E7466202D20494D414745424153450D0A20
      202020646420300D0A5F640D0A0D0A686E4578697450726F63657373205F494D
      4147455F494D504F52545F42595F4E414D4520274578697450726F6365737327
      0D0A686E7072696E74662020202020205F494D4147455F494D504F52545F4259
      5F4E414D4520277072696E7466270D0A0D0A5F640D0A0D0A496D706F72744164
      64726573735461626C653A0D0A6B65726E656C33322E646C6C5F6961743A0D0A
      5F5F696D705F5F4578697450726F636573733A0D0A20202020646420686E4578
      697450726F63657373202D20494D414745424153450D0A20202020646420300D
      0A0D0A6D73766372742E646C6C5F6961743A0D0A5F5F696D705F5F7072696E74
      663A0D0A20202020646420686E7072696E7466202D20494D414745424153450D
      0A20202020646420300D0A5F640D0A4941545F73697A65206571752024202D20
      496D706F7274416464726573735461626C650D0A0D0A6B65726E656C33322E64
      6C6C20646220276B65726E656C33322E646C6C272C20300D0A6D73766372742E
      646C6C20646220276D73766372742E646C6C272C20300D0A5F640D0A0D0A4449
      524543544F52595F454E5452595F494D504F52545F53495A4520657175202420
      2D20496D706F72745F44657363726970746F720D0A53454354494F4E31565320
      6571752024202D2053656374696F6E3153746172740D0A0D0A616C69676E2046
      494C45414C49474E2C646220300D0A0D0A53454354494F4E3153495A45202020
      4551552024202D2053656374696F6E3153746172740D0A53454354494F4E324F
      4646534554206571752024202D2053656374696F6E315374617274202B205345
      4354494F4E314F46465345540D0A}
  end
  object JvCreateProcess1: TJvCreateProcess
    Left = 665
    Top = 271
  end
  object JvDataEmbedded3: TJvDataEmbedded
    Left = 705
    Top = 215
    EmbeddedData = {
      550000002020202070757368204D73670D0A2020202063616C6C207072696E74
      660D0A20202020616464206573702C2031202A20340D0A202020207075736820
      300D0A2020202063616C6C204578697450726F636573730D0A}
  end
  object JvDataEmbedded4: TJvDataEmbedded
    Left = 737
    Top = 215
    EmbeddedData = {
      250000004D73672064622022202A20612027636F6D70696C656427205045222C
      203061682C20300D0A}
  end
  object JvDataEmbedded5: TJvDataEmbedded
    Left = 769
    Top = 263
    EmbeddedData = {
      D603000025696E636C75646520272E2E5C61736D5C686561642E696E63270D0A
      0D0A414C49474E2046494C45414C49474E2C20646220300D0A53495A454F4648
      45414445525320204551552024202D20494D414745424153450D0A5345435449
      4F4E304F4646534554204551552024202D20494D414745424153450D0A0D0A53
      454354494F4E20636F64652076616C69676E203D2053454354494F4E414C4947
      4E0D0A53656374696F6E3053746172743A0D0A0D0A626974732033320D0A6261
      73655F6F665F636F64653A0D0A0D0A456E747279506F696E743A0D0A25696E63
      6C7564652027636F64652E61736D270D0A0D0A7072696E74663A0D0A20202020
      6A6D70205B5F5F696D705F5F7072696E74665D0D0A0D0A4578697450726F6365
      73733A0D0A202020206A6D70205B5F5F696D705F5F4578697450726F63657373
      5D0D0A0D0A53454354494F4E305653206571752024202D2053656374696F6E30
      53746172740D0A616C69676E2046494C45414C49474E2C646220300D0A534543
      54494F4E3053495A45204551552024202D2053656374696F6E3053746172740D
      0A53495A454F46434F4445206571752024202D20626173655F6F665F636F6465
      0D0A0D0A53454354494F4E314F4646534554206571752024202D205365637469
      6F6E305374617274202B2053454354494F4E304F46465345540D0A5345435449
      4F4E2069646174612076616C69676E203D2053454354494F4E414C49474E0D0A
      53656374696F6E3153746172743A0D0A626173655F6F665F646174613A0D0A25
      696E636C75646520272E2E5C61736D5C696D70646C6C2E696E63270D0A0D0A53
      454354494F4E20646174612076616C69676E203D2053454354494F4E414C4947
      4E0D0A0D0A53656374696F6E3253746172743A0D0A25696E636C756465202764
      6174612E61736D270D0A0D0A53454354494F4E325653206571752024202D2053
      656374696F6E3253746172740D0A0D0A414C49474E2046494C45414C49474E2C
      646220300D0A53454354494F4E3253495A45204551552024202D205365637469
      6F6E3253746172740D0A3B53495A454F46494E495449414C495A454444415441
      206571752024202D20626173655F6F665F64617461203B20746F6F20636F6D70
      6C65780D0A0D0A53495A454F46494E495449414C495A45444441544120657175
      2053454354494F4E3253495A45202B2053454354494F4E3153495A450D0A756E
      696E69745F646174613A0D0A53495A454F46554E494E495449414C495A454444
      415441206571752024202D20756E696E69745F646174610D0A0D0A53495A454F
      46494D414745204551552024202D20494D414745424153450D0A}
  end
  object ImageList1: TImageList
    Height = 50
    Width = 50
    Left = 593
    Top = 148
    Bitmap = {
      494C010101000400040032003200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C8000000320000000100200000000000409C
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCDCDCDFF9494
      94FF5D5D5DFF262626FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF262626FF5D5D5DFF949494FFCDCDCDFFFCFCFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCFF626262FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF636363FFDDDDDDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9FF1C1C1CFF000000FF7C7C7CFFD0D0
      D0FFF1F1F1FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFF1F1F1FFCFCFCFFF7A7A7AFF000000FF1C1C1CFFCACACAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDBDBDBFF1C1C1CFF161616FFC2C2C2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFC1C1C1FF161616FF1C1C1CFFDDDD
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFBFBFBFF606060FF000000FFC3C3C3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1FF000000FF6363
      63FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCCCCCCFF000000FF7D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF7A7A7AFF0000
      00FFCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF939393FF000000FFD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF0000
      00FF949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5D5D5DFF000000FFF2F2F2FFFFFFFFFFFBFBFBFFD0D0D0FF9494
      94FF636363FF262626FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF262626FF636363FF949494FFD1D1D1FFFBFBFBFFFFFFFFFFF1F1F1FF0000
      00FF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF262626FF000000FFFDFDFDFFDCDCDCFF656565FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF656565FFDDDDDDFFFDFDFDFF0000
      00FF262626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFCDCDCDFF161616FF000000FF7C7C7CFFD0D0
      D0FFF1F1F1FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFF1F1F1FFCFCFCFFF7A7A7AFF000000FF161616FFCDCDCDFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF0D0D0DFF161616FFC2C2C2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFC1C1C1FF161616FF0D0D0DFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FFC3C3C3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1FF000000FF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF7D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7CFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4
      D4FF494949FF494949FF494949FF494949FF494949FF494949FF5D5D5DFF8888
      88FFC3C3C3FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FF4F4F4FFF7C7C7CFF7C7C7CFF7C7C7CFF767676FF4D4D4DFF0000
      00FF000000FF666666FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
      E8FF7E7E7EFF000000FF919191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2F2F2FF0D0D0DFF161616FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5C5C5CFF000000FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAFAFF222222FF1C1C1CFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8FF9D9D9DFF000000FFA7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FF6E6E6EFFAAAAAAFFAAAAAAFFAAAAAAFFA3A3A3FF8D8D8DFF4040
      40FF000000FF9D9D9DFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF5C5C
      5CFFE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA3A3A3FFF7F7F7FFF7F7F7FFF6F6F6FFECECECFFD5D5D5FF7E7E
      7EFF2E2E2EFFD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
      F9FF5D5D5DFF474747FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C9C9CFF000000FFDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF797979FF000000FFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FFA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFB6B6
      B6FF000000FF2A2A2AFFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      D0FF000000FF4F4F4FFF7C7C7CFF7C7C7CFF7C7C7CFF6A6A6AFF2E2E2EFF0000
      00FF0D0D0DFFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4
      D4FF494949FF494949FF494949FF494949FF494949FF494949FF6A6A6AFF9B9B
      9BFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF262626FF000000FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF0000
      00FF262626FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5D5D5DFF000000FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1FF0000
      00FF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF929292FF000000FFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FF0000
      00FF949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCBCBCBFF000000FF7E7E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7C7CFF0000
      00FFCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFBFBFBFF5F5F5FFF000000FFC4C4C4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FF000000FF6262
      62FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDADADAFF161616FF1C1C1CFFC4C4C4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3FF161616FF1C1C1CFFDCDC
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8FF161616FF000000FF7E7E7EFFD1D1
      D1FFF2F2F2FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFF2F2F2FFD0D0D0FF7D7D7DFF000000FF1C1C1CFFC9C9C9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAFF5F5F5FFF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF606060FFDBDBDBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFCCCCCCFF9292
      92FF5C5C5CFF222222FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF222222FF5C5C5CFF929292FFCCCCCCFFFBFBFBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C8000000320000000100010000000000780500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 521
    Top = 319
  end
  object JvHint1: TJvHint
    Left = 461
    Top = 198
  end
end
