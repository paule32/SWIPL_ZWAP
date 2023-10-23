object Frame24: TFrame24
  Left = 0
  Top = 0
  Width = 581
  Height = 607
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 559
    Width = 581
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 559
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 579
      Height = 557
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 571
          Height = 526
          Align = alClient
          Color = 13303807
          ParentColor = False
          TabOrder = 0
          OnDragDrop = ScrollBox1DragDrop
          OnDragOver = ScrollBox1DragOver
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 562
    Width = 581
    Height = 45
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 11
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
    end
  end
  object JvPopupMenu1: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 128
    Top = 144
  end
end
