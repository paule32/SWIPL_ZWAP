object Frame17: TFrame17
  Left = 0
  Top = 0
  Width = 295
  Height = 241
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 295
    Height = 241
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'COFF'
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 287
        Height = 210
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RadioGroup1: TJvGroupBox
          Left = 8
          Top = 8
          Width = 153
          Height = 121
          Caption = ' Linker: '
          TabOrder = 0
          object RadioButton15: TRadioButton
            Left = 8
            Top = 24
            Width = 137
            Height = 17
            Caption = 'i386   win16'
            TabOrder = 0
          end
          object RadioButton16: TRadioButton
            Left = 8
            Top = 48
            Width = 137
            Height = 17
            Caption = 'i386   win32'
            TabOrder = 1
          end
          object RadioButton17: TRadioButton
            Left = 8
            Top = 72
            Width = 137
            Height = 17
            Caption = 'x86_ia win32'
            TabOrder = 2
          end
          object RadioButton18: TRadioButton
            Left = 8
            Top = 96
            Width = 137
            Height = 17
            Caption = 'x86_84 win64'
            TabOrder = 3
          end
        end
        object RadioGroup2: TJvGroupBox
          Left = 168
          Top = 8
          Width = 105
          Height = 121
          Caption = ' Layout: '
          TabOrder = 1
          object RadioButton19: TRadioButton
            Left = 5
            Top = 24
            Width = 97
            Height = 17
            Caption = 'tiny'
            TabOrder = 0
          end
          object RadioButton20: TRadioButton
            Left = 5
            Top = 48
            Width = 97
            Height = 17
            Caption = 'compact'
            TabOrder = 1
          end
          object RadioButton21: TRadioButton
            Left = 5
            Top = 72
            Width = 97
            Height = 17
            Caption = 'large'
            TabOrder = 2
          end
          object RadioButton22: TRadioButton
            Left = 5
            Top = 96
            Width = 97
            Height = 17
            Caption = 'huge'
            TabOrder = 3
          end
        end
        object RadioGroup4: TJvGroupBox
          Left = 8
          Top = 136
          Width = 265
          Height = 57
          Caption = ' Type: '
          TabOrder = 2
          object RadioButton23: TRadioButton
            Left = 16
            Top = 24
            Width = 57
            Height = 17
            Caption = 'EXE'
            TabOrder = 0
          end
          object RadioButton24: TRadioButton
            Left = 72
            Top = 24
            Width = 57
            Height = 17
            Caption = 'DLL'
            TabOrder = 1
          end
          object RadioButton25: TRadioButton
            Left = 168
            Top = 24
            Width = 57
            Height = 17
            Caption = 'COM'
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ELF'
      ImageIndex = 1
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 287
        Height = 210
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RadioGroup3: TJvGroupBox
          Left = 8
          Top = 8
          Width = 153
          Height = 121
          Caption = ' Linker: '
          TabOrder = 0
          object RadioButton1: TRadioButton
            Left = 8
            Top = 24
            Width = 137
            Height = 17
            Caption = 'i386   elf32'
            TabOrder = 0
          end
          object RadioButton2: TRadioButton
            Left = 8
            Top = 48
            Width = 137
            Height = 17
            Caption = 'x86_ia elf32'
            TabOrder = 1
          end
          object RadioButton3: TRadioButton
            Left = 8
            Top = 72
            Width = 137
            Height = 17
            Caption = 'x86_84 elf64'
            TabOrder = 2
          end
        end
      end
    end
  end
end
