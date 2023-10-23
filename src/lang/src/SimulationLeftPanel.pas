// -------------------------------------------------------------------
// @File    SimulationPartA.pas
// @Author  paule32 - Jens Kallup
// @License (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SimulationLeftPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Grids, ValEdit, ComCtrls, JvExComCtrls, JvComCtrls,
  ExtCtrls, SimulationPartA, Menus, JvMenus;

type
  TFrame25 = class(TFrame)
    Panel1: TPanel;
    Splitter1: TSplitter;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    ValueListEditor1: TValueListEditor;
    itemPopupMenu: TJvPopupMenu;
    procedure FrameResize(Sender: TObject);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ValueListEditor1EditButtonClick(Sender: TObject);
    procedure ValueListEditor1DrawCell(Sender: TObject; ACol,
      ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure ValueListEditor1SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure ValueListEditor1SetEditText(Sender: TObject; ACol,
      ARow: Integer; const Value: String);
    procedure Frame24DeleteItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Fwire1: TPaintWire;
  end;

implementation

{$R *.dfm}

uses
  EditorForm;

procedure TFrame25.FrameResize(Sender: TObject);
var
  vl: TValueListEditor;
begin
  if Fwire1 = nil then // todo: array wire insert !!!
  begin
    vl := ValueListEditor1;
    vl.InsertRow('Wire List','',true); // after list
    vl.InsertRow('Alpha','xx' ,false); // before

    Fwire1 := TPaintWire.Create(ScrollBox1);
    Fwire1.ToolSetLabel := 'Wire 1';
    Fwire1.Parent  := ScrollBox1;
    Fwire1.Left    :=  5;
    Fwire1.Top     :=  5;
    Fwire1.Width   := 64;
    Fwire1.Height  := 64;

    Fwire1.OnMouseDown := Panel2MouseDown;

    Fwire1.Visible := true;
  end;
end;

procedure TFrame25.Panel2MouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState;
  X     : Integer;
  Y     : Integer);
var
  vl: TValueListEditor;
  s1: String;
begin
  if Button = mbLeft then
  begin
    if (Sender is TPaintWire) then
    begin
      // ValueLustEditor:
      S1 := 'Wire ' + IntToStr(Form1.DFrameSimulation.FWireCount);
      inc(Form1.DFrameSimulation.FWireCount);

      vl := ValueListEditor1;
      vl.InsertRow(S1,'',true);

      vl.ItemProps[S1].EditStyle := esEllipsis;
      vl.ItemProps[S1].ReadOnly  := false;

      (Sender as TPaintWire).BeginDrag(false);
    end;
  end;
end;

procedure TFrame25.ValueListEditor1EditButtonClick(Sender: TObject);
var
  vl: TValueListEditor;
  dc: TComponent;
  S1: String;
begin
  vl := ValueListEditor1;
  s1 := StringReplace(vl.Keys[vl.Row],' ','_',[rfReplaceAll]);
  dc := Form1.DFrameSimulation.
        ScrollBox1.
        FindComponent('TPaintWire_' + s1);

  if dc = nil then
  begin
    ShowMessage('Element not found !');
    exit;
  end;

  if (dc is TPaintWire) then
  begin
    ShowMessage((dc as TPaintWire).Name);
  end;
end;

procedure TFrame25.ValueListEditor1DrawCell(
  Sender   : TObject;
  ACol,ARow: Integer;
  Rect     : TRect;
  State    : TGridDrawState);
var
  vl: TValueListEditor;
begin
  vl := (Sender as TValueListEditor);

  if  (vl.Keys[ARow] = 'Wire List')
  and ((ACol = 0) or (ACol = 1)) then
  begin
    with vl do
    begin
      Canvas.Brush.Color := clYellow;
      Canvas.FillRect(Rect);

      Canvas.Font.Name  := 'Consolas';
      Canvas.Font.Size  := 10;
      Canvas.Font.Color := clBlack;

      if ACol = 0 then
      Canvas.TextOut(
        Rect.Left + 3,
        Rect.Top  + 1, 'Wire List');
    end;
  end;
end;

procedure TFrame25.ValueListEditor1SelectCell(
  Sender: TObject;
  ACol  : Integer;
  ARow  : Integer; var CanSelect: Boolean);
begin
  if ((ACol = 0) or (ACol = 1)) and
  (ValueListEditor1.Keys[ARow] = 'Wire List') then
  begin
    CanSelect := false;
  end
end;

procedure TFrame25.ValueListEditor1SetEditText(
  Sender: TObject;
  ACol  : Integer;
  ARow  : Integer; const Value: String);
var
  S: String;
begin
  with Sender as TValueListEditor do
  begin
    S := Cells[ACol, ARow];
  end;
end;

procedure TFrame25.Frame24DeleteItem1Click(Sender: TObject);
var
  vl: TValueListEditor;
  S1: String;
  DC: TComponent;
begin
  vl := ValueListEditor1;
  S1 := StringReplace(vl.Keys[vl.Row],' ','_',[rfReplaceAll]);
  DC := Form1.DFrameSimulation.
        ScrollBox1.
        FindComponent('TPaintWire_' + S1);
  if DC = nil then
  begin
    ShowMessage('Element not found !!');
    exit;
  end else
  begin
    if S1 <> 'Wire List' then
    begin
      vl.DeleteRow(vl.Row);
      FreeAndNil(DC);
    end;
  end;
end;

end.

