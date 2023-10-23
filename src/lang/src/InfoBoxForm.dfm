object InfoBox: TInfoBox
  Left = 213
  Top = 180
  BorderStyle = bsDialog
  Caption = 'Information'
  ClientHeight = 188
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 115
  TextHeight = 16
  object JvGradient1: TJvGradient
    Left = 0
    Top = 0
    Width = 388
    Height = 188
    Style = grVertical
    StartColor = clTeal
    EndColor = clLime
  end
  object JvScrollBox1: TJvScrollBox
    Left = 24
    Top = 16
    Width = 337
    Height = 121
    Color = clYellow
    ParentColor = False
    TabOrder = 0
    object Memo1: TMemo
      Left = 8
      Top = 8
      Width = 313
      Height = 97
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object JvImgBtn1: TJvImgBtn
    Left = 24
    Top = 152
    Width = 75
    Height = 25
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = JvImgBtn1Click
    Color = clSilver
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -13
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvImgBtn2: TJvImgBtn
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Help'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = JvImgBtn2Click
    Color = clMoneyGreen
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -13
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
  end
  object JvGradientCaption1: TJvGradientCaption
    Active = False
    Captions = <>
    DefaultFont = False
    FormCaption = 'Information'
    FontInactiveColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCaptionText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    GradientInactive = True
    StartColor = clLime
    EndColor = clTeal
    Left = 249
    Top = 152
  end
end
