object Frame15: TFrame15
  Left = 0
  Top = 0
  Width = 310
  Height = 783
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Consolas'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 0
    Top = 249
    Width = 310
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 449
    Width = 310
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 701
    Width = 310
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 310
    Height = 249
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Topics'
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 302
        Height = 184
        Align = alClient
        Indent = 21
        PopupMenu = JvPopupMenu1
        RowSelect = True
        TabOrder = 0
        OnEnter = TreeView1Enter
        OnExit = TreeView1Exit
        OnKeyDown = TreeView1KeyDown
        OnKeyPress = TreeView1KeyPress
        Items.Data = {
          01000000210000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
          0850726F6A6563743A}
      end
      object Panel1: TPanel
        Left = 0
        Top = 184
        Width = 302
        Height = 31
        Align = alBottom
        TabOrder = 1
        object JvEdit1: TJvEdit
          Left = 1
          Top = 1
          Width = 300
          Height = 29
          Align = alClient
          TabOrder = 0
          OnEnter = JvEdit1Enter
          OnExit = JvEdit1Exit
          TextHint = 'Search Topic'
        end
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 452
    Width = 310
    Height = 249
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Keywords'
      object TreeView2: TTreeView
        Left = 0
        Top = 0
        Width = 302
        Height = 184
        Align = alClient
        Indent = 21
        TabOrder = 0
        OnEnter = TreeView2Enter
        OnExit = TreeView2Exit
      end
      object Panel3: TPanel
        Left = 0
        Top = 184
        Width = 302
        Height = 31
        Align = alBottom
        TabOrder = 1
        object JvEdit3: TJvEdit
          Left = 1
          Top = 1
          Width = 300
          Height = 29
          Align = alClient
          TabOrder = 0
          OnEnter = JvEdit3Enter
          OnExit = JvEdit3Exit
          TextHint = 'Search Keyword'
        end
      end
    end
  end
  object PageControl3: TPageControl
    Left = 0
    Top = 252
    Width = 310
    Height = 197
    ActivePage = TabSheet3
    Align = alTop
    TabOrder = 2
    object TabSheet3: TTabSheet
      Caption = 'Items Library'
      object TreeView3: TTreeView
        Left = 0
        Top = 0
        Width = 302
        Height = 132
        Align = alClient
        Indent = 21
        TabOrder = 0
        OnEnter = TreeView3Enter
        OnExit = TreeView3Exit
        Items.Data = {
          030000001D0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
          0448544D4C200000000000000000000000FFFFFFFFFFFFFFFF00000000000000
          000750696374757265240000000000000000000000FFFFFFFFFFFFFFFF000000
          00000000000B506C616365686F6C646572}
      end
      object Panel2: TPanel
        Left = 0
        Top = 132
        Width = 302
        Height = 31
        Align = alBottom
        TabOrder = 1
        object JvEdit2: TJvEdit
          Left = 1
          Top = 1
          Width = 300
          Height = 29
          Align = alClient
          TabOrder = 0
          OnEnter = JvEdit2Enter
          OnExit = JvEdit2Exit
          TextHint = 'Search Item'
        end
      end
    end
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
    object AddSubtopic1: TMenuItem
      Caption = 'Add Subtopic'
      OnClick = AddSubtopic1Click
    end
    object AddTopic1: TMenuItem
      Caption = 'Add Normsl Topic'
      OnClick = AddTopic1Click
    end
    object RenameTopic1: TMenuItem
      Caption = 'Rename Topic'
      OnClick = RenameTopic1Click
    end
  end
end
