// -------------------------------------------------------------------
// @File    SimulationPartA.pas
// @Author  paule32 - Jens Kallup
// @License (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SimulationFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Menus, JvMenus, ValEdit,
  Grids;

type
  TFrame24 = class(TFrame)
    Panel1: TPanel;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    ScrollBox1: TScrollBox;
    JvPopupMenu1: TJvPopupMenu;
    procedure ScrollBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ScrollBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    inReposition : boolean;
    oldPos : TPoint;
    FCurrentControl: TObject;

    procedure ControlMouseUp(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState; X, Y: Integer);
    procedure ControlMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState; X, Y: Integer);
    procedure ControlMouseMove(
      Sender: TObject;
      Shift : TShiftState; X, Y: Integer);

    procedure FlipLineHorizontal(Sender: TObject);
    procedure FlipLineVertical  (Sender: TObject);
  public
    FWireCount: Integer;
  end;

implementation

{$R *.dfm}

uses
  EditorForm, SimulationPartA;

procedure TFrame24.ControlMouseMove(
  Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
const
  minWidth  = 20;
  minHeight = 20;
var
  newPos: TPoint;
  frmPoint : TPoint;
begin
  if inReposition then
  begin
    with TWinControl(Sender) do
    begin
      GetCursorPos(newPos);
      if ssShift in Shift then
      begin //resize
        Screen.Cursor := crSizeNWSE;
        frmPoint := ScreenToClient(Mouse.CursorPos);

        if frmPoint.X > minWidth then
        Width := frmPoint.X;

        if frmPoint.Y > minHeight then
        Height := frmPoint.Y;
      end else //move
      begin
        Screen.Cursor := crSize;
        Left := Left - oldPos.X + newPos.X;
        Top := Top - oldPos.Y + newPos.Y;
        oldPos := newPos;
      end;
    end;
  end;
end;

procedure TFrame24.ControlMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState; X, Y: Integer);
begin
  if (Sender is TPaintWire) then
  begin
    if Button = mbRight then
    begin
      FCurrentControl := Sender;
      (Sender as TPaintWire).PopupMenu.Popup(
        Mouse.CursorPos.X+4,
        Mouse.CursorPos.Y+4);
      exit;
    end else
    if Button = mbLeft then
    begin
      FCurrentControl := Sender;

    end;
    inReposition := true;
    SetCapture(GetDC((Sender as TPaintWire).Canvas.Handle));
    GetCursorPos(oldPos);
  end;
end;

procedure TFrame24.ControlMouseUp(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState; X, Y: Integer);
begin
  if inReposition then
  begin
    Screen.Cursor := crDefault;
    ReleaseCapture;
    inReposition := false;
  end;
end;

procedure TFrame24.ScrollBox1DragOver(
  Sender: TObject;
  Source: TObject;
  X     : Integer;
  Y     : Integer;
  State : TDragState; var Accept: Boolean);
begin
  if (Source is TPaintWire) then Accept := true;
end;

procedure TFrame24.FlipLineVertical(Sender: TObject);
var
  mi: TMenuItem;
begin
  (FCurrentControl as TPaintWire).Height := 100;
  (FCurrentControl as TPaintWire).Width  :=  20;
  (FCurrentControl as TPaintWire).Position := poVertical;

  if (Sender is TMenuItem) then
  begin
    mi := (Sender as TMenuItem);
    mi.Caption := 'Flip horizontal';
    mi.OnClick := FlipLineHorizontal;
  end;
end;
procedure TFrame24.FlipLineHorizontal(Sender: TObject);
var
  mi: TMenuItem;
begin
  (FCurrentControl as TPaintWire).Height :=  20;
  (FCurrentControl as TPaintWire).Width  := 100;
  (FCurrentControl as TPaintWire).Position := poHorizontal;

  if (Sender is TMenuItem) then
  begin
    mi := (Sender as TMenuItem);
    mi.Caption := 'Flip vertical';
    mi.OnClick := FlipLineVertical;
  end;
end;

procedure TFrame24.ScrollBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  line: TPaintWire;
  menu: TJvPopupMenu;
  item: TMenuItem;
begin
  if (Source is TPaintWire) then
  begin
    line := TPaintWire.Create(ScrollBox1);
    line.Name := 'TPaintWire_Wire_' + IntToStr(FWireCount-1);
    line.Parent := ScrollBox1;
    line.Width  := 100;
    line.Height := 20;
    line.Top    := Y;
    line.Left   := X;

    // Event handler
    line.OnMouseDown := ControlMouseDown;
    line.OnMouseMove := ControlMouseMove;
    line.OnMouseUp   := ControlMouseUp;

    // popup menu
    menu := TJvPopupMenu.Create(line);
    item := TMenuItem   .Create(menu);

    item.Caption := 'Flip vertical';
    item.OnClick := FlipLineVertical;

    menu.Style   := msOffice;
    menu.Items.Add(item);

    line.PopupMenu := menu;

    // display visibilty
    line.Visible := true;
    line.Enabled := true;
  end;
end;

end.
