// -------------------------------------------------------------------
// File:    DesignerFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit DesignerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvDesignSurface, JvComponentBase, Grids,
  JvInspector, JvDesignUtils, ComCtrls, JvCtrls, JvButton, JvComboBox, JvImage,
  SynEdit, Menus;

type
  TFrame1 = class(TFrame)
    JvInspectorBorlandPainter1: TJvInspectorBorlandPainter;
    JvDesignSurface1: TJvDesignSurface;
    JvDesignScrollBox1: TJvDesignScrollBox;
    JvDesignPanel1: TJvDesignPanel;
    procedure JvDesignPanel1Paint(Sender: TObject);
    procedure JvDesignPanel1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure JvDesignPanel1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure JvDesignPanel1SelectionChange(Sender: TObject);
  private
  public
    count: Integer;
  end;

implementation

uses EditorForm,   JvDesignImp;

{$R *.dfm}

procedure TFrame1.JvDesignPanel1Paint(Sender: TObject);
begin
  with JvDesignPanel1 do
  DesignPaintGrid(Canvas, ClientRect, Color);
end;

procedure TFrame1.JvDesignPanel1DragDrop(
  Sender, Source: TObject;
  X,   Y: Integer);
var
  ctrl        : TListView;
  ctxt        : String;

  Button      : TJvImgBtn;
  Edit        : TEdit;
  ComboBox    : TJvComboBox;
  Image       : TImage;
  ListBox     : TListBox;
  ScrollBar   : TScrollBar;
  ScrollBox   : TScrollBox;
  Memo        : TMemo;
  SynEdit     : TSynEdit;
  CheckBox    : TCheckBox;
  RadioButton : TRadioButton;
  RadioGroup  : TRadioGroup;
  StringGrid  : TStringGrid;
  Panel       : TPanel;
  MainMenu    : TMainMenu;
begin
  if not (Source is TListView) then
  exit;

  ctrl := (Source as TListView);
  if ctrl = nil then
  exit;

  ctxt := Trim(ctrl.Selected.Caption);
  if ctxt = 'TEdit' then
  begin
    Edit := TEdit.Create(JvDesignPanel1);
    Edit.Parent := JvDesignPanel1;
    Edit.Left   := X;
    Edit.Top    := Y;
    Edit.Text   := 'Edit' + IntToStr(count);
    Edit.Name   := 'Edit' + IntToStr(count);
    Edit.Tag    := count;

    Edit.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(Edit,Edit.Name,false);
    JvDesignPanel1.Surface.Select(Edit);
  end else
  if ctxt = 'TButton' then
  begin
    Button := TJvImgBtn.Create(JvDesignPanel1);
    Button.Parent  := JvDesignPanel1;
    Button.Left    := X;
    Button.Top     := Y;
    Button.Width   := 100;
    Button.Height  := 42;
    Button.Caption := 'Button' + IntToStr(count);
    Button.Name    := 'Button' + IntToStr(count);
    Button.Tag     := count;

    Button.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(Button,Button.Name,false);
    JvDesignPanel1.Surface.Select(Button);
  end else
  if ctxt = 'TComboBox' then
  begin
    ComboBox := TJvComboBox.Create(JvDesignPanel1);
    ComboBox.Parent  := JvDesignPanel1;
    ComboBox.Left    := X;
    ComboBox.Top     := Y;
    ComboBox.Width   := 100;
    ComboBox.Height  := 42;
    ComboBox.Text    := 'ComboBox' + IntToStr(count);
    ComboBox.Name    := 'ComboBox' + IntToStr(count);
    ComboBox.Tag     := count;

    ComboBox.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(ComboBox,ComboBox.Name,false);
    JvDesignPanel1.Surface.Select(ComboBox);
  end else
  if ctxt = 'TImage' then
  begin
    Image := TImage.Create(JvDesignPanel1);
    Image.Parent  := JvDesignPanel1;
    Image.Left    := X;
    Image.Top     := Y;
    Image.Width   := 100;
    Image.Height  := 42;
    Image.Name    := 'Image' + IntToStr(count);
    Image.Tag     := count;

    Image.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(Image,Image.Name,false);
    JvDesignPanel1.Surface.Select(Image);
  end else
  if ctxt = 'TListBox' then
  begin
    ListBox := TListBox.Create(JvDesignPanel1);
    ListBox.Parent  := JvDesignPanel1;
    ListBox.Left    := X;
    ListBox.Top     := Y;
    ListBox.Width   := 100;
    ListBox.Height  := 42;
    ListBox.Name    := 'ListBox' + IntToStr(count);
    ListBox.Tag     := count;

    ListBox.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(ListBox,ListBox.Name,false);
    JvDesignPanel1.Surface.Select(ListBox);
  end else
  if ctxt = 'TScrollBar' then
  begin
    ScrollBar := TScrollBar.Create(JvDesignPanel1);
    ScrollBar.Parent  := JvDesignPanel1;
    ScrollBar.Left    := X;
    ScrollBar.Top     := Y;
    ScrollBar.Width   := 100;
    ScrollBar.Height  := 21;
    ScrollBar.Name    := 'ScrollBar' + IntToStr(count);
    ScrollBar.Tag     := count;

    ScrollBar.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(ScrollBar,ScrollBar.Name,false);
    JvDesignPanel1.Surface.Select(ScrollBar);
  end else
  if ctxt = 'TScrollBox' then
  begin
    ScrollBox := TScrollBox.Create(JvDesignPanel1);
    ScrollBox.Parent  := JvDesignPanel1;
    ScrollBox.Left    := X;
    ScrollBox.Top     := Y;
    ScrollBox.Width   := 100;
    ScrollBox.Height  := 42;
    ScrollBox.Name    := 'ScrollBox' + IntToStr(count);
    ScrollBox.Tag     := count;

    ScrollBox.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(ScrollBox,ScrollBox.Name,false);
    JvDesignPanel1.Surface.Select(ScrollBox);
  end else
  if ctxt = 'TMemo' then
  begin
    Memo := TMemo.Create(JvDesignPanel1);
    Memo.Parent  := JvDesignPanel1;
    Memo.Left    := X;
    Memo.Top     := Y;
    Memo.Width   := 170;
    Memo.Height  := 142;
    Memo.Name    := 'Memo' + IntToStr(count);
    Memo.Tag     := count;

    Memo.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(Memo,Memo.Name,false);
    JvDesignPanel1.Surface.Select(Memo);
  end else
  if ctxt = 'TSynEdit' then
  begin
    SynEdit := TSynEdit.Create(JvDesignPanel1);
    SynEdit.Parent  := JvDesignPanel1;
    SynEdit.Left    := X;
    SynEdit.Top     := Y;
    SynEdit.Width   := 200;
    SynEdit.Height  := 142;
    SynEdit.Name    := 'SynEdit' + IntToStr(count);
    SynEdit.Tag     := count;

    SynEdit.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(SynEdit,SynEdit.Name,false);
    JvDesignPanel1.Surface.Select(SynEdit);
  end else
  if ctxt = 'TCheckBox' then
  begin
    CheckBox := TCheckBox.Create(JvDesignPanel1);
    CheckBox.Parent  := JvDesignPanel1;
    CheckBox.Left    := X;
    CheckBox.Top     := Y;
    CheckBox.Width   := 100;
    CheckBox.Height  := 42;
    CheckBox.Caption := 'CheckBox' + IntToStr(count);
    CheckBox.Name    := 'CheckBox' + IntToStr(count);
    CheckBox.Tag     := count;

    CheckBox.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(CheckBox,CheckBox.Name,false);
    JvDesignPanel1.Surface.Select(CheckBox);
  end else
  if ctxt = 'TRadioButton' then
  begin
    RadioButton := TRadioButton.Create(JvDesignPanel1);
    RadioButton.Parent  := JvDesignPanel1;
    RadioButton.Left    := X;
    RadioButton.Top     := Y;
    RadioButton.Width   := 100;
    RadioButton.Height  := 42;
    RadioButton.Caption := 'RadioButton' + IntToStr(count);
    RadioButton.Name    := 'RadioButton' + IntToStr(count);
    RadioButton.Tag     := count;

    RadioButton.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(RadioButton,RadioButton.Name,false);
    JvDesignPanel1.Surface.Select(RadioButton);
  end else
  if ctxt = 'TRadioGroup' then
  begin
    RadioGroup := TRadioGroup.Create(JvDesignPanel1);
    RadioGroup.Parent  := JvDesignPanel1;
    RadioGroup.Left    := X;
    RadioGroup.Top     := Y;
    RadioGroup.Width   := 100;
    RadioGroup.Height  := 42;
    RadioGroup.Name    := 'RadioGroup' + IntToStr(count);
    RadioGroup.Tag     := count;

    RadioGroup.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(RadioGroup,RadioGroup.Name,false);
    JvDesignPanel1.Surface.Select(RadioGroup);
  end else
  if ctxt = 'TStringGrid' then
  begin
    StringGrid := TStringGrid.Create(JvDesignPanel1);
    StringGrid.Parent  := JvDesignPanel1;
    StringGrid.Left    := X;
    StringGrid.Top     := Y;
    StringGrid.Width   := 200;
    StringGrid.Height  := 142;
    StringGrid.Name    := 'StringGrid' + IntToStr(count);
    StringGrid.Tag     := count;

    StringGrid.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(StringGrid,StringGrid.Name,false);
    JvDesignPanel1.Surface.Select(StringGrid);
  end else
  if ctxt = 'TPanel' then
  begin
    Panel := TPanel.Create(JvDesignPanel1);
    Panel.Parent  := JvDesignPanel1;
    Panel.Left    := X;
    Panel.Top     := Y;
    Panel.Width   := 121;
    Panel.Height  := 121;
    Panel.Caption := 'Panel' + IntToStr(count);
    Panel.Name    := 'Panel' + IntToStr(count);
    Panel.Tag     := count;

    Panel.Show;
    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(Panel,Panel.Name,false);
    JvDesignPanel1.Surface.Select(Panel);
  end else
  if ctxt = 'TMainMenu' then
  begin
    MainMenu := TMainMenu.Create(JvDesignPanel1);
    MainMenu.Name    := 'MainMenu' + IntToStr(count);
    MainMenu.Tag     := count;

    inc(count);

    Form1.DFrameLeftPanel.JvInspector1.AddComponent(MainMenu,MainMenu.Name,false);
    JvDesignPanel1.Surface.Select(TControl(MainMenu));
  end;
end;

procedure TFrame1.JvDesignPanel1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListView);
end;

procedure TFrame1.JvDesignPanel1SelectionChange(Sender: TObject);
//var
//  ctrl: TComponent;
begin
//ctrl := Form1.JvInspector1.SelectedItem;
//showmessage(ctrl.ClassName);

end;

end.
