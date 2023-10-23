object OKRightDlg: TOKRightDlg
  Left = 208
  Top = 156
  BorderStyle = bsDialog
  Caption = '  -  About ...'
  ClientHeight = 220
  ClientWidth = 473
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 115
  TextHeight = 16
  object Bevel1: TBevel
    Left = 10
    Top = 10
    Width = 346
    Height = 198
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 329
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Private Editor 1.0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 329
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '(c) 2023 by paule32'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 329
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'All Rights Reserved.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 329
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'for private use'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object JvPoweredByJVCL1: TJvPoweredByJVCL
    Left = 72
    Top = 160
    URL = 'http://jvcl.delphi-jedi.org/'
  end
  object JvStarfield1: TJvStarfield
    Left = 368
    Top = 8
    Width = 89
    Height = 81
  end
  object OKBtn: TButton
    Left = 369
    Top = 34
    Width = 93
    Height = 31
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = OKBtnClick
  end
  object JvGradientCaption1: TJvGradientCaption
    Active = False
    Captions = <
      item
        Caption = 'Private Editor 1.0 (c) 2023 paule32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        InactiveColor = clGradientActiveCaption
      end>
    DefaultFont = False
    FormCaption = '  -  About ...'
    FontInactiveColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GradientInactive = True
    StartColor = clRed
    EndColor = clYellow
    Left = 369
    Top = 48
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 368
    Top = 168
  end
end
