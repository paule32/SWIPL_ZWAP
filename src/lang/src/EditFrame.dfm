object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 877
  Height = 240
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 522
    Top = 0
    Width = 6
    Height = 240
    Color = clSilver
    ParentColor = False
  end
  object PageControl2: TJvPageControl
    Left = 0
    Top = 0
    Width = 522
    Height = 240
    ActivePage = TabSheet1
    Align = alLeft
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'JavaScript'
      object SynEdit1: TSynEdit
        Left = 0
        Top = 0
        Width = 514
        Height = 206
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -16
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Gutter.ShowModification = True
        Gutter.Width = 49
        Lines.UnicodeStrings = 'SynEdit1'
        WantTabs = True
        FontSmoothing = fsmNone
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'AsmJit'
      ImageIndex = 1
      object SynEdit2: TSynEdit
        Left = 0
        Top = 0
        Width = 514
        Height = 206
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -16
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Gutter.ShowModification = True
        Gutter.Width = 49
        Lines.UnicodeStrings = 'SynEdit1'
        WantTabs = True
        FontSmoothing = fsmNone
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'C++'
      ImageIndex = 2
      object SynEdit3: TSynEdit
        Left = 0
        Top = 0
        Width = 514
        Height = 206
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Style = []
        TabOrder = 0
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -16
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Gutter.ShowModification = True
        Gutter.Width = 49
        Lines.UnicodeStrings = 'SynEdit1'
        WantTabs = True
        FontSmoothing = fsmNone
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'SQL'
      ImageIndex = 3
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 514
        Height = 206
        Align = alClient
        TabOrder = 0
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 510
          Height = 202
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          TabPosition = tpBottom
          object TabSheet5: TTabSheet
            Caption = 'View 1'
            object StringGrid1: TStringGrid
              Left = 0
              Top = 0
              Width = 502
              Height = 170
              Align = alClient
              TabOrder = 0
              ColWidths = (
                64
                107
                108
                104
                104)
              RowHeights = (
                24
                24
                24
                24
                24)
            end
          end
        end
      end
    end
  end
  object PageControl3: TPageControl
    Left = 528
    Top = 0
    Width = 349
    Height = 240
    ActivePage = TabSheet6
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet6: TTabSheet
      Caption = 'Members'
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 341
        Height = 206
        Align = alClient
        Indent = 21
        TabOrder = 0
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Document'
      ImageIndex = 1
      object TreeView2: TTreeView
        Left = 0
        Top = 0
        Width = 341
        Height = 206
        Align = alClient
        Indent = 21
        TabOrder = 0
      end
    end
  end
end
