// -------------------------------------------------------------------
// File:    HelpTopicFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit HelpTopicFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, JvMenus, StdCtrls, JvExStdCtrls,
  JvEdit, JvRichEdit;

type
  TFrame15 = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TreeView2: TTreeView;
    Splitter2: TSplitter;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    TreeView3: TTreeView;
    Splitter3: TSplitter;
    JvPopupMenu1: TJvPopupMenu;
    AddTopic1: TMenuItem;
    RenameTopic1: TMenuItem;
    EditOperations1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N2: TMenuItem;
    Delete1: TMenuItem;
    AddSubtopic1: TMenuItem;
    Panel1: TPanel;
    JvEdit1: TJvEdit;
    Panel2: TPanel;
    JvEdit2: TJvEdit;
    Panel3: TPanel;
    JvEdit3: TJvEdit;
    procedure AddTopic1Click(Sender: TObject);
    procedure AddSubtopic1Click(Sender: TObject);
    procedure TreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure JvEdit1Enter(Sender: TObject);
    procedure JvEdit1Exit(Sender: TObject);
    procedure JvEdit2Enter(Sender: TObject);
    procedure JvEdit2Exit(Sender: TObject);
    procedure JvEdit3Enter(Sender: TObject);
    procedure JvEdit3Exit(Sender: TObject);
    procedure TreeView1Enter(Sender: TObject);
    procedure TreeView1Exit(Sender: TObject);
    procedure TreeView3Enter(Sender: TObject);
    procedure TreeView3Exit(Sender: TObject);
    procedure TreeView2Enter(Sender: TObject);
    procedure TreeView2Exit(Sender: TObject);
    procedure RenameTopic1Click(Sender: TObject);
  private
    procedure RichEdit1SelectionChange(Sender: TObject);
    procedure SwitchBoard(Sender: TObject);
  public
    PageControl0  : TPageControl;
    CurrentEditor : TRichEdit;
    CurrentPage   : TTabSheet;

    procedure CreateNewTab(AString: String);
    procedure PageControlOnChange(Sender: TObject);
  end;

implementation

{$R *.dfm}
uses
  EditorForm, SHDocVw, SynEdit, JvRuler, JvButton, JvCtrls;

procedure TFrame15.CreateNewTab(AString: String);
var
  PageControl2  : TPageControl;

  TabSheet11    : TTabSheet;
  TabSheet21    : TTabSheet;
  TabSheet31    : TTabSheet;
  TabSheet41    : TTabSheet;

  SynEdit11     : TSynEdit;

  ScrollBox11   : TScrollBox;
  WebBrowser11  : TWebBrowser;

  EditPanel     : TPanel;
  SwitchButton  : TJvImgBtn;
  SaveButton    : TJvImgBtn;
  CutButton     : TJvImgBtn;
  CopyButton    : TJvImgBtn;
  PasteButton   : TJvImgBtn;

  JvRuler11     : TJvRuler;
  RichEdit11    : TRichEdit;
begin
  if PageControl0 = nil then
  begin
    PageControl0 := TPageControl.Create(Form1.DFrameHelpAuthor);
    PageControl0.Parent    := Form1.DFrameHelpAuthor;
    PageControl0.Align     := alClient;
    PageControl0.PopupMenu := Form1.DFrameHelpAuthor.JvPopupMenu1;
    PageControl0.OnChange  := PageControlOnChange;
    PageControl0.Show;
  end;

  TabSheet11               := TTabSheet.Create(PageControl0);
  TabSheet11.PageControl   := PageControl0;
  TabSheet11.Align         := alClient;
  TabSheet11.Caption       := AString;
  TabSheet11.TabVisible    := true;

  PageControl2             := TPageControl.Create(TabSheet11);
  PageControl2.Parent      := TabSheet11;
  PageControl2.Align       := alClient;
  PageControl2.TabPosition := tpBottom;
  PageControl2.Show;

  TabSheet21               := TTabSheet.Create(PageControl2);
  TabSheet21.PageControl   := PageControl2;
  TabSheet21.Align         := alClient;
  TabSheet21.Caption       := 'Source';
  TabSheet21.TabVisible    := true;

  SynEdit11             := TSynEdit.Create(TabSheet21);
  SynEdit11.Parent      := TabSheet21;
  SynEdit11.Align       := alClient;
  SynEdit11.Show;

  TabSheet31               := TTabSheet.Create(PageControl2);
  TabSheet31.PageControl   := PageControl2;
  TabSheet31.Align         := alClient;
  TabSheet31.Caption       := 'Preview';
  TabSheet31.TabVisible    := true;
  TabSheet31.Show;

  ScrollBox11 := TScrollBox.Create(TabSheet31);
  ScrollBox11.Parent := TabSheet31;
  ScrollBox11.Align  := alClient;
  ScrollBox11.Show;

  WebBrowser11          := TWebBrowser.Create(ScrollBox11);
  // parent property is read-only unless cast
  TWinControl(WebBrowser11).Parent := ScrollBox11;
  WebBrowser11.HandleNeeded;

  WebBrowser11.Align    := alClient;
  WebBrowser11.Show;


  TabSheet41               := TTabSheet.Create(PageControl2);
  TabSheet41.PageControl   := PageControl2;
  TabSheet41.Align         := alClient;
  TabSheet41.Caption       := 'Design';
  TabSheet41.TabVisible    := true;

  EditPanel := TPanel.Create(TabSheet41);
  EditPanel.Parent  := TabSheet41;
  EditPanel.Align   := alTop;
  EditPanel.Height  := 40;
  EditPanel.Caption := '';
  EditPanel.Show;

  SwitchButton := TJvImgBtn.Create(EditPanel);
  SwitchButton.Parent  := EditPanel;
  SwitchButton.Color   := clSilver;
  SwitchButton.Caption := 'Switch';
  SwitchButton.Left    := 5;
  SwitchButton.Top     := 2;
  SwitchButton.OnClick := SwitchBoard;
  SwitchButton.Show;

  SaveButton := TJvImgBtn.Create(EditPanel);
  SaveButton.Parent  := EditPanel;
  SaveButton.Color   := clSilver;
  SaveButton.Caption := 'Save';
  SaveButton.Left    := SwitchButton.Left + SwitchButton.Width + 24;;
  SaveButton.Top     := 2;
  SaveButton.Show;

  CutButton   := TJvImgBtn.Create(EditPanel);
  CutButton.Parent  := EditPanel;
  CutButton.Color   := clSilver;
  CutButton.Caption := 'Cut';
  CutButton.Left    := SaveButton.Left + SaveButton.Width + 7;
  CutButton.Top     := 2;
  CutButton.Show;

  CopyButton  := TJvImgBtn.Create(EditPanel);
  CopyButton.Parent   := EditPanel;
  CopyButton.Color    := clSilver;
  CopyButton.Caption  := 'Copy';
  CopyButton.Left     := CutButton.Left + CutButton.Width + 7;
  CopyButton.Top      := 2;
  CopyButton.Show;

  PasteButton := TJvImgBtn.Create(EditPanel);
  PasteButton.Parent  := EditPanel;
  PasteButton.Color   := clSilver;
  PasteButton.Caption := 'Paste';
  PasteButton.Left    := CopyButton.Left + CopyButton.Width + 7;
  PasteButton.Top     := 2;
  PasteButton.Show;

  JvRuler11           := TJvRuler.Create(TabSheet41);
  JvRuler11.Parent    := TabSheet41;
  JvRuler11.Top       := 90;
  JvRuler11.Align     := alTop;
  JvRuler11.Show;

  RichEdit11                   := TRichEdit.Create(TabSheet41);
  RichEdit11.Parent            := TabSheet41;
  RichEdit11.Align             := alClient;
  RichEdit11.OnSelectionChange := RichEdit1SelectionChange;
  RichEdit11.Show;

  CurrentEditor := RichEdit11;

  PageControl2.ActivePageIndex := 2;
end;

procedure TFrame15.PageControlOnChange(Sender: TObject);
begin
  CurrentPage := (Sender as TPageControl).ActivePage;
end;

procedure TFrame15.RichEdit1SelectionChange(Sender: TObject);
begin
end;

procedure TFrame15.AddTopic1Click(Sender: TObject);
var
  sl: TStrings;
begin
  if TreeView1.Selected = nil then
  exit;

  sl := TStringList.Create;
  sl.Add('New Topic ' + IntToStr(Form1.topicCount));
  sl.Add(IntToStr(Form1.topicCount));
  inc(Form1.topicCount);

  TreeView1.Items.AddChildObject(
  TreeView1.Selected,sl.Strings[0],sl);
  TreeView1.Tag := Form1.topicCount;
  TreeView1.FullExpand;

  CreateNewTab(sl.Strings[0]);
end;

procedure TFrame15.AddSubtopic1Click(Sender: TObject);
var
  sl: TStrings;
begin
  if TreeView1.Selected = nil then
  exit;

  sl := TStringList.Create;
  sl.Add('New Topic ' + IntToStr(Form1.topicCount));
  sl.Add(IntToStr(Form1.topicCount));
  inc(Form1.topicCount);

  TreeView1.Items.AddChildObject(
  TreeView1.Selected,sl.Strings[0],sl);
  TreeView1.Tag := Form1.topicCount;
  TreeView1.FullExpand;

  CreateNewTab(sl.Strings[0]);
end;

// TODO: move topic's: !!!
procedure TFrame15.TreeView1KeyDown(
  Sender : TObject;
  var Key: Word;
  Shift  : TShiftState);
begin
  if (ssCtrl in Shift) then
  begin
    case Key of
      VK_UP:
      begin
      end;
      VK_DOWN:
      begin
      end;
      VK_LEFT:
      begin
      end;
      VK_RIGHT:
      begin
      end;
      Ord('f'): begin JvEdit1.SetFocus; end;
      Ord('F'): begin JvEdit1.SetFocus; end;
    end;
    exit;
  end;

  if key = VK_RETURN then
  begin
  end;
end;

procedure TFrame15.TreeView1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = 'F') or (key = 'f') then
  begin
    if JvEdit1.Focused then key := #0;
  end else
  if key = '+' then
  begin
    TreeView1.Selected.Expand(true);
    key := #0; // no beep
  end else
  if key = '-' then
  begin
    TreeView1.Selected.Collapse(true);
    key := #0; // no beep
  end;
end;

procedure TFrame15.SwitchBoard(Sender: TObject);
begin
  Visible := false;

  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontFace .Visible := false;

  Form1.EditPanel .Visible := true;
  Form1.LogPanel  .Visible := true;

  Form1.DFrameHelpTopic.Visible := false;
  Form1.DFrameLeftPanel.LeftPageControl.Visible := true;

  Form1.DFrameHelpAuthor.Visible := false;

  Form1.MainPageControl.ActivePageIndex := 0;
  Form1.DFrameEdit.Visible := true;
  Form1.DFrameEditor.SynEdit1.SetFocus;
end;

procedure TFrame15.JvEdit1Enter(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clYellow;
end;

procedure TFrame15.JvEdit1Exit(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clWhite;
end;

procedure TFrame15.JvEdit2Enter(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clYellow;
end;

procedure TFrame15.JvEdit2Exit(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clWhite;
end;

procedure TFrame15.JvEdit3Enter(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clYellow;
end;

procedure TFrame15.JvEdit3Exit(Sender: TObject);
begin
  (Sender as TJvEdit).Color := clWhite;
end;

procedure TFrame15.TreeView1Enter(Sender: TObject);
begin
  TreeView1.Color := clYellow;
end;

procedure TFrame15.TreeView1Exit(Sender: TObject);
begin
  TreeView1.Color := clWhite;
end;

procedure TFrame15.TreeView3Enter(Sender: TObject);
begin
  TreeView3.Color := clYellow;
end;

procedure TFrame15.TreeView3Exit(Sender: TObject);
begin
  TreeView3.Color := clWhite;
end;

procedure TFrame15.TreeView2Enter(Sender: TObject);
begin
  TreeView2.Color := clYellow;
end;

procedure TFrame15.TreeView2Exit(Sender: TObject);
begin
  TreeView2.Color := clWhite;
end;

procedure TFrame15.RenameTopic1Click(Sender: TObject);
begin
  TreeView1.ReadOnly := false;
  TreeView1.Selected.EditText;
end;

end.
