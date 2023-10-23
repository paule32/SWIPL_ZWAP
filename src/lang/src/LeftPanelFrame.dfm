object Frame23: TFrame23
  Left = 0
  Top = 0
  Width = 306
  Height = 566
  TabOrder = 0
  object LeftPageControl: TJvPageControl
    Left = 0
    Top = 0
    Width = 306
    Height = 566
    ActivePage = TabSheet23
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Design'
      object Splitter1: TSplitter
        Left = 0
        Top = 216
        Width = 298
        Height = 6
        Cursor = crVSplit
        Align = alTop
        Color = clSilver
        ParentColor = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 298
        Height = 216
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 0
        object JvComboBox1: TJvComboBox
          Left = 1
          Top = 1
          Width = 296
          Height = 27
          Align = alTop
          TabOrder = 0
          Text = 'JvComboBox1'
        end
        object PageControl1: TPageControl
          Left = 1
          Top = 28
          Width = 296
          Height = 187
          ActivePage = TabSheet2
          Align = alClient
          TabOrder = 1
          object TabSheet2: TTabSheet
            Caption = 'Properties'
            object JvInspector1: TJvInspector
              Left = 0
              Top = 0
              Width = 288
              Height = 153
              Align = alClient
              ItemHeight = 16
              TabStop = True
              TabOrder = 0
              OnItemValueChanged = JvInspector1ItemValueChanged
              BeforeEdit = JvInspector1BeforeEdit
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Events'
            ImageIndex = 1
            object EventMethodeListBox: TValueListEditor
              Left = 0
              Top = 0
              Width = 237
              Height = 153
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleCaptions.Strings = (
                'Event'
                'Methode')
              ColWidths = (
                92
                139)
            end
          end
        end
      end
      object DesignerIconListViews: TPageControl
        Left = 0
        Top = 222
        Width = 298
        Height = 310
        ActivePage = TabSheet5
        Align = alClient
        MultiLine = True
        Style = tsButtons
        TabOrder = 1
        object TabSheet5: TTabSheet
          Caption = 'Standard'
          object DesignerIconListView_Standard: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              450000000200000000000000FFFFFFFFFFFFFFFF00000000000000000B202054
              4D61696E4D656E750000000000000000FFFFFFFF000000000000000008202054
              50616E656C}
            LargeImages = ImageList1
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            SmallImages = ImageList1
            TabOrder = 0
            ViewStyle = vsReport
            OnMouseDown = DesignerIconListView_StandardMouseDown
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Edits'
          ImageIndex = 1
          object DesignerIconListView_Edit: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              5F000000030000000000000000000000FFFFFFFF000000000000000007202054
              4564697400000000FFFFFFFFFFFFFFFF0000000000000000072020544D656D6F
              00000000FFFFFFFFFFFFFFFF00000000000000000A20205453796E45646974}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Boxs'
          ImageIndex = 2
          object DesignerIconListView_Box: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              AA000000050000000200000002000000FFFFFFFF00000000000000000B202054
              436F6D626F426F7800000000FFFFFFFFFFFFFFFF00000000000000000A202054
              4C697374426F7800000000FFFFFFFFFFFFFFFF00000000000000000C20205453
              63726F6C6C426F7800000000FFFFFFFFFFFFFFFF00000000000000000B202054
              436865636B426F7800000000FFFFFFFFFFFFFFFF00000000000000000D202054
              526164696F47726F7570}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Lists'
          ImageIndex = 3
          object DesignerIconListView_List: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              270000000100000000000000FFFFFFFFFFFFFFFF00000000000000000A202054
              4C697374426F78}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Buttons'
          ImageIndex = 4
          object DesignerIconListView_Button: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              68000000030000000100000001000000FFFFFFFF000000000000000009202054
              427574746F6E00000000FFFFFFFFFFFFFFFF00000000000000000B2020544368
              65636B426F7800000000FFFFFFFFFFFFFFFF00000000000000000D2020545261
              64696F4275746F6E}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Grids'
          ImageIndex = 5
          object DesignerIconListView_Grid: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              2A0000000100000000000000FFFFFFFFFFFFFFFF00000000000000000D202054
              537472696E6747726964}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'DataBase'
          ImageIndex = 6
          object DesignerIconListView_DataBase: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Images'
          ImageIndex = 7
          object DesignerIconListView_Image: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              25000000010000000300000003000000FFFFFFFF000000000000000008202054
              496D616765}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Scroller'
          ImageIndex = 8
          object DesignerIconListView_Scroll: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            Items.Data = {
              4A0000000200000000000000FFFFFFFFFFFFFFFF00000000000000000C202054
              5363726F6C6C426F7800000000FFFFFFFFFFFFFFFF00000000000000000C2020
              545363726F6C6C426172}
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
        object TabSheet17: TTabSheet
          Caption = 'Client / Server'
          ImageIndex = 9
          object DesignerIconListView_CS: TListView
            Left = 0
            Top = 0
            Width = 290
            Height = 183
            Align = alClient
            Columns = <
              item
                Caption = 'Object'
                Width = 200
              end>
            DragCursor = crHandPoint
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Consolas'
            Font.Style = []
            IconOptions.Arrangement = iaLeft
            IconOptions.WrapText = False
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            ShowColumnHeaders = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Setup'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 200
        Width = 298
        Height = 6
        Cursor = crVSplit
        Align = alBottom
        Color = clSilver
        ParentColor = False
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 206
        Width = 298
        Height = 326
        Align = alBottom
        TabOrder = 0
        object PageControl3: TPageControl
          Left = 0
          Top = 0
          Width = 294
          Height = 322
          ActivePage = TabSheet14
          Align = alClient
          MultiLine = True
          Style = tsButtons
          TabOrder = 0
          object TabSheet14: TTabSheet
            Caption = 'Setup Types'
            object Splitter3: TSplitter
              Left = 0
              Top = 173
              Width = 286
              Height = 7
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object CheckListBox1: TCheckListBox
              Left = 0
              Top = 0
              Width = 286
              Height = 173
              Align = alClient
              ItemHeight = 19
              Items.Strings = (
                'Typical'
                'Standard'
                'Customized')
              TabOrder = 0
            end
            object Panel2: TPanel
              Left = 0
              Top = 180
              Width = 286
              Height = 45
              Align = alBottom
              TabOrder = 1
              object JvImgBtn1: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn2: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet15: TTabSheet
            Caption = 'File Groups'
            ImageIndex = 1
            object Splitter4: TSplitter
              Left = 0
              Top = 174
              Width = 286
              Height = 6
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object TreeView2: TTreeView
              Left = 0
              Top = 0
              Width = 286
              Height = 174
              Align = alClient
              Indent = 21
              TabOrder = 0
              Items.Data = {
                04000000290000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
                1045786563697461626C652046696C6573230000000000000000000000FFFFFF
                FFFFFFFFFF00000000000000000A48656C702046696C65732400000000000000
                00000000FFFFFFFFFFFFFFFF00000000000000000B50726F6772616D20444C4C
                230000000000000000000000FFFFFFFFFFFFFFFF00000000000000000A536861
                72656420444C4C}
            end
            object Panel3: TPanel
              Left = 0
              Top = 180
              Width = 286
              Height = 45
              Align = alBottom
              TabOrder = 1
              object JvImgBtn3: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn4: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet16: TTabSheet
            Caption = 'Setup Files'
            ImageIndex = 2
            object Splitter5: TSplitter
              Left = 0
              Top = 173
              Width = 286
              Height = 7
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object TreeView3: TTreeView
              Left = 0
              Top = 0
              Width = 286
              Height = 173
              Align = alClient
              Indent = 21
              TabOrder = 0
              Items.Data = {
                05000000260000000000000000000000FFFFFFFFFFFFFFFF0000000003000000
                0D53706C6173682053637265656E240000000000000000000000FFFFFFFFFFFF
                FFFF00000000000000000B496E646570656E64656E7420000000000000000000
                0000FFFFFFFFFFFFFFFF000000000000000007456E676C6973681F0000000000
                000000000000FFFFFFFFFFFFFFFF0000000000000000064765726D616E240000
                000000000000000000FFFFFFFFFFFFFFFF00000000030000000B496E64657065
                6E64656E74240000000000000000000000FFFFFFFFFFFFFFFF00000000000000
                000B57696E646F777320202038230000000000000000000000FFFFFFFFFFFFFF
                FF00000000000000000A57696E646F7773203130230000000000000000000000
                FFFFFFFFFFFFFFFF00000000000000000A57696E646F77732031312000000000
                00000000000000FFFFFFFFFFFFFFFF000000000300000007456E676C69736824
                0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000B57696E64
                6F777320202038230000000000000000000000FFFFFFFFFFFFFFFF0000000000
                0000000A57696E646F7773203130230000000000000000000000FFFFFFFFFFFF
                FFFF00000000000000000A57696E646F77732031311F00000000000000000000
                00FFFFFFFFFFFFFFFF0000000003000000064765726D616E2400000000000000
                00000000FFFFFFFFFFFFFFFF00000000000000000B57696E646F777320202038
                230000000000000000000000FFFFFFFFFFFFFFFF00000000000000000A57696E
                646F7773203130230000000000000000000000FFFFFFFFFFFFFFFF0000000000
                0000000A57696E646F7773203131210000000000000000000000FFFFFFFFFFFF
                FFFF000000000000000008416476616E636564}
            end
            object Panel4: TPanel
              Left = 0
              Top = 180
              Width = 286
              Height = 45
              Align = alBottom
              TabOrder = 1
              object JvImgBtn13: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn14: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet18: TTabSheet
            Caption = 'Components'
            ImageIndex = 3
            object Splitter6: TSplitter
              Left = 0
              Top = 144
              Width = 235
              Height = 6
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object Panel5: TPanel
              Left = 0
              Top = 150
              Width = 235
              Height = 45
              Align = alBottom
              TabOrder = 0
              object JvImgBtn11: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn12: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet19: TTabSheet
            Caption = 'Ressources'
            ImageIndex = 4
            object Splitter7: TSplitter
              Left = 0
              Top = 174
              Width = 286
              Height = 6
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object TreeView4: TTreeView
              Left = 0
              Top = 0
              Width = 286
              Height = 174
              Align = alClient
              Indent = 21
              TabOrder = 0
              Items.Data = {
                03000000250000000000000000000000FFFFFFFFFFFFFFFF0000000002000000
                0C537472696E67205461626C65200000000000000000000000FFFFFFFFFFFFFF
                FF000000000000000007456E676C6973681F0000000000000000000000FFFFFF
                FFFFFFFFFF0000000000000000064765726D616E270000000000000000000000
                FFFFFFFFFFFFFFFF00000000000000000E5265676973747279204974656D7326
                0000000000000000000000FFFFFFFFFFFFFFFF00000000010000000D5368656C
                6C204F626A65637473200000000000000000000000FFFFFFFFFFFFFFFF000000
                0002000000074465736B746F70230000000000000000000000FFFFFFFFFFFFFF
                FF00000000000000000A5374617274204D656E75210000000000000000000000
                FFFFFFFFFFFFFFFF0000000000000000085374617274205570}
            end
            object Panel6: TPanel
              Left = 0
              Top = 180
              Width = 286
              Height = 45
              Align = alBottom
              TabOrder = 1
              object JvImgBtn9: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn10: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet20: TTabSheet
            Caption = 'Scripts'
            ImageIndex = 5
            object Splitter8: TSplitter
              Left = 0
              Top = 174
              Width = 286
              Height = 6
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object ListView1: TListView
              Left = 0
              Top = 0
              Width = 286
              Height = 174
              Align = alClient
              Columns = <>
              Items.Data = {
                260000000100000000000000FFFFFFFFFFFFFFFF000000000000000009737461
                72742E72756C}
              TabOrder = 0
            end
            object Panel7: TPanel
              Left = 0
              Top = 180
              Width = 286
              Height = 45
              Align = alBottom
              TabOrder = 1
              object JvImgBtn7: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn8: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
          object TabSheet21: TTabSheet
            Caption = 'Media'
            ImageIndex = 6
            object Splitter9: TSplitter
              Left = 0
              Top = 174
              Width = 286
              Height = 6
              Cursor = crVSplit
              Align = alBottom
              Color = clSilver
              ParentColor = False
            end
            object TreeView1: TTreeView
              Left = 0
              Top = 0
              Width = 286
              Height = 174
              Align = alClient
              AutoExpand = True
              Indent = 21
              ReadOnly = True
              TabOrder = 0
              Items.Data = {
                01000000200000000000000000000000FFFFFFFFFFFFFFFF0000000003000000
                0744656661756C74240000000000000000000000FFFFFFFFFFFFFFFF00000000
                000000000B4469736B20496D61676573250000000000000000000000FFFFFFFF
                FFFFFFFF00000000000000000C5265706F72742046696C657322000000000000
                0000000000FFFFFFFFFFFFFFFF0000000000000000094C6F672046696C6573}
            end
            object Panel8: TPanel
              Left = 0
              Top = 180
              Width = 286
              Height = 45
              Align = alBottom
              TabOrder = 1
              object JvImgBtn5: TJvImgBtn
                Left = 8
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Add'
                TabOrder = 0
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
              object JvImgBtn6: TJvImgBtn
                Left = 144
                Top = 8
                Width = 75
                Height = 25
                Caption = 'Delete'
                TabOrder = 1
                Color = clSilver
                HotTrackFont.Charset = ANSI_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -16
                HotTrackFont.Name = 'Consolas'
                HotTrackFont.Style = []
              end
            end
          end
        end
      end
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 298
        Height = 200
        Align = alClient
        TabOrder = 1
        object PageControl4: TPageControl
          Left = 0
          Top = 0
          Width = 294
          Height = 196
          ActivePage = TabSheet22
          Align = alClient
          TabOrder = 0
          object TabSheet22: TTabSheet
            Caption = 'Files'
            object TreeView5: TTreeView
              Left = 0
              Top = 0
              Width = 286
              Height = 162
              Align = alClient
              Indent = 21
              TabOrder = 0
            end
          end
        end
      end
    end
    object C64ConfigTabSheet: TTabSheet
      Caption = 'Config'
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 298
        Height = 532
        ActivePage = LocalTabSheet
        Align = alClient
        MultiLine = True
        Style = tsFlatButtons
        TabOrder = 0
        object LocalTabSheet: TTabSheet
          Caption = 'Local'
          object LocalFoldersScrollBox: TScrollBox
            Left = 0
            Top = 0
            Width = 290
            Height = 495
            Align = alClient
            TabOrder = 0
          end
        end
        object RemoteTabSheet: TTabSheet
          Caption = 'Remote / Team Server'
          ImageIndex = 1
          object RemoteFoldersScrollBox: TScrollBox
            Left = 0
            Top = 0
            Width = 290
            Height = 495
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet23: TTabSheet
      Caption = 'Project'
      ImageIndex = 3
      object PageControl5: TPageControl
        Left = 0
        Top = 0
        Width = 298
        Height = 532
        ActivePage = TabSheet24
        Align = alClient
        TabOrder = 0
        object TabSheet24: TTabSheet
          Caption = 'Files'
          object TreeView6: TTreeView
            Left = 0
            Top = 0
            Width = 290
            Height = 498
            Align = alClient
            Indent = 21
            TabOrder = 0
          end
        end
      end
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsFocus
    Height = 36
    ShareImages = True
    Width = 36
    Left = 25
    Top = 440
    Bitmap = {
      494C010104000900040024002400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000900000006C000000010020000000000000F3
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF000000000000000000000000000000000000
      0000666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFF000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000EFDCD6D7CF8662F9C87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFCF8763F9EEDCD6D70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD8
      7FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD8
      7FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD8
      7FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD87FFF7FD8
      7FFF7FD87FFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000CF8662F9DBB296FFEBE9E7FFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFEBE9E7FFDAB195FFCF8763F90000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF232323FFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD
      6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD
      6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD
      6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD6EFF6ECD
      6EFF6ECD6EFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFF
      FFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFEBE9E7FFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBE9E8FFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC1
      5EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC1
      5EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC1
      5EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC15EFF5EC1
      5EFF5EC15EFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFEFEFEFFA6A6A6FF686868FF717171FFCDCDCDFFD7D7D7FF8888
      88FFF2F2F2FFFFFFFFFFECECECFF888888FFDDDDDDFFBFBFBFFF6B6B6BFF6666
      66FFA2A2A2FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB6
      4EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB6
      4EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB6
      4EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB64EFF4EB6
      4EFF4EB64EFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFF767676FF010101FF484848FF5E5E5EFF1C1C1CFF626262FF0000
      00FFE3E3E3FFFFFFFFFFD7D7D7FF000000FF535353FF171717FF5C5C5CFF4C4C
      4CFF060606FF3E3E3EFFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB
      3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB
      3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB
      3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB3DFF3DAB
      3DFF3DAB3DFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFF151515FF5C5C5CFFFFFFFFFFFFFFFFFFEBEBEBFF1F1F1FFF0000
      00FFE3E3E3FFFFFFFFFFD7D7D7FF000000FF222222FFEAEAEAFFFFFFFFFFFFFF
      FFFFBEBEBEFF030303FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFE6E6E6FFB6B6B6FFA8A8A8FFCDCD
      CDFFECECECFFECECECFFECECECFFE3E3E3FFC8C8C8FFECECECFFECECECFFCECE
      CEFFCBCBCBFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF313131FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F
      2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F
      2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F
      2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F2DFF2D9F
      2DFF2D9F2DFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFF161616FF717171FFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF0000
      00FFE3E3E3FFFFFFFFFFD7D7D7FF000000FF949494FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF535353FF1E1E1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFB3B3B3FF1C1C1CFF3F3F3FFF585858FF2323
      23FF515151FFE2E2E2FFECECECFFBDBDBDFF383838FFECECECFFB7B7B7FF1919
      19FFBEBEBEFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF1D941DFF1D941DFF1D941DFF1D941DFF1D94
      1DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D94
      1DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D94
      1DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D941DFF1D94
      1DFF1D941DFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFF737373FF0B0B0BFF8B8B8BFFCECECEFFF3F3F3FFA9A9A9FF0000
      00FFE3E3E3FFFFFFFFFFD7D7D7FF000000FFB5B5B5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8B8B8BFF000000FFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFD5D5D5FF111111FFA8A8A8FFECECECFFECECECFFE8E8
      E8FF5B5B5BFF5D5D5DFFECECECFFBDBDBDFF383838FFC3C3C3FF1D1D1DFFB8B8
      B8FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFF0C890CFF0C890CFF0C890CFF0C890CFF0C89
      0CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C89
      0CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C89
      0CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C890CFF0C89
      0CFF0C890CFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFCFCFCFF949494FF3C3C3CFF0A0A0AFF000000FF0C0C0CFF0000
      00FFE3E3E3FFFFFFFFFFD7D7D7FF000000FFB1B1B1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C9C9CFF000000FFE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFF848484FF515151FFECECECFFECECECFFECECECFFECEC
      ECFFDDDDDDFF0D0D0DFFDEDEDEFFBDBDBDFF222222FF212121FFB3B3B3FFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFBFCFA5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCF
      A5FF40DAB6FF00DFBFFF00DFBFFF00DFBFFF00DFBFFF00DFBFFF00DFBFFF00DF
      BFFF00DFBFFF00DFBFFF40DAB6FFBFCFA5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCF
      A5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCFA5FFBFCF
      A5FFBFCFA5FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5FF7C7C7CFF0000
      00FFE9E9E9FFFFFFFFFFD7D7D7FF000000FF8A8A8AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B7B7BFF0A0A0AFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFF5E5E5EFF858585FFECECECFFECECECFFECECECFFECEC
      ECFFECECECFF2A2A2AFFB6B6B6FFBDBDBDFF2E2E2EFF363636FF9C9C9CFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFDAC3FFFFDAC3FFFFDAC3FFFFDAC3FFDCDF
      CBFF01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF01FFFFFFDEDFCBFFFFDAC3FFFFDAC3FFFFDAC3FFFFDA
      C3FFFFDAC3FFFFDAC3FFFFDAC3FFFFDAC3FFFFDAC3FFFFDAC3FFFFDAC3FFFFDA
      C3FFFFDAC3FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFEFEFEFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFF6D6D6DFF0B0B
      0BFFFEFEFEFFFFFFFFFFD7D7D7FF000000FF1B1B1BFFE9E9E9FFFFFFFFFFFFFF
      FFFFEDEDEDFF191919FF454545FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFF575757FF858585FFECECECFFECECECFFECECECFFECEC
      ECFFECECECFF2B2B2BFFB9B9B9FFBDBDBDFF383838FFDADADAFF2B2B2BFFA4A4
      A4FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFD2B4FFFFD2B4FFFFD2B4FFFFD2B4FF9BE4
      D1FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF9CE3D1FFFFD2B4FFFFD2B4FFFFD2B4FFFFD2
      B4FFFFD2B4FFFFD2B4FFFFD2B4FFFFD2B4FFFFD2B4FFFFD2B4FFFFD2B4FFFFD2
      B4FFFFD2B4FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFE2E2E2FF030303FF505050FF7E7E7EFF666666FF030303FF7070
      70FFFFFFFFFFFFFFFFFFD7D7D7FF000000FF6B6B6BFF1E1E1EFF737373FF7878
      78FF202020FF0C0C0CFFCECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFF828282FF535353FFECECECFFECECECFFECECECFFECEC
      ECFFE1E1E1FF0B0B0BFFDDDDDDFFBDBDBDFF383838FFECECECFFD1D1D1FF4040
      40FFC9C9C9FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFC9A6FFFFC9A6FFFFC9A6FFFFC9A6FF86E3
      D0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF86E3D0FFFFC9A6FFFFC9A6FFFFC9A6FFFFC9
      A6FFFFC9A6FFFFC9A6FFFFC9A6FFFFC9A6FFFFC9A6FFFFC9A6FFFFC9A6FFFFC9
      A6FFFFC9A6FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFCBCBCBFF6C6C6CFF494949FF4F4F4FFF919191FFFBFB
      FBFFFFFFFFFFFFFFFFFFD7D7D7FF000000FFB6B6B6FFC7C7C7FF5D5D5DFF4242
      42FF626262FFD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFD7D7D7FF121212FFABABABFFECECECFFECECECFFEBEB
      EBFF686868FF4B4B4BFFECECECFFBDBDBDFF383838FFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFC097FFFFC097FFFFC097FFFFC097FF9AD9
      C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF00FFFFFF9CD8BFFFFFC097FFFFC097FFFFC097FFFFC0
      97FFFFC097FFFFC097FFFFC097FFFFC097FFFFC097FFFFC097FFFFC097FFFFC0
      97FFFFC097FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD7D7D7FF000000FFB6B6B6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFB1B1B1FF191919FF494949FF656565FF3232
      32FF383838FFD9D9D9FFECECECFFBDBDBDFF383838FFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FFAAAAAAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFB789FFFFB789FFFFB789FFFFB789FFDCC1
      99FF01FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF01FFFFFFDEC098FFFFB789FFFFB789FFFFB789FFFFB7
      89FFFFB789FFFFB789FFFFB789FFFFB789FFFFB789FFFFB789FFFFB789FFFFB7
      89FFFFB789FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD7D7D7FF000000FFB6B6B6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFE4E4E4FFAAAAAAFF9B9B9BFFB8B8
      B8FFEBEBEBFFECECECFFECECECFFCACACAFF696969FFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF
      7AFF54E5D3FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF56E4D2FFFFAF7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF
      7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF7AFFFFAF
      7AFFFFAF7AFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD7D7D7FF000000FFB6B6B6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFA66CFFFFA66CFFFFA66CFFFFA66CFFFFA6
      6CFFEBAD78FF25F2EAFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF00FFFFFF25F2EAFFEBAD78FFFFA66CFFFFA66CFFFFA66CFFFFA66CFFFFA6
      6CFFFFA66CFFFFA66CFFFFA66CFFFFA66CFFFFA66CFFFFA66CFFFFA66CFFFFA6
      6CFFFFA66CFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDCDCDCFF222222FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFF
      FFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D
      5DFFFF9D5DFFEBA56AFF54DFCAFF01FFFEFF00FFFFFF00FFFFFF00FFFFFF01FF
      FEFF55DEC9FFEBA56AFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D
      5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D5DFFFF9D
      5DFFFF9D5DFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFC87137FF0000000000000000000000004D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFF954EFFFF954EFFFF954EFFFF954EFFFF95
      4EFFFF954EFFFF954EFFFF954EFFDCA466FF9ABF94FF88C6A1FF9ABF94FFDDA3
      66FFFF954EFFFF954EFFFF954EFFFF954EFFFF954EFFFF954EFFFF954EFFFF95
      4EFFFF954EFFFF954EFFFF954EFFFF954EFFFF954EFFFF954EFFFF954EFFFF95
      4EFFFF954EFFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB99D7FFF000000000000
      0000C87137FFEBE9E7FFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBE9E8FFC87137FF0000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C
      40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C
      40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C
      40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C40FFFF8C
      40FFFF8C40FFFFFFFFFFFFFFFFFF666666FF0000000000000000B99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D
      7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFFB99D7FFF000000000000
      0000CF8662F9DBB398FFEBE9E7FFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFEBE9E7FFDBB296FFCF8763F90000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFFFFFFFFFDFDFDFFFDFDF
      DFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFF8331FFFF8331FFFF8331FFFF8331FFFF83
      31FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF83
      31FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF83
      31FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF8331FFFF83
      31FFFF8331FFFFFFFFFFFFFFFFFF666666FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFDBD5D7CD8661F9C87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC87137FFC871
      37FFC87137FFC87137FFCF8662F9EFDCD6D70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFDFDFDFFF202020FF2020
      20FFDFDFDFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
      7FFF7F7F7FFFFFFFFFFFFFFFFFFF4D4D4DFFFBFBFBFF292929FF959595FF9595
      95FF292929FFFBFBFBFF4D4D4DFF000000000000000000000000000000000000
      0000666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFE4E4E4FFFFFFFFFFFFFF
      FFFFE4E4E4FFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF4D4D4DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000004D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFF
      FFC7FFFFFFC7FFFFFFC7FFFFFFC7FFFFFFC70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000900000006C0000000100010000000000700800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF000000000FFFFFFFFFFFFFF
      FFFF0000FFFFFFFFF000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFF0000000
      00FFFFFFFFFFFFFFFFFF0000FFFFFFFFF000000000FFFFFFFFFFFFFFFFFF0000
      FFFFFFFFF000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFF000000000E00000
      01F0000000000000FFFFFFFFF000000000E0000001F0000000000000C0000000
      3000000000E0000001F0000000000000C00000003000000000E0000001F00000
      00000000C00000003000000000E0000001F0000000000000C000000030000000
      00E0000001F0000000000000C00000003000000000E0000001F0000000000000
      C00000003000000000E0000001F0000000000000C00000003000000000E00000
      01F0000000000000C00000003000000000E0000001F0000000000000C0000000
      3000000000E0000001F0000000000000C00000003000000000E0000001F00000
      00000000C00000003000000000E0000001F0000000000000C000000030000000
      00E0000001F0000000000000C00000003000000000E0000001F0000000000000
      C00000003000000000E0000001F0000000000000C00000003000000000E00000
      01F0000000000000C00000003000000000E0000001F0000000000000C0000000
      3000000000E0000001F0000000000000C00000003000000000E0000001F00000
      00000000C00000003000000000E0000001F0000000000000C000000030000000
      00E0000001F0000000000000C00000003000000000E0000001F0000000000000
      FFFFFFFFF000000000E0000001F0000000000000FFFFFFFFF000000000E00000
      01F0000000000000FFFFFFFFF000000000E0000001F0000000000000FFFFFFFF
      F000000000E0000001FFFFFFFFFF0000FFFFFFFFF000000000E0000001FFFFFF
      FFFF0000FFFFFFFFF000000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFF0000000
      00FFFFFFFFFFFFFFFFFF0000FFFFFFFFF000000000FFFFFFFFFFFFFFFFFF0000
      00000000000000000000000000000000000000000000}
  end
  object ColorDialog1: TColorDialog
    Left = 24
    Top = 472
  end
end
