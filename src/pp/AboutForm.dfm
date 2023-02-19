object OKRightDlg: TOKRightDlg
  Left = 200
  Top = 152
  BorderStyle = bsDialog
  Caption = 'About this Application'
  ClientHeight = 220
  ClientWidth = 473
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 119
  TextHeight = 16
  object Bevel1: TBevel
    Left = 10
    Top = 10
    Width = 346
    Height = 198
    Shape = bsFrame
  end
  object JvLabel1: TJvLabel
    Left = 16
    Top = 40
    Width = 329
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'PROLOG Transpiler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -18
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvLabel2: TJvLabel
    Left = 16
    Top = 72
    Width = 329
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = '(c) 2023 by Jens Kallup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -17
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvLabel3: TJvLabel
    Left = 16
    Top = 112
    Width = 329
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Version 0.0.1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -17
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object OKBtn: TButton
    Left = 369
    Top = 10
    Width = 93
    Height = 31
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = OKBtnClick
  end
end
