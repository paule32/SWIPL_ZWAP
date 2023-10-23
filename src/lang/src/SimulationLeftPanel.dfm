object Frame25: TFrame25
  Left = 0
  Top = 0
  Width = 234
  Height = 396
  TabOrder = 0
  OnResize = FrameResize
  object Splitter1: TSplitter
    Left = 0
    Top = 236
    Width = 234
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 234
    Height = 157
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object ValueListEditor1: TValueListEditor
      Left = 1
      Top = 1
      Width = 232
      Height = 155
      Align = alClient
      DefaultRowHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Consolas'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goThumbTracking]
      ParentFont = False
      PopupMenu = itemPopupMenu
      TabOrder = 0
      OnDrawCell = ValueListEditor1DrawCell
      OnEditButtonClick = ValueListEditor1EditButtonClick
      OnSelectCell = ValueListEditor1SelectCell
      OnSetEditText = ValueListEditor1SetEditText
      ColWidths = (
        109
        117)
    end
  end
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 234
    Height = 236
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ParentColor = False
    Color = clBtnFace
    object TabSheet1: TTabSheet
      Caption = 'Wire'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 226
        Height = 202
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object itemPopupMenu: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    TextMargin = 2
    Left = 48
    Top = 304
    object DeleteItem1: TMenuItem
      Caption = 'Delete Item'
      OnClick = Frame24DeleteItem1Click
    end
  end
end
