// -------------------------------------------------------------------
// File:    C64ConfigFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit C64ConfigFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Grids, ValEdit, ImgList,
  JvExStdCtrls, JvListBox, TntStdCtrls;

type
  TFrame5 = class(TFrame)
    Label1: TLabel;
    Splitter1: TSplitter;
    Label2: TLabel;
    ListBox1: TCheckListBox;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    ValueListEditor1: TValueListEditor;
    ImageList1: TImageList;
    ListBox2: TListBox;
    procedure ListBox1ClickCheck(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ListBox2DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame5.ListBox1ClickCheck(Sender: TObject);
var
  I,C: Integer;
begin
  C := ListBox1.ItemIndex;

  for I := 0 to ListBox1.Count - 1 do
  ListBox1.Checked[I] := false;
  ListBox1.Checked[C] := true;
end;

procedure TFrame5.ListBox1Click(Sender: TObject);
begin
  ListBox1ClickCheck(Sender);
end;

procedure TFrame5.ListBox2MeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
  if (Index >= 95) and (Index <= 127) then
  Height := 0 else
  Height := ImageList1.Height + 4;
end;

procedure TFrame5.ListBox2DrawItem(
  Control: TWinControl;
  Index  : Integer;
  Rect   : TRect;
  State  : TOwnerDrawState);
  var
  I,J : Word;
  lb: TtntListBox;
  b1,b2: Byte;
  wn: Word;
  ws: WideString;
begin
  lb := (Control as TtntListBox);

  lb.Canvas.Font.Name  := 'C64 Elite Mono';
  lb.Canvas.Font.Size  := 14;
  lb.Canvas.Font.Color := clBlack;

  lb.Canvas.Brush.Color := clWhite;
  lb.Canvas.FillRect(rect);
  lb.Canvas.Brush.Color := clYellow;

  ws := WideChar(Word($E020 + Index));
        Windows.TextOutW(
        lb.Canvas.Handle,
        rect.Left + 2,
        rect.Top  + 5,
        PWideChar(ws),
        Length(ws));

  lb.Canvas.Brush.Color := clWhite;
  lb.Canvas.TextOut(
        rect.Left + 40,
        rect.Top  + 2,
        'key ' + IntToStr(Index));
end;

end.




