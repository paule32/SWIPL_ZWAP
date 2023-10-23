object Frame21: TFrame21
  Left = 0
  Top = 0
  Width = 640
  Height = 309
  TabOrder = 0
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 640
    Height = 309
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 513
      Top = 0
      Height = 305
    end
    object PageControl3: TJvPageControl
      Left = 0
      Top = 0
      Width = 513
      Height = 305
      ActivePage = TabSheet1
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabPosition = tpBottom
      object TabSheet1: TTabSheet
        Caption = 'General'
        object Label1: TLabel
          Left = 8
          Top = 112
          Width = 99
          Height = 19
          Caption = 'Undo Limit:'
          Transparent = False
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 0
          Width = 345
          Height = 105
          Caption = ' Editor Options: '
          TabOrder = 0
          object CheckBox1: TCheckBox
            Left = 8
            Top = 24
            Width = 145
            Height = 17
            Caption = 'Insert Mode'
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 8
            Top = 48
            Width = 145
            Height = 17
            Caption = 'Auto-complete Text'
            TabOrder = 1
          end
          object CheckBox3: TCheckBox
            Left = 8
            Top = 72
            Width = 145
            Height = 17
            Caption = 'Cursor behind EOF'
            TabOrder = 2
          end
        end
        object JvSpinEdit1: TJvSpinEdit
          Left = 8
          Top = 136
          Width = 121
          Height = 27
          ButtonKind = bkClassic
          Decimal = 4
          MaxValue = 1000.000000000000000000
          MinValue = 10.000000000000000000
          Value = 10.000000000000000000
          MaxLength = 4
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Source Options'
        ImageIndex = 1
        object Label2: TLabel
          Left = 8
          Top = 11
          Width = 153
          Height = 19
          Caption = 'Source File Type:'
          Transparent = False
        end
        object ComboBox1: TComboBox
          Left = 176
          Top = 8
          Width = 137
          Height = 27
          ItemHeight = 0
          TabOrder = 0
          Text = 'ComboBox1'
        end
        object Button1: TJvImgBtn
          Left = 8
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 1
        end
        object Button2: TJvImgBtn
          Left = 120
          Top = 40
          Width = 75
          Height = 25
          Caption = 'New'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 80
          Width = 369
          Height = 137
          Caption = ' Options: '
          TabOrder = 3
          object Label3: TLabel
            Left = 16
            Top = 28
            Width = 180
            Height = 19
            Caption = 'Syntax Highlighter :'
            Transparent = False
          end
          object Label4: TLabel
            Left = 16
            Top = 56
            Width = 126
            Height = 19
            Caption = 'Block Indent :'
            Transparent = False
          end
          object ComboBox2: TComboBox
            Left = 208
            Top = 24
            Width = 145
            Height = 27
            ItemHeight = 0
            TabOrder = 0
            Text = 'ComboBox2'
          end
          object Edit1: TEdit
            Left = 208
            Top = 56
            Width = 145
            Height = 27
            TabOrder = 1
            Text = 'Edit1'
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 516
      Top = 0
      Width = 120
      Height = 305
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Button3: TJvImgBtn
        Left = 8
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Save'
        TabOrder = 0
        Color = clSilver
      end
      object Button4: TJvImgBtn
        Left = 8
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Apply'
        TabOrder = 1
        Color = clSilver
      end
      object Button5: TJvImgBtn
        Left = 8
        Top = 128
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 2
        Color = clSilver
      end
    end
  end
end
