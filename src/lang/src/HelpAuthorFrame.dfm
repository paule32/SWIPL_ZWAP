object Frame11: TFrame11
  Left = 0
  Top = 0
  Width = 675
  Height = 427
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 383
    Width = 675
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 675
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
  end
  object JvPopupMenu1: TJvPopupMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 40
    Top = 88
    object EditOperations1: TMenuItem
      Caption = 'Edit Operations'
      object Cut1: TMenuItem
        Caption = 'Cut'
      end
      object Copy1: TMenuItem
        Caption = 'Copy'
      end
      object Paste1: TMenuItem
        Caption = 'Paste'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Delete1: TMenuItem
        Caption = 'Delete'
      end
    end
    object CloseTab: TMenuItem
      Caption = 'Close Tab'
      OnClick = CloseTabClick
    end
  end
end
