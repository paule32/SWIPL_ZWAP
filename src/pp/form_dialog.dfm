object OKRightDlg: TOKRightDlg
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 182
  ClientWidth = 441
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 119
  TextHeight = 16
  object Bevel1: TBevel
    Left = 10
    Top = 10
    Width = 306
    Height = 159
    Shape = bsFrame
  end
  object OKBtn: TButton
    Left = 330
    Top = 10
    Width = 92
    Height = 31
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 330
    Top = 47
    Width = 92
    Height = 31
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = CancelBtnClick
  end
  object TextBox: TMemo
    Left = 20
    Top = 20
    Width = 286
    Height = 139
    BorderStyle = bsNone
    Lines.Strings = (
      'TextBox')
    ParentColor = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
