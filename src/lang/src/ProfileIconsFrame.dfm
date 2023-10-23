object Frame27: TFrame27
  Left = 0
  Top = 0
  Width = 271
  Height = 337
  TabOrder = 0
  OnResize = FrameResize
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 271
    Height = 337
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object JvOutlookBar1: TJvOutlookBar
      Left = 0
      Top = 0
      Width = 193
      Height = 305
      Pages = <
        item
          Buttons = <
            item
              Caption = 'Common Settings'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
            end
            item
              Caption = 'Default Project Template'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
            end
            item
              Caption = 'Team - Server'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
              OnClick = JvOutlookBar1Pages0Buttons2Click
            end
            item
              Caption = 'Check for Update'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
            end
            item
              Caption = 'About'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
              OnClick = JvOutlookBar1Pages0Buttons4Click
            end>
          ButtonSize = olbsLarge
          Caption = 'Application'
          DownFont.Charset = DEFAULT_CHARSET
          DownFont.Color = clWindowText
          DownFont.Height = -19
          DownFont.Name = 'MS Sans Serif'
          DownFont.Style = [fsBold]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          TopButtonIndex = 0
        end
        item
          Buttons = <
            item
              Caption = 'Profiles'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
              OnClick = JvOutlookBar1Pages1Buttons0Click
            end
            item
              Caption = 'Permissions'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
            end
            item
              Caption = 'Schedule Audienc'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
              OnClick = JvOutlookBar1Pages1Buttons2Click
            end>
          ButtonSize = olbsLarge
          Caption = 'People'
          DownFont.Charset = DEFAULT_CHARSET
          DownFont.Color = clWindowText
          DownFont.Height = -19
          DownFont.Name = 'MS Sans Serif'
          DownFont.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          TopButtonIndex = 0
        end
        item
          Buttons = <
            item
              Caption = 'Profiles'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
            end>
          ButtonSize = olbsLarge
          Caption = 'Organizations'
          DownFont.Charset = DEFAULT_CHARSET
          DownFont.Color = clWindowText
          DownFont.Height = -19
          DownFont.Name = 'MS Sans Serif'
          DownFont.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          TopButtonIndex = 0
        end
        item
          Buttons = <
            item
              Caption = 'Setup Server'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
              OnClick = JvOutlookBar1Pages3Buttons0Click
            end
            item
              Caption = 'Configure Hosts'
              ImageIndex = 0
              Tag = 0
              AutoToggle = False
              OnClick = JvOutlookBar1Pages3Buttons1Click
            end>
          ButtonSize = olbsLarge
          Caption = 'Web Site Settings'
          DownFont.Charset = DEFAULT_CHARSET
          DownFont.Color = clWindowText
          DownFont.Height = -19
          DownFont.Name = 'MS Sans Serif'
          DownFont.Style = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = True
          TopButtonIndex = 0
        end>
      PageButtonHeight = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
