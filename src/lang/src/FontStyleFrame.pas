// -------------------------------------------------------------------
// File:    FontStyleFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit FontStyleFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvExControls, JvArrowButton, ExtCtrls, ImgList, Menus, JvMenus,
  JvFullColorSpaces, StdCtrls, JvExStdCtrls, JvCombobox, JvFullColorCtrls;

type
  TFrame12 = class(TFrame)
    Panel1: TPanel;
    JvSpeedButton3: TJvArrowButton;
    JvArrowButton1: TJvArrowButton;
    JvArrowButton2: TJvArrowButton;
    JvArrowButton3: TJvArrowButton;
    FontSizePopupMenuBold: TJvPopupMenu;
    BoldFontSize8: TMenuItem;
    BoldFontSize9: TMenuItem;
    BoldFontSize10: TMenuItem;
    BoldFontSize12: TMenuItem;
    BoldFontSize14: TMenuItem;
    BoldFontSize16: TMenuItem;
    BoldFontSize18: TMenuItem;
    BoldFontSize20: TMenuItem;
    BoldFontSize24: TMenuItem;
    BoldFontSize26: TMenuItem;
    BoldFontSize28: TMenuItem;
    BoldFontSize32: TMenuItem;
    BoldFontSize40: TMenuItem;
    FontSizePopupMenuItalic: TJvPopupMenu;
    ItalicFontSize8: TMenuItem;
    ItalicFontSize9: TMenuItem;
    ItalicFontSize10: TMenuItem;
    ItalicFontSize12: TMenuItem;
    ItalicFontSize14: TMenuItem;
    ItalicFontSize16: TMenuItem;
    ItalicFontSize18: TMenuItem;
    ItalicFontSize20: TMenuItem;
    ItalicFontSize24: TMenuItem;
    ItalicFontSize26: TMenuItem;
    ItalicFontSize28: TMenuItem;
    ItalicFontSize32: TMenuItem;
    ItalicFontSize40: TMenuItem;
    FontSizePopupMenuUnderline: TJvPopupMenu;
    UnderLineFontSize8: TMenuItem;
    UnderLineFontSize9: TMenuItem;
    UnderLineFontSize10: TMenuItem;
    UnderLineFontSize12: TMenuItem;
    UnderLineFontSize14: TMenuItem;
    UnderLineFontSize16: TMenuItem;
    UnderLineFontSize18: TMenuItem;
    UnderLineFontSize20: TMenuItem;
    UnderLineFontSize24: TMenuItem;
    UnderLineFontSize26: TMenuItem;
    UnderLineFontSize28: TMenuItem;
    UnderLineFontSize32: TMenuItem;
    UnderLineFontSize40: TMenuItem;
    FontImageList: TImageList;
    TextStylePopupMenu: TJvPopupMenu;
    MenuItem27: TMenuItem;
    FontColor1: TMenuItem;
    FontStyle1: TMenuItem;
    BoldFontSize22: TMenuItem;
    UnderLineFontSize22: TMenuItem;
    ItalicFontSize22: TMenuItem;
    N1: TMenuItem;
    Background1: TMenuItem;
    Background2: TMenuItem;
    Paragraph1: TMenuItem;
    Align1: TMenuItem;
    able1: TMenuItem;
    Background3: TMenuItem;
    Border1: TMenuItem;
    N2: TMenuItem;
    Delete1: TMenuItem;
    Insert1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Image1: TMenuItem;
    N5: TMenuItem;
    Paragraph2: TMenuItem;
    LeftJustify1: TMenuItem;
    RightJustify1: TMenuItem;
    CenterMiddleJustify1: TMenuItem;
    EditOper1: TMenuItem;
    N6: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N7: TMenuItem;
    Delete2: TMenuItem;
    procedure BoldFontSize8Click(Sender: TObject);
    procedure ItalicFontSize8Click(Sender: TObject);
    procedure UnderLineFontSize8Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure FontColor1Click(Sender: TObject);
    procedure FontStyle1Click(Sender: TObject);
  private
    procedure uncheckMenuBold;
    procedure uncheckMenuItalic;
    procedure uncheckMenuUnderLine;
  public
    { Public declarations }
  end;

implementation

uses EditorForm;

{$R *.dfm}

procedure TFrame12.uncheckMenuBold;
begin
  with (BoldFontSize8 ) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize9 ) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize10) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize12) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize14) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize16) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize18) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize20) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize22) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize24) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize26) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize28) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize32) do begin Checked := false; ImageIndex := 0; end;
  with (BoldFontSize40) do begin Checked := false; ImageIndex := 0; end;
end;

procedure TFrame12.uncheckMenuItalic;
begin
  with (ItalicFontSize8 ) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize9 ) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize10) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize12) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize14) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize16) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize18) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize20) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize22) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize24) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize26) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize28) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize32) do begin Checked := false; ImageIndex := 2; end;
  with (ItalicFontSize40) do begin Checked := false; ImageIndex := 2; end;
end;

procedure TFrame12.uncheckMenuUnderLine;
begin
  with (UnderLineFontSize8 ) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize9 ) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize10) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize12) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize14) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize16) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize18) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize20) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize22) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize24) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize26) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize28) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize32) do begin Checked := false; ImageIndex := 1; end;
  with (UnderLineFontSize40) do begin Checked := false; ImageIndex := 1; end;
end;

procedure TFrame12.BoldFontSize8Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
  begin
    uncheckMenuBold;
    (Sender as TMenuItem).Checked    := false;
    (Sender as TMenuItem).ImageIndex := 0;
    FontImageList.GetBitmap(0,JvSpeedButton3.Glyph);

    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style :=
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style - [fsBold];
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Size  := (Sender as TMenuItem).Tag;
  end else
  begin
    uncheckMenuBold;
    (Sender as TMenuItem).Checked := true;
    (Sender as TMenuItem).ImageIndex := 3;
    FontImageList.GetBitmap(3,JvSpeedButton3.Glyph);

    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style :=
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style + [fsBold];
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Size  := (Sender as TMenuItem).Tag;
  end;
end;

procedure TFrame12.ItalicFontSize8Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
  begin
    uncheckMenuItalic;
    (Sender as TMenuItem).Checked    := false;
    (Sender as TMenuItem).ImageIndex := 2;
    FontImageList.GetBitmap(2,JvArrowButton1.Glyph);

    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style :=
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style - [fsBold];
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Size  := (Sender as TMenuItem).Tag;
  end else
  begin
    uncheckMenuItalic;
    (Sender as TMenuItem).Checked := true;
    (Sender as TMenuItem).ImageIndex := 4;
    FontImageList.GetBitmap(4,JvArrowButton1.Glyph);

    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style :=
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style + [fsItalic];
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Size  := (Sender as TMenuItem).Tag;
  end;
end;

procedure TFrame12.UnderLineFontSize8Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then
  begin
    uncheckMenuUnderLine;
    (Sender as TMenuItem).Checked    := false;
    (Sender as TMenuItem).ImageIndex := 1;
    FontImageList.GetBitmap(1,JvArrowButton2.Glyph);

    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style :=
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style - [fsUnderline];
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Size  := (Sender as TMenuItem).Tag;
  end else
  begin
    uncheckMenuUnderLine;
    (Sender as TMenuItem).Checked := true;
    (Sender as TMenuItem).ImageIndex := 5;
    FontImageList.GetBitmap(5,JvArrowButton2.Glyph);

    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style :=
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Style + [fsUnderline];
    Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Size  := (Sender as TMenuItem).Tag;
  end;
end;

procedure TFrame12.MenuItem27Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible := true;
  JvArrowButton3.Caption := 'Font Face';
end;

procedure TFrame12.FontColor1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := true;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible := false;
  JvArrowButton3.Caption := 'Font Color';
end;

procedure TFrame12.FontStyle1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := true;
  Form1.DFrameFontFace.Visible  := false;
  JvArrowButton3.Caption := 'Font Style';
end;

end.
