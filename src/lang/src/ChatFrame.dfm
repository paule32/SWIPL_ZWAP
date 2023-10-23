object Frame20: TFrame20
  Left = 0
  Top = 0
  Width = 618
  Height = 308
  TabOrder = 0
  object PageControl6: TJvPageControl
    Left = 0
    Top = 0
    Width = 618
    Height = 308
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '#FPC'
      DesignSize = (
        610
        271)
      object Splitter1: TSplitter
        Left = 435
        Top = 0
        Height = 245
        Color = clSilver
        ParentColor = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 245
        Width = 610
        Height = 26
        Align = alBottom
        Caption = 'Panel1'
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          610
          26)
        object sendChatTextEdit: TEdit
          Left = 0
          Top = 0
          Width = 437
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
        end
      end
      object Button9: TJvImgBtn
        Left = 442
        Top = 242
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Send'
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 435
        Height = 245
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Panel2'
        ParentBackground = False
        TabOrder = 2
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 433
          Height = 32
          Align = alTop
          Caption = 'Panel3'
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            433
            32)
          object ircTopicEdit: TEdit
            Left = 8
            Top = 0
            Width = 419
            Height = 27
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
          end
        end
        object PageControl7: TJvPageControl
          Left = 1
          Top = 33
          Width = 433
          Height = 211
          ActivePage = TabSheet2
          Align = alClient
          TabOrder = 1
          object TabSheet2: TTabSheet
            Caption = 'main'
            object ircRichEdit: TRichEdit
              Left = 0
              Top = 0
              Width = 425
              Height = 177
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
      end
      object ListBox1: TListBox
        Left = 438
        Top = 0
        Width = 172
        Height = 245
        Align = alClient
        ItemHeight = 19
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Login'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 201
        Top = 32
        Height = 208
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 610
        Height = 32
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        object ircChannelEdit: TEdit
          Left = 136
          Top = 0
          Width = 281
          Height = 27
          TabOrder = 0
          Text = 'irc.libera.chat'
        end
        object ircConnectButton: TJvImgBtn
          Left = 0
          Top = 2
          Width = 121
          Height = 25
          Caption = 'Connect'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Color = clSilver
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 240
        Width = 610
        Height = 31
        Align = alBottom
        Caption = 'Panel5'
        ParentBackground = False
        TabOrder = 1
      end
      object ircListBox: TListBox
        Left = 0
        Top = 32
        Width = 201
        Height = 208
        Align = alLeft
        Color = clWhite
        ItemHeight = 19
        Items.Strings = (
          'irc.libera.chat')
        TabOrder = 2
      end
      object PageControl8: TJvPageControl
        Left = 204
        Top = 32
        Width = 406
        Height = 208
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 3
        object TabSheet4: TTabSheet
          Caption = 'User Info'
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 398
            Height = 174
            Align = alClient
            TabOrder = 0
            object ircLabelNick: TLabel
              Left = 8
              Top = 2
              Width = 45
              Height = 19
              Caption = 'Nick:'
              Transparent = False
            end
            object ircLabelPassword: TLabel
              Left = 8
              Top = 50
              Width = 81
              Height = 19
              Caption = 'Password:'
              Transparent = False
            end
            object ircLabelChannel: TLabel
              Left = 8
              Top = 98
              Width = 72
              Height = 19
              Caption = 'Channel:'
              Transparent = False
            end
            object ircUserName: TEdit
              Left = 8
              Top = 24
              Width = 201
              Height = 27
              TabOrder = 0
              Text = 'rufi123'
            end
            object ircUserPass: TEdit
              Left = 8
              Top = 72
              Width = 201
              Height = 27
              PasswordChar = '+'
              TabOrder = 1
              Text = 'test123'
            end
            object ircChannel: TEdit
              Left = 8
              Top = 120
              Width = 201
              Height = 27
              TabOrder = 2
              Text = '#tmp'
            end
          end
        end
      end
    end
  end
end
