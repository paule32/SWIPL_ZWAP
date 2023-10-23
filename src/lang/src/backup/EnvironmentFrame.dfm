object Frame22: TFrame22
  Left = 0
  Top = 0
  Width = 680
  Height = 283
  TabOrder = 0
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 680
    Height = 283
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 513
      Top = 0
      Height = 279
    end
    object PageControl3: TJvPageControl
      Left = 0
      Top = 0
      Width = 513
      Height = 279
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
      end
      object TabSheet2: TTabSheet
        Caption = 'Assembly'
        ImageIndex = 1
      end
    end
    object Panel1: TPanel
      Left = 516
      Top = 0
      Width = 160
      Height = 279
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
