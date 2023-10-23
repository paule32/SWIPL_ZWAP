object Frame6: TFrame6
  Left = 0
  Top = 0
  Width = 234
  Height = 403
  TabOrder = 0
  object PageControl5: TJvPageControl
    Left = 0
    Top = 0
    Width = 234
    Height = 403
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Members'
      object Splitter1: TSplitter
        Left = 0
        Top = 326
        Width = 226
        Height = 6
        Cursor = crVSplit
        Align = alBottom
        Color = clSilver
        ParentColor = False
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 81
        Height = 19
        Align = alTop
        Caption = 'DataBase:'
      end
      object DatabaseComboBox: TJvComboBox
        Left = 0
        Top = 19
        Width = 226
        Height = 27
        Align = alTop
        Style = csDropDownList
        TabOrder = 0
        Text = ''
        OnChange = DatabaseComboBoxChange
      end
      object Panel1: TPanel
        Left = 0
        Top = 332
        Width = 226
        Height = 37
        Align = alBottom
        TabOrder = 1
        object JvImgBtn1: TJvImgBtn
          Left = 0
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Import'
          TabOrder = 0
          Color = clSilver
        end
        object JvImgBtn2: TJvImgBtn
          Left = 96
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Export'
          TabOrder = 1
          Color = clSilver
        end
      end
      object ListBox1: TListBox
        Left = 0
        Top = 46
        Width = 226
        Height = 280
        Align = alClient
        ItemHeight = 19
        TabOrder = 2
        OnMouseDown = ListBox1MouseDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Team Server'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 328
        Width = 226
        Height = 6
        Cursor = crVSplit
        Align = alBottom
      end
      object Panel2: TPanel
        Left = 0
        Top = 334
        Width = 226
        Height = 35
        Align = alBottom
        TabOrder = 0
      end
      object JvTreeView1: TJvTreeView
        Left = 0
        Top = 27
        Width = 226
        Height = 301
        Align = alClient
        Indent = 21
        TabOrder = 1
        ItemHeight = 22
      end
      object JvEdit1: TJvEdit
        Left = 0
        Top = 0
        Width = 226
        Height = 27
        Align = alTop
        TabOrder = 2
        Text = 'JvEdit1'
      end
    end
  end
end
