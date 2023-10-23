object Frame31: TFrame31
  Left = 0
  Top = 0
  Width = 707
  Height = 417
  TabOrder = 0
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 707
    Height = 417
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 0
      Top = 201
      Width = 703
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Splitter2: TSplitter
      Left = 121
      Top = 204
      Height = 209
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 703
      Height = 201
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 0
      object gbDates: TGroupBox
        Left = 6
        Top = 8
        Width = 323
        Height = 185
        Caption = ' Dates: '
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 99
          Height = 19
          Caption = 'First date:'
        end
        object Label3: TLabel
          Left = 8
          Top = 80
          Width = 126
          Height = 19
          Caption = 'Selected date:'
        end
        object Label4: TLabel
          Left = 168
          Top = 24
          Width = 90
          Height = 19
          Caption = 'Add image:'
        end
        object Label5: TLabel
          Left = 168
          Top = 80
          Width = 72
          Height = 19
          Caption = 'To date:'
        end
        object dtpFirstDate: TDateTimePicker
          Left = 8
          Top = 48
          Width = 129
          Height = 24
          Hint = 'Sets the first displayed date'
          Date = 36854.425169305600000000
          Time = 36854.425169305600000000
          TabOrder = 0
        end
        object dtpSelDate: TDateTimePicker
          Left = 8
          Top = 104
          Width = 129
          Height = 24
          Hint = 'Sets the selected day'
          Date = 36854.425169305600000000
          Time = 36854.425169305600000000
          TabOrder = 1
        end
        object edImageNo: TEdit
          Left = 168
          Top = 48
          Width = 81
          Height = 27
          Hint = 
            'Sets the imageindex to insert at the current date'#13#10'(use -1 to re' +
            'move image)'
          TabOrder = 2
          Text = '-1'
        end
        object udImageNo: TUpDown
          Left = 249
          Top = 48
          Width = 19
          Height = 27
          Associate = edImageNo
          Min = -1
          Position = -1
          TabOrder = 3
        end
        object dtpImageDate: TDateTimePicker
          Left = 168
          Top = 104
          Width = 129
          Height = 24
          Hint = 'Sets the date to insert  / delete an image'
          Date = 36854.587075949100000000
          Time = 36854.587075949100000000
          TabOrder = 4
        end
        object btnAdd: TButton
          Left = 165
          Top = 144
          Width = 75
          Height = 25
          Hint = 'Adds an image to the chosen date'
          Caption = '&Add'
          TabOrder = 5
          OnClick = btnAddClick
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 204
      Width = 121
      Height = 209
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 1
    end
    object PageControl1: TPageControl
      Left = 124
      Top = 204
      Width = 579
      Height = 209
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Day '
        object JvTFDays1: TJvTFDays
          Left = 0
          Top = 0
          Width = 571
          Height = 175
          ScheduleManager = JvTFScheduleManager1
          ColHdrHeight = 30
          Cols = <
            item
              SchedDate = 45171.000000000000000000
              Title = ' - 2023-09-02'
              Width = 409
            end>
          Options = [agoSizeCols, agoSizeRows, agoSizeColHdr, agoSizeRowHdr, agoSizeAppt, agoMoveAppt, agoEditing, agoShowPics, agoShowText, agoShowApptHints, agoShowColHdrHints, agoShowSelHint, agoQuickEntry]
          RowHdrWidth = 64
          Template.ActiveTemplate = agtLinear
          Template.CompDate = 45171.000000000000000000
          Template.LinearDayCount = 1
          Template.LinearEndDate = 45171.000000000000000000
          Template.LinearStartDate = 45171.000000000000000000
          Grouping = grNone
          TimeBlocks = <
            item
              Name = 'Block0'
              Title = 'PM / AM'
            end
            item
              Length = 12
              Name = 'AM'
              Title = 'AM'
            end
            item
              Name = 'Block2'
              Title = 'AM / PM'
            end
            item
              Length = 10
              Name = 'Block3'
              Title = 'PM'
            end>
          TimeBlockProps.BlockHdrAttr.Font.Charset = DEFAULT_CHARSET
          TimeBlockProps.BlockHdrAttr.Font.Color = clWindowText
          TimeBlockProps.BlockHdrAttr.Font.Height = -13
          TimeBlockProps.BlockHdrAttr.Font.Name = 'MS Sans Serif'
          TimeBlockProps.BlockHdrAttr.Font.Style = []
          TimeBlockProps.BlockHdrAttr.FrameColor = clBlack
          TimeBlockProps.BlockHdrWidth = 74
          TimeBlockProps.SelBlockHdrAttr.Font.Charset = DEFAULT_CHARSET
          TimeBlockProps.SelBlockHdrAttr.Font.Color = clBlack
          TimeBlockProps.SelBlockHdrAttr.Font.Height = -13
          TimeBlockProps.SelBlockHdrAttr.Font.Name = 'MS Sans Serif'
          TimeBlockProps.SelBlockHdrAttr.Font.Style = [fsBold]
          TimeBlockProps.SelBlockHdrAttr.ParentFont = False
          TimeBlockProps.SelBlockHdrAttr.FrameColor = clBlack
          ApptAttr.Color = clWhite
          ApptAttr.Font.Charset = DEFAULT_CHARSET
          ApptAttr.Font.Color = clWindowText
          ApptAttr.Font.Height = -13
          ApptAttr.Font.Name = 'MS Sans Serif'
          ApptAttr.Font.Style = []
          ApptAttr.ParentFont = False
          SelApptAttr.Color = clWhite
          SelApptAttr.Font.Charset = DEFAULT_CHARSET
          SelApptAttr.Font.Color = clWindowText
          SelApptAttr.Font.Height = -13
          SelApptAttr.Font.Name = 'MS Sans Serif'
          SelApptAttr.Font.Style = []
          SelApptAttr.ParentFont = False
          HdrAttr.Font.Charset = DEFAULT_CHARSET
          HdrAttr.Font.Color = clWindowText
          HdrAttr.Font.Height = -13
          HdrAttr.Font.Name = 'MS Sans Serif'
          HdrAttr.Font.Style = []
          HdrAttr.ParentFont = False
          HdrAttr.FrameColor = clBlack
          SelHdrAttr.Font.Charset = DEFAULT_CHARSET
          SelHdrAttr.Font.Color = clBlack
          SelHdrAttr.Font.Height = -13
          SelHdrAttr.Font.Name = 'MS Sans Serif'
          SelHdrAttr.Font.Style = []
          SelHdrAttr.ParentFont = False
          SelHdrAttr.FrameColor = clBlack
          FancyRowHdrAttr.Hr2400 = False
          FancyRowHdrAttr.MinorFont.Charset = DEFAULT_CHARSET
          FancyRowHdrAttr.MinorFont.Color = clWindowText
          FancyRowHdrAttr.MinorFont.Height = -13
          FancyRowHdrAttr.MinorFont.Name = 'MS Sans Serif'
          FancyRowHdrAttr.MinorFont.Style = []
          FancyRowHdrAttr.MajorFont.Charset = DEFAULT_CHARSET
          FancyRowHdrAttr.MajorFont.Color = clWindowText
          FancyRowHdrAttr.MajorFont.Height = -26
          FancyRowHdrAttr.MajorFont.Name = 'MS Sans Serif'
          FancyRowHdrAttr.MajorFont.Style = []
          FancyRowHdrAttr.OnlyShow00Minutes = False
          SelFancyRowHdrAttr.Hr2400 = False
          SelFancyRowHdrAttr.MinorFont.Charset = DEFAULT_CHARSET
          SelFancyRowHdrAttr.MinorFont.Color = clBlack
          SelFancyRowHdrAttr.MinorFont.Height = -13
          SelFancyRowHdrAttr.MinorFont.Name = 'MS Sans Serif'
          SelFancyRowHdrAttr.MinorFont.Style = []
          SelFancyRowHdrAttr.MajorFont.Charset = DEFAULT_CHARSET
          SelFancyRowHdrAttr.MajorFont.Color = clBlack
          SelFancyRowHdrAttr.MajorFont.Height = -26
          SelFancyRowHdrAttr.MajorFont.Name = 'MS Sans Serif'
          SelFancyRowHdrAttr.MajorFont.Style = []
          SelFancyRowHdrAttr.TickColor = clBlack
          PrimeTime.StartTime = 0.333333333333333300
          PrimeTime.EndTime = 0.708333333333333400
          PrimeTime.Color = clYellow
          GroupHdrAttr.Font.Charset = DEFAULT_CHARSET
          GroupHdrAttr.Font.Color = clWindowText
          GroupHdrAttr.Font.Height = -13
          GroupHdrAttr.Font.Name = 'MS Sans Serif'
          GroupHdrAttr.Font.Style = []
          GroupHdrAttr.FrameColor = clBlack
          SelGroupHdrAttr.Font.Charset = DEFAULT_CHARSET
          SelGroupHdrAttr.Font.Color = clBlack
          SelGroupHdrAttr.Font.Height = -13
          SelGroupHdrAttr.Font.Name = 'MS Sans Serif'
          SelGroupHdrAttr.Font.Style = []
          SelGroupHdrAttr.ParentFont = False
          SelGroupHdrAttr.FrameColor = clBlack
          LeftCol = 0
          DateFormat = 'ddddd'
          TimeFormat = 't'
          Align = alClient
          TabOrder = 0
          OnDblClick = JvTFDays1DblClick
          DesignSize = (
            567
            171)
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Week'
        ImageIndex = 1
        object JvTFWeeks1: TJvTFWeeks
          Left = 0
          Top = 0
          Width = 571
          Height = 335
          Cells = <
            item
              Color = clBlack
              CellDate = 45166.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45167.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45168.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45169.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45170.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45171.000000000000000000
              CellPics = <>
              CanSelect = True
            end>
          GapSize = 4
          TitleAttr.TxtAttr.Font.Charset = DEFAULT_CHARSET
          TitleAttr.TxtAttr.Font.Color = clWindowText
          TitleAttr.TxtAttr.Font.Height = -26
          TitleAttr.TxtAttr.Font.Name = 'MS Sans Serif'
          TitleAttr.TxtAttr.Font.Style = [fsBold]
          TitleAttr.Title = 'Week of Aug 28, 2023'
          CellAttr.Font.Charset = DEFAULT_CHARSET
          CellAttr.Font.Color = clWindowText
          CellAttr.Font.Height = -13
          CellAttr.Font.Name = 'MS Sans Serif'
          CellAttr.Font.Style = []
          CellAttr.TitleAttr.Color = clWhite
          CellAttr.TitleAttr.FrameAttr.Color = clGray
          CellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
          CellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
          CellAttr.TitleAttr.DayTxtAttr.Font.Height = -13
          CellAttr.TitleAttr.DayTxtAttr.Font.Name = 'MS Sans Serif'
          CellAttr.TitleAttr.DayTxtAttr.Font.Style = []
          CellAttr.DrawBottomLine = False
          SelCellAttr.Font.Charset = DEFAULT_CHARSET
          SelCellAttr.Font.Color = clWindowText
          SelCellAttr.Font.Height = -13
          SelCellAttr.Font.Name = 'MS Sans Serif'
          SelCellAttr.Font.Style = []
          SelCellAttr.TitleAttr.Color = clNavy
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWhite
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Height = -13
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'MS Sans Serif'
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Style = []
          SelCellAttr.DrawBottomLine = False
          DateFormat = 'ddddd'
          TimeFormat = 't'
          Align = alClient
          ParentColor = True
          TabOrder = 0
          DisplayDate = 45171.000000000000000000
          DisplayOrder = doLeftRight
          DWNames.DWN_Sunday = 'S'
          DWNames.DWN_Monday = 'M'
          DWNames.DWN_Tuesday = 'T'
          DWNames.DWN_Wednesday = 'W'
          DWNames.DWN_Thursday = 'T'
          DWNames.DWN_Friday = 'F'
          DWNames.DWN_Saturday = 'S'
          DWTitleAttr.Height = 20
          DWTitleAttr.TxtAttr.Font.Charset = DEFAULT_CHARSET
          DWTitleAttr.TxtAttr.Font.Color = clWindowText
          DWTitleAttr.TxtAttr.Font.Height = -13
          DWTitleAttr.TxtAttr.Font.Name = 'MS Sans Serif'
          DWTitleAttr.TxtAttr.Font.Style = [fsBold]
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Month'
        ImageIndex = 2
        object JvTFMonths1: TJvTFMonths
          Left = 0
          Top = 0
          Width = 571
          Height = 335
          Cells = <
            item
              Color = clBlack
              CellDate = 45165.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45166.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45167.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45168.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45169.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45170.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45171.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45172.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45173.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45174.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45175.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45176.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45177.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45178.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45179.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45180.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45181.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45182.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45183.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45184.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45185.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45186.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45187.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45188.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45189.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45190.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45191.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45192.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45193.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45194.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45195.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45196.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45197.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45198.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45199.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45200.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45201.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45202.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45203.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45204.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45205.000000000000000000
              CellPics = <>
              CanSelect = True
            end
            item
              Color = clBlack
              CellDate = 45206.000000000000000000
              CellPics = <>
              CanSelect = True
            end>
          GapSize = 0
          TitleAttr.TxtAttr.Font.Charset = DEFAULT_CHARSET
          TitleAttr.TxtAttr.Font.Color = clWindowText
          TitleAttr.TxtAttr.Font.Height = -26
          TitleAttr.TxtAttr.Font.Name = 'MS Sans Serif'
          TitleAttr.TxtAttr.Font.Style = [fsBold]
          TitleAttr.Title = 'September 2023'
          CellAttr.Font.Charset = DEFAULT_CHARSET
          CellAttr.Font.Color = clWindowText
          CellAttr.Font.Height = -13
          CellAttr.Font.Name = 'MS Sans Serif'
          CellAttr.Font.Style = []
          CellAttr.TitleAttr.Color = clWhite
          CellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
          CellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
          CellAttr.TitleAttr.DayTxtAttr.Font.Height = -13
          CellAttr.TitleAttr.DayTxtAttr.Font.Name = 'MS Sans Serif'
          CellAttr.TitleAttr.DayTxtAttr.Font.Style = []
          CellAttr.DrawBottomLine = False
          SelCellAttr.Font.Charset = DEFAULT_CHARSET
          SelCellAttr.Font.Color = clWindowText
          SelCellAttr.Font.Height = -13
          SelCellAttr.Font.Name = 'MS Sans Serif'
          SelCellAttr.Font.Style = []
          SelCellAttr.TitleAttr.Color = clNavy
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWhite
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Height = -13
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'MS Sans Serif'
          SelCellAttr.TitleAttr.DayTxtAttr.Font.Style = []
          SelCellAttr.DrawBottomLine = False
          DateFormat = 'ddddd'
          TimeFormat = 't'
          Align = alClient
          ParentColor = True
          TabOrder = 0
          Month = 9
          Year = 2023
          DisplayDate = 45171.000000000000000000
          DWNames.DWN_Sunday = 'S'
          DWNames.DWN_Monday = 'M'
          DWNames.DWN_Tuesday = 'T'
          DWNames.DWN_Wednesday = 'W'
          DWNames.DWN_Thursday = 'T'
          DWNames.DWN_Friday = 'F'
          DWNames.DWN_Saturday = 'S'
          DWTitleAttr.FrameAttr.Style = fs3DRaised
          DWTitleAttr.Height = 20
          DWTitleAttr.TxtAttr.Font.Charset = DEFAULT_CHARSET
          DWTitleAttr.TxtAttr.Font.Color = clWindowText
          DWTitleAttr.TxtAttr.Font.Height = -13
          DWTitleAttr.TxtAttr.Font.Name = 'MS Sans Serif'
          DWTitleAttr.TxtAttr.Font.Style = []
          ExtraDayCellAttr.Font.Charset = DEFAULT_CHARSET
          ExtraDayCellAttr.Font.Color = clWindowText
          ExtraDayCellAttr.Font.Height = -13
          ExtraDayCellAttr.Font.Name = 'MS Sans Serif'
          ExtraDayCellAttr.Font.Style = []
          ExtraDayCellAttr.TitleAttr.Color = clWhite
          ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
          ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
          ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Height = -13
          ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'MS Sans Serif'
          ExtraDayCellAttr.TitleAttr.DayTxtAttr.Font.Style = []
          ExtraDayCellAttr.DrawBottomLine = False
          OffDayCellAttr.Font.Charset = DEFAULT_CHARSET
          OffDayCellAttr.Font.Color = clWindowText
          OffDayCellAttr.Font.Height = -13
          OffDayCellAttr.Font.Name = 'MS Sans Serif'
          OffDayCellAttr.Font.Style = []
          OffDayCellAttr.TitleAttr.Color = clWhite
          OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Charset = DEFAULT_CHARSET
          OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Color = clWindowText
          OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Height = -13
          OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Name = 'MS Sans Serif'
          OffDayCellAttr.TitleAttr.DayTxtAttr.Font.Style = []
          OffDayCellAttr.DrawBottomLine = False
          FirstDayOfMonthFormat = 'mmm d'
          DayFormat = 'd'
        end
      end
    end
  end
  object JvTFScheduleManager1: TJvTFScheduleManager
    StateImageMap.AlarmEnabled = -1
    StateImageMap.AlarmDisabled = -1
    StateImageMap.Shared = -1
    StateImageMap.Recurring = -1
    StateImageMap.Modified = -1
    Left = 376
    Top = 32
  end
  object ImageList2: TImageList
    Height = 32
    Width = 32
    Left = 16
    Top = 150
    Bitmap = {
      494C010118001900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000E0000000010020000000000000C0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      00000000FF000000FF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      FF000000FF0000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00C6C6C600FFFFFF00848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000848400008484000000000000848400008484000084840000848400000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6
      C600FFFFFF0000FFFF00848484000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484
      0000000000000000000084840000000000008484000084840000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF00C6C6
      C600000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF0000FFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF0000FFFF00FFFFFF00FFFFFF00C6C6C60000FF
      FF00FFFFFF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000FFFFFF00FFFFFF0084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600848484008484840084848400848484008484
      84008484840084848400C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFF
      FF00FFFFFF0000FFFF0084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400848484008484
      84008484840084848400FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000848484008484840084848400848484000000000000000000FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      000000000000C6C6C6000000FF000000FF000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF0084848400C6C6C60000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0084848400000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400000000000000
      0000000000000000000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084008400840084008400
      84000000FF000000FF000000FF00848400008400840000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF0084848400C6C6C600FFFFFF0000FF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000848400000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400000000000000
      FF000000FF000000FF0084840000000000000000000000000000000000000000
      000000000000C6C6C6000000FF00000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFF
      FF00FFFFFF0000FFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000008400
      8400000000008400840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF0000FFFF00FFFFFF000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600C6C6
      C6000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0084848400C6C6
      C600FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      FF0000000000C6C6C6000000000084848400FFFFFF00FFFFFF00848484000000
      000000000000FFFFFF000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C60084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF008484
      8400C6C6C600FFFFFF0084848400000000000084840000848400008484000084
      840000000000C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C60000000000000000000000000000000000FFFF
      FF0000000000848484000000000000000000FFFFFF00FFFFFF0084848400FFFF
      FF0000FFFF0000FFFF00FFFFFF000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C60084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400C6C6C60084848400000000000084840000848400848484008484
      840000000000C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600000000008484840000FFFF0000FFFF008484
      84000000000000000000FFFFFF000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF008484840084848400000000000084840000848400FFFFFF00FFFF
      FF0000000000C6C6C600C6C6C60000000000FFFFFF00FFFFFF00000000000000
      0000C6C6C600C6C6C600C6C6C60000000000FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000FF000000C6C6C600FF000000C6C6C6000000000000000000000000008484
      8400FFFFFF0000FFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000084840000848400FFFFFF00FFFF
      FF0000000000C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF000000
      0000C6C6C6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF0084848400FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000FF000000C6C6C600FF0000000000000084848400FFFFFF00FFFF
      FF00848484000000000000000000FFFFFF000000000084848400FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C60084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000084840000848400FFFFFF000000
      84000000840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484008484840084848400C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000C6C6C600FF000000C6C6C600FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000000000FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6C600000000008484
      8400FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C60084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400FFFFFF000000
      8400FFFFFF000000840000000000000000000000000000000000848484008484
      8400848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF0084848400C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000C6C6C600FF000000C6C6C6000000000084848400FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000084840000848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF0084848400000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000FF000000C6C6C600FF000000C6C6C600000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400FFFFFF00FFFFFF00C6C6C6008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000084840000848400FFFFFF000000
      0000FFFFFF000000000084848400000000008484840000000000FFFFFF008484
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000FF000000C6C6C600FF00000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF0084848400FFFFFF00C6C6C600C6C6C60084848400FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000000084840000848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FF000000C6C6C60000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000000000008484840084848400C6C6C600C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0084848400FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C60084848400848484000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF008484
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6008484840084848400C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00848484008484840084848400FFFFFF00FFFFFF00C6C6C6000000
      0000C6C6C600C6C6C60084848400848484000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400FFFFFF00FFFF
      FF0084848400FFFFFF00C6C6C600C6C6C6008484840000000000C6C6C6008484
      840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C60084848400C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000084
      84008484840084848400FFFFFF00C6C6C6000000000084848400008484000084
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000000000C6C6C600FFFFFF00848484000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF0084848400840000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600848484000000000084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000008400000084000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00848484008484
      8400000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000C6C6C600C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400848484008484840084848400000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000084848400848484008484840084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000848400C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF00C6C6C6000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF0000000000000000000084
      8400C6C6C6000000000000FFFF0000FFFF0000000000FFFFFF00C6C6C600C6C6
      C600C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF000000000000FFFF00C6C6
      C6000000000000FFFF0000FFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400C6C6C6000000
      000000FFFF0000FFFF0000000000FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000008484000084
      84000084840000FFFF00000000000084840000FFFF00C6C6C6000000000000FF
      FF0000FFFF0000000000FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000008484000084840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C6000000000000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000084000000840000008400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000084840000FFFF0000FF
      FF000084840000FFFF0000FFFF00C6C6C6000000000000FFFF0000FFFF000000
      0000C6C6C600C6C6C600FFFFFF00C6C6C600C6C6C600FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400000000000000000084848400848484000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF0000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0000008400C6C6C600FFFFFF00C6C6C60000008400FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000000000000084840000FFFF0000FF
      FF0000FFFF000084840000FFFF0000FFFF000084840000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600000000000000
      000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF00FFFFFF0000008400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000008484840084848400848484000000
      000000FFFF0000FFFF000084840000FFFF0000FFFF000084840000000000FFFF
      FF00C6C6C600C6C6C600FFFFFF00C6C6C600C6C6C600FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0000008400C6C6C600FFFFFF00C6C6C60000008400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000FFFF0000000000C6C6
      C6000000000000FFFF0000FFFF000084840000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000084000000840000008400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000084840000FFFF000000
      0000848484000000000000FFFF0000FFFF000084840000FFFF0000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C60000000000FFFF
      FF00FFFFFF00C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000084840000FF
      FF00000000008484840000FFFF0000FFFF0000FFFF000084840000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000084848400848484000000000000000000C6C6C600C6C6C600000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000084
      840000FFFF008484840000FFFF0000FFFF000084840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084848400C6C6C60084848400848484008484
      84008484840084848400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF008484
      8400FFFFFF00C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400848484008484840084848400000000000000000084848400FFFF
      FF00FFFFFF008484840084848400000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0000848400C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF000084840000FFFF00FFFFFF00000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF000000000000FFFFFF0000000000FFFF0000FFFF
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000084
      84000084840000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000084840000848400008484000000000000FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000084
      840000FFFF00FFFFFF0000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00008484840000000000FFFF0000FFFF
      0000FFFF000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484000000
      000084840000FFFF0000FFFF0000FFFFFF0000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      840000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000FFFF00008484000084840000848400008484000084840000000000008484
      0000FFFF0000FFFF0000FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF0084848400FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF000084848400C6C6C60000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000084840000FF
      FF00FFFFFF000000000084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF00000000000084848400FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000FFFF00008484000084840000848400000000000084840000FFFF
      0000FFFF0000FFFFFF00000000008484000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF0084848400FFFF
      0000FFFF0000FFFF000000008400000084000000840000008400FFFF0000FFFF
      0000FFFF000084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008484000084840000FF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      00000000000084848400FFFF000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000FFFF0000848400000000000084840000FFFF0000FFFF
      0000FFFFFF0000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF0084848400FFFF
      0000FFFF00000000FF000000FF0000008400000084000000840000008400FFFF
      0000FFFF000084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000FFFF00FFFF
      FF00000000008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF000000000000FFFFFF0000000000FFFF0000FFFF
      00000000000000000000FFFF000000000000C6C6C600C6C6C600FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000084840000FFFF0000FFFF0000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF0084848400FFFF
      0000FFFF00000000FF000000FF0000008400FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF000084848400C6C6C60000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000008484000084840000FFFF0000FF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF000000000000FFFFFF0000000000FFFF0000FFFF
      000000000000FFFFFF0000000000FFFF000000000000FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000000000000000000084840000FFFF0000FFFF0000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF0084848400FFFF
      0000FFFF0000FFFF00000000FF0000008400FFFF00000000840000008400FFFF
      0000FFFF000084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF00FFFFFF000000
      0000FFFFFF008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF000000000000FFFFFF0000000000FFFF0000FFFF
      000000000000C6C6C60000000000FFFF000000000000C6C6C600FFFFFF00FFFF
      FF00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084840000FFFF0000FFFF0000FFFFFF00000000008484
      00008484840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF0084848400FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF000084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF000000000000FFFFFF00FFFFFF0000000000FFFF
      000000000000FFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000084840000FFFF0000FFFF0000FFFFFF0000000000FFFF00008484
      0000848400008484840000000000FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00C6C6C6008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000084840000FFFF00FFFFFF0000000000FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFFFF0000000000FFFF
      000000000000C6C6C60000000000FFFF0000FFFF0000FFFF000000000000FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      000084840000FFFF0000FFFF0000FFFFFF0000000000FFFFFF0000000000FFFF
      000084840000848400008484840000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00C6C6C600C6C6C600FFFFFF00FFFFFF008484840000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6008484840000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000840000008400000084000000000084848400FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000848484000000840000008400000084000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000008484840000000000848484000000000084848400000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C60000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C60000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000C6C6C6008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000C6C6C6008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600C6C6C6008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      840000848400C6C6C60000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484008484
      8400C6C6C6008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400C6C6
      C600C6C6C6008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484840000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400C6C6C600C6C6
      C60084848400C6C6C600C6C6C600848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400C6C6C600C6C6
      C600C6C6C6008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00C6C6C6000000840000008400C6C6C600C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000084848400848484008484840084848400FFFFFF0000FFFF00C6C6
      C60000848400C6C6C60084848400C6C6C60000FFFF00C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000008484840084848400FFFF
      FF0084848400848484008484840084848400C6C6C600C6C6C60000000000C6C6
      C600C6C6C6008484840084848400C6C6C600C6C6C60084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000C6C6C600C6C6
      C60084848400848484008484840084848400C6C6C600C6C6C600C6C6C6008484
      8400FFFFFF00FFFFFF00C6C6C600848484008484840084848400848484008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000008400000084000000840000008400C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000848400C6C6C60000848400C6C6C60000848400FFFFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF000000000000000000000000008484840084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600FFFFFF000000
      0000C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6C6008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      84000000840000008400000084000000840000008400C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C60000848400FFFF
      FF0000FFFF00FFFFFF0000FFFF00C6C6C60000848400FFFFFF0000FFFF00C6C6
      C60000848400C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400848484008484
      8400FFFFFF00C6C6C60000000000C6C6C600FFFFFF0000000000C6C6C600FFFF
      FF0000000000C6C6C600C6C6C60084848400848484008484840084848400C6C6
      C600C6C6C6008484840084848400000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00C6C6C600000084000000
      8400000084000000840000008400000084000000840084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FFFF00FFFFFF0000FFFF00FFFFFF0084848400C6C6C6000084
      8400C6C6C60000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C6008484
      8400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00C6C6
      C60084848400FFFFFF00C6C6C60000000000C6C6C600FFFFFF0000000000C6C6
      C600FFFFFF0000000000C6C6C600C6C6C600C6C6C60084848400848484008484
      840084848400C6C6C600C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484008484
      8400848484008484840084848400848484000000000000000000848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF0000008400000084000000
      840000008400FFFFFF0084848400000084000000840000008400C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C60000FFFF00C6C6
      C60084848400C6C6C60000FFFF00C6C6C60000FFFF00FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C600FFFFFF00C6C6C60000848400C6C6C600FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000000000084848400FFFFFF00C6C6
      C600C6C6C60084848400FFFFFF00C6C6C60000000000C6C6C600FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00000000008484
      84008484840084848400C6C6C600848484000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C6008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      8400848484008484840084848400000000008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF0000008400000084000000
      8400FFFFFF00FFFFFF00FFFFFF00C6C6C600000084000000840000008400C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C60000FF
      FF00C6C6C60084848400C6C6C60000848400C6C6C60000FFFF00FFFFFF0000FF
      FF00C6C6C60000848400C6C6C60000848400FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF008484840000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF0000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF0084848400C6C6C600FFFF
      FF0084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6008484840084848400848484008484840084848400C6C6C600C6C6C600C6C6
      C600C6C6C6008484840084848400000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF0000008400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000008400000084008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00C6C6C60000FFFF00FFFFFF0000FFFF00FFFF
      FF0000848400C6C6C60000848400C6C6C60084848400C6C6C600C6C6C600FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000848400C6C6C60000FFFF00FFFF
      FF0000FFFF008484840000000000000000000000000000000000000000008484
      8400FFFFFF00C6C6C600C6C6C6008484840084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF0084848400C6C6
      C600FFFFFF0084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600848484008484840084848400C6C6C600FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000084000000
      840084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000C6C6C60000FF
      FF00FFFFFF0000FFFF00C6C6C60084848400C6C6C60000FFFF00C6C6C60000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C60000848400C6C6C6008484
      8400C6C6C60000FFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C60084848400848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF008484
      8400C6C6C600FFFFFF0084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C6008484840084848400FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      840000008400C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000848400C6C6C60000FFFF00C6C6C60084848400C6C6
      C60000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00008484008484
      840084848400C6C6C600C6C6C600FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFF
      FF0084848400C6C6C600FFFFFF0084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C60084848400FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000840000008400C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF008484
      84000000000000000000000000000000000000000000C6C6C600FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C60000FFFF00C6C6C6000084
      8400C6C6C60084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00C6C6C60000848400C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600FFFFFF0084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400C6C6C60084848400FFFFFF00C6C6C600FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000840000008400C6C6C600C6C6C600FFFFFF00FFFFFF008484
      84000000000000000000000000000000000000000000C6C6C60000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6
      C60000848400C6C6C60000FFFF00C6C6C60000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000848400FFFFFF0000FFFF00FFFFFF0000FFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      84008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600000000008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400848484000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000840000008400C6C6C600FFFFFF00FFFFFF008484
      84000000000000000000000000000000000000000000848484008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6C600C6C6
      C6008484840000FFFF00FFFFFF0000848400C6C6C60000848400FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000FFFF
      FF00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000840000008400FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000848400FFFFFF0000FFFF00C6C6C60084848400C6C6
      C60000FFFF00C6C6C60000FFFF00FFFFFF0000FFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C60084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400000000008484840084848400FFFF
      FF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000848400C6C6C60000FFFF00848484008484
      8400C6C6C60000FFFF00FFFFFF0000FFFF00FFFFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFF
      FF00FFFFFF00C6C6C6000000000084848400C6C6C600C6C6C600C6C6C600FFFF
      FF008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00C6C6
      C60000848400FFFFFF0000FFFF00FFFFFF0000FFFF0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400848484008484840084848400848484008484
      8400FFFFFF00C6C6C6000000000084848400C6C6C600C6C6C600C6C6C6008484
      8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484008484840000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600848484008484
      8400FFFFFF00C6C6C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6008484
      8400FFFFFF008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      840084848400C6C6C60000000000C6C6C600FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      840084848400C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      840084848400FFFFFF0084848400848484008484840084848400848484008484
      840084848400C6C6C60000000000848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484008484840000FF
      FF00FFFFFF0000FFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000848400008484000000000000848400008484000084840000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000084840000000000008484000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF0084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00848484000000000000000000000000000000000084008400840084008400
      8400000000008400840084008400840084008400840000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000084848400000000000000
      0000840084000000000084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000084000000
      84000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000084000000
      84000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484000000000000000000000000000000
      0000840084008400840084008400000000008400840084008400840084008400
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400C6C6C600C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600C6C6
      C600840084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400C6C6C60000008400000084000000
      8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400848484008484840084848400C6C6C60000008400000084000000
      8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000840084000000000084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00000084000000840000008400FFFF
      FF00848484000000840000008400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00000084000000840000008400FFFF
      FF00848484000000840000008400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400C6C6C600C6C6C600C6C6C600840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0000008400FFFFFF00FFFF
      FF00FFFFFF00848484000000840000008400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0000008400FFFFFF00FFFF
      FF00FFFFFF00848484000000840000008400C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000084000000840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000084000000840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000840000008400C6C6C600FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000840000008400C6C6C600FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000840000008400FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000840000008400FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6C600000000008484
      8400FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600FFFF
      FF00FFFFFF008484840000000000848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600FFFF
      FF00FFFFFF008484840000000000848484008484840084848400848484008484
      84008484840084848400848484000000000000000000C6C6C600FFFFFF00C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6
      C600FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6
      C600FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000FFFFFF00FFFFFF00C6C6
      C600C6C6C6000000000084848400FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8400FFFFFF008484840000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00C6C6C60084848400000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8400FFFFFF008484840000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00C6C6C600848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0084848400FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000000000008484840084848400C6C6C600C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF008484840000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00C6C6
      C60000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF008484840000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00C6C6
      C60000FFFF00FFFFFF0084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C6008484
      84008484840084848400FFFFFF0000FFFF00FFFFFF0084848400FFFFFF0000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6008484840084848400C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      84008484840084848400848484008484840084848400C6C6C60000000000FFFF
      FF00FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      84008484840084848400848484008484840084848400C6C6C60000000000FFFF
      FF00FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400FFFFFF00FFFF
      FF00FFFFFF0000FFFF0084848400FFFFFF008484840000FFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C60084848400C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400FFFFFF008484
      84008484840084848400848484008484840084848400C6C6C600000000008484
      84008484840084848400FFFFFF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400FFFFFF008484
      84008484840084848400848484008484840084848400C6C6C600000000008484
      84008484840084848400FFFFFF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6008484
      840084848400C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400C6C6C6000000000000FF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C600FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848400C6C6C6000000000000FF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C600FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C600C6C6C600C6C6C6000000000000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF008484840000FFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00C6C6C600FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00C6C6C600FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600848484008484840084848400C6C6C60000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0084848400FFFFFF0000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84008484840084848400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84008484840084848400848484008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0084848400FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      00000000000000000000000000008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00C6C6C60084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00C6C6C600848484000000
      0000C6C6C600FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000C6C6C600FFFFFF0084848400FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000840084008400840000000000840084008400840084008400840084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF008484840000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400840084000000
      0000000000000000000084008400000000008400840084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00C6C6
      C600848484000000000000000000000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008400840084008400840084000000
      0000FFFFFF00FFFFFF0084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0084848400848484008484840084848400FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484000000000000000000000000000000
      0000840084008400840084008400000000008400840084008400840084008400
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000C6C6C600FFFFFF0084848400FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000840084008400840000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00C6C6C600FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000840084000000000084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C600FFFFFF0000FFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400C6C6C600C6C6C600C6C6C600840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6008484840084848400848484008484840084848400C6C6C600C6C6
      C60000FFFF00FFFFFF00FFFFFF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400000000000000000000000000000000000000000084848400C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
      C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600C6C6C600FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00848484000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000C6C6C600FFFFFF0084848400FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00C6C6C600C6C6C6008484
      840000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF008484
      8400C6C6C600C6C6C600FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF008484840000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      000000000000000000000000000084848400C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0084848400C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF008484840000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF0084000000840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000084848400C6C6C600C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008484
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF0084848400C6C6C600FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF008484840000000000000000000000000000000000C6C6C600FFFFFF00C6C6
      C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C6008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000084848400FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF00FFFFFF0000FFFF00FFFF
      FF008484840000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
      C600C6C6C6000000000084848400FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF008484840084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000C6C6C600FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF00FFFFFF00FFFF
      FF008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600FFFFFF00C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF0084848400C6C6C60000FFFF00FFFF
      FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0084848400FFFF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6C600000000008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0084848400C6C6C600FFFF
      FF00848484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C6008484
      84008484840084848400FFFFFF0000FFFF00FFFFFF0084848400FFFFFF0000FF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000000
      0000848484008484840084848400848484008484840084848400848484008484
      84008484840084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000084848400C6C6
      C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6
      C600848484000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF000000000000000000848484008484
      8400C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400FFFFFF00FFFF
      FF00FFFFFF0000FFFF0084848400FFFFFF008484840000FFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6008484
      840084848400C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00848484000000000000000000000000008484840084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C60084848400C6C6C600C6C6C600C6C6C6000000000000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF008484840000FFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600848484008484840084848400C6C6C60000000000FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0084848400FFFFFF0000FF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0084848400FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      00000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484000000000000000000424D3E000000000000003E000000
      2800000080000000E00000000100010000000000000E00000000000000000000
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
      00000000000000000000000000000000F0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFF
      C03FFFFFC03FFFFFC03FFFFFC03FFFFF801FF3FE800000008000000080000000
      801FE3FD800000008000000080000000000FF1F9000000000000000000000000
      000FF8F3000000000000000000000000000FFC67000000000000000000000000
      00001E0F00000000000000000000000080001F0F800000008000000080000000
      80003F1F800000008000000080000000C000FE4FC0000000C0000000C0000000
      F001F8E7F0000000F0000000F0000000FF000073FC000000F8000000E0000000
      FF000079FC000000FC000000C0000000FE0001FEFC00000080000000C0000000
      FC0003FFFC00000000000000C0000000F80007FFFC00000000000000E0000000
      F80007FFFC00000000000000E0000000F80003FFF000000000000000F0000000
      F80003FFC000000000000000F0000000F80003FF0003FEFF00000000F8000000
      F80001FF0000FC7F00000000F8000000FC0000FF0000783F00000000FC000000
      FC0001FF0000701F00000000FC000000FE0003FF80007EFF00000000FE000000
      FFC003FFC0007EFF00000001FE000001FFC003FFE000FEFF80000003FE000003
      FFE001FFE000FDFFF8000007FE000007FFE001FFE0033DFFFE00000FFE00000F
      FFF003FFE00FC3FFFE00001FFE00001FFFFC1FFFF03FFFFFFE00003FFE00003F
      FFFFFFFFF8FFFFFFFE00007FFE00007FF0FFFFFFF0FFFFFFF0FFFFFFF87FFFFF
      C03FFFFFC03FFFFFC03FFFFFE01FFFFF80000000801FFFFF80000000C00FFFFF
      800000008000000780000000C00FFFFF0000000000000007000000008007FFFF
      0000000000000007000000008007FFFF00000000000000070000000080000000
      00000000000000070000000080000000800000008000000080000000C0000000
      800000008000000080000000C0000000C0000000C0000000C0000000E0000000
      F0000000F0C00000F0000000F8000000FE000000FFC00000FE000000FC000000
      FE000000FFC00000FE000000FC000000FE000000FFC00000FE000000FC000000
      FE000000FFC00000FE000000FC000000FE000000FFC00000FE000000FC000000
      C0000000FF000000FE000000FC00000080000000FF000000FE000000FC000000
      00000000F3000000FE000000FC00000000000000E0000000FE000000FC000000
      00000000EC000000FE000000FC00000000000000EF000000FE000000FC000000
      00000000EF000000FE000000FC00000000000000EF000000FE000000FC000000
      80000001E0000000FE000000FC000000C0000003F3000000FE000000FC000000
      E0000007FF000000FE000001FC000000FE00000FFF000001FE000003FC000000
      FE00001FFFF80003FE000007FC000000FE00003FFFF80007FE00000FFC000000
      FE00007FFFF8000FFE00001FFFFFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFF
      C03FFFFFC03FFFFFC03FFFFFC03FFFFF801FFFFF800000008000000080000000
      801FFFFF800000008000000080000000000FFFFF000000000000000000000000
      000FFFFF000000000000000000000000000FFFFF000000000000000000000000
      0000000300000000000000000000000080000003800000008000000080000000
      80000003800000008000000080000000C0000003C0000000C0000000C0000000
      F0C00003F0000000F0000000F0000000FFC00003F0000000FE00000000000000
      FFC00003F0000000FE00000000000000FFC00003F0000000C000000000000000
      FFC00003F0000000C000000000000000FFC00003F0000000E000000000000000
      FFC00003F0000000F000000000000000FF800003F0000000F800000000000000
      FF800003F0000000FC00000000000000FF000003F0000000FC00000000000000
      FF000003F0000000F800000000000000FE000003F0000000F000000000000000
      FE000003E0000000E000000000000000FC000003E0000000C000000000000000
      FC000003FE000001C000000100000001F8000003FE000003FE000003FE000003
      FC400003FE000007FE000007FE000007FFC00003FE00000FFE00000FFE00000F
      FFC00007FE00001FFE00001FFE00001FFFEAAAAFFE00003FFE00003FFE00003F
      FFFFFFFFFE00007FFE00007FFE00007FF87FFFFFF0FFFFFFF0FFFFFFF0FFFFFF
      E01FFFFFC03FFFFFC03FFFFFC03FFFFFC00FFFFF801FFFFF801FFFFF801FFFFF
      C003FFFF8007FFFF801FFFFF801FFFFF8000FFFF0001FFFF000FFFFF0000000F
      80003FFF00007FFF0001FFFF0000000780000FFF00001FFF00007FFF00000007
      800003FF000007FF00001FFF00000007C00000FF800001FF800007FF80000007
      C000003F800000FF800001FF80000007E000000F800000FFC000007FC0000007
      F8000003800000FF0000001FF0000007F0000000800000FF0000000FFC000007
      F0000000800000FF00000003FC000007E0000000800000FF00000001FC000007
      E0000001800000FF00000000FC000007C0000001C00001FF00000000FC000007
      C0000003E00003FF80000000FC00000780000007F00007FFC0000000FC000007
      80000007F80003FFE0000000FC0000070000000FFC0001FFF0000000FC000007
      0000000FFF0003FFF8000000FC0000078000001FFFFC0FFFFC000001FC000007
      E000001FFFFE3FFFF8000003FC000007F800003FFFFFFFFFF0000007FC000007
      FE00003FFFFFFFFFF000000FFC000007FF80007FFFFFFFFFF000001FFC000007
      FFE0007FFFFFFFFFF000007FFC000007FFF800FFFFFFFFFFF80001FFFE00001F
      FFFE00FFFFFFFFFFFC0007FFFFF001FFFFFF81FFFFFFFFFFFE003FFFFFF803FF
      FFFFE3FFFFFFFFFFFF81FFFFFFFC07FFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFF
      C03FFFFFC03FFFFFC03FFFFFC03FFFFF801FFFFF801FFFFF801FFFFF801FFFFF
      801FFFFF800FFFFF801FFFFF801FFFFF000FFFFF00001FFF000003FF000003FF
      000FFFFF00001FFF000001FF000001FF000FFFFF00003FFF000001FF000001FF
      0003FFFF0000FFFF000001FF000001FF8007FFFF8001FFFF800001FF800001FF
      801FFFFF8000007F800001FF800001FFC03FFFFFC000007FC00001FFC00001FF
      E0000FFFF00001FFF00001FFF00001FFE0000FFFFC0003FFF80001FFF80001FF
      C0003FFFF80007FFF80001FFF80001FF80007FFFF80007FFF80001FFF80001FF
      0000FFFFF80003FFF80001FFF80001FF00000001F80003FFF8000000F8000000
      00000001F80003FFF8000000F800000000000001F80001FFF8000000F8000000
      00000001FC0000FFF8000000F800000000000001FC0001FFF8000000F8000000
      80000001FE0003FFF8000000F800000080000001FFC003FFF8000000F8000000
      C0000001FFC003FFFC000000FC000000F8000001FFE001FFFF800000FF800000
      F8000001FFE001FFFFC00000FFC00000FC000001FFF003FFFFC00000FFC00000
      FC000001FFFC1FFFFFC00000FFC00000FE000001FFFFFFFFFFC00000FFC00000
      FF800001FFFFFFFFFFC00000FFC00000FF800001FFFFFFFFFFC00000FFC00000
      FF800001FFFFFFFFFFC00000FFC00000FFF00001F0FFFFFFF0FFFFFFF0FFFFFF
      FFE00001C03FFFFFC03FFFFFC03FFFFF7FC00001801FFFFF801FFFFF801FFFFF
      1F000001801FFFFF801FFFFF801FFFFF00000001000FFFFF000FFFFF000FFFFF
      00000001000FFFFF000FFFFF000FFFFF00000001000FFFFF00000003000FFFFF
      00000001000FFFFF000000030003FFFF00000001801FFFFF800000038007FFFF
      0000000180101FFF80000003801FFFFF00000001C0001FFFC0000003C03FFFFF
      00000001F0003FFFC0000003E0000FFF00000001FC00FFFFC0000003E0000FFF
      00000001FE01FFFFC0000003C0003FFF00000001FF00FFFFC000000380007FFF
      00000001FF007FFFC00000030000FFFF00000001FE007FFFC000000300000001
      00000001FC00C7FFC00000030000000100000001F80061FFC000000300000001
      00000001F800307FC00000030000000100000001F800783FC000000300000001
      00000001F800FC0FC00000038000000100000001F800F003C000000380000001
      00000001F800E001C0000003C0000001001FF000FC00C000C0000003F8000001
      803FF000FC004000C0000003F8000001E0FFF000FE01C000C0000003FC000001
      FFFFF000FFC7C000FFFFFFFFFC000001FFFFF801FFFFE001FFFFFFFFFE000001
      FFFFF801FFFFF003FFFFFFFFFF800001FFFFFC03FFFFFC07FFFFFFFFFF800001
      FFFFFF0FFFFFFFFFFFFFFFFFFF80000100000000000000000000000000000000
      000000000000}
  end
  object TeamScheduleDatabase: TDatabase
    DriverName = 'Microsoft dBase Driver (*.dbf)'
    LoginPrompt = False
    SessionName = 'privateSESSION'
    Left = 408
    Top = 32
  end
  object Session1: TSession
    Active = True
    SessionName = 'privateSESSION'
    Left = 440
    Top = 32
  end
  object Table1: TTable
    Left = 408
    Top = 64
  end
end
