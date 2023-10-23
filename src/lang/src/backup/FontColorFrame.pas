// -------------------------------------------------------------------
// File:    FontColorFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit FontColorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvFullColorSpaces, StdCtrls, JvExStdCtrls, JvCombobox,
  JvFullColorCtrls, Menus, JvMenus, ImgList, JvExControls, JvArrowButton,
  ExtCtrls, JvColorCombo, Buttons, RichEdit;

type
  TFrame13 = class(TFrame)
    Panel1: TPanel;
    JvArrowButton3: TJvArrowButton;
    ImageList1: TImageList;
    TextStylePopupMenu: TJvPopupMenu;
    MenuItem1: TMenuItem;
    FontColor1: TMenuItem;
    FontStyle1: TMenuItem;
    JvColorComboBox1: TJvColorComboBox;
    JvColorComboBox2: TJvColorComboBox;
    Label1: TLabel;
    Label2: TLabel;
    JvColorComboBox3: TJvColorComboBox;
    Label3: TLabel;
    N1: TMenuItem;
    Background1: TMenuItem;
    ColorDialog1: TColorDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure MenuItem1Click(Sender: TObject);
    procedure FontColor1Click(Sender: TObject);
    procedure FontStyle1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure JvColorComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses EditorForm;

{$R *.dfm}

procedure TFrame13.MenuItem1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible := true;
  JvArrowButton3.Caption := 'Font Face';

end;

procedure TFrame13.FontColor1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := true;
  Form1.DFrameFontStyle.Visible := false;
  Form1.DFrameFontFace.Visible  := false;
  JvArrowButton3.Caption := 'Font Color';
end;

procedure TFrame13.FontStyle1Click(Sender: TObject);
begin
  Form1.DFrameFontColor.Visible := false;
  Form1.DFrameFontStyle.Visible := true;
  Form1.DFrameFontFace.Visible  := false;
  JvArrowButton3.Caption := 'Font Style';
end;

procedure TFrame13.SpeedButton1Click(Sender: TObject);
begin
  if not(ColorDialog1.Execute) then
  exit;
  JvColorComboBox2.ColorValue := ColorDialog1.Color;

  Form1.DFrameHelpTopic.CurrentEditor.SelAttributes.Color := ColorDialog1.Color;
end;

procedure TFrame13.SpeedButton2Click(Sender: TObject);
var
  EditFormat: CharFormat2;
begin
  if not(ColorDialog1.Execute) then
  exit;

  JvColorComboBox1.ColorValue := ColorDialog1.Color;

  FillChar(EditFormat, sizeOf(EditFormat), 0);
  EditFormat.cbSize := sizeOf(EditFormat);

  EditFormat.dwMask      := CFM_BACKCOLOR;
  EditFormat.crBackColor := ColorDialog1.Color;

  Form1.DFrameHelpTopic.CurrentEditor.Perform(EM_SETCHARFORMAT,SCF_SELECTION,LongInt(@EditFormat));
end;

procedure TFrame13.SpeedButton3Click(Sender: TObject);
begin
  if not(ColorDialog1.Execute) then
  exit;
  JvColorComboBox3.ColorValue := ColorDialog1.Color;
end;

procedure TFrame13.JvColorComboBox1Click(Sender: TObject);
var
  EditFormat: CharFormat2;
begin
  FillChar(EditFormat, sizeOf(EditFormat), 0);
  EditFormat.cbSize := sizeOf(EditFormat);

  EditFormat.dwMask      := CFM_BACKCOLOR;
  EditFormat.crBackColor := JvColorComboBox1.ColorValue;

  Form1.DFrameHelpTopic.CurrentEditor.Perform(EM_SETCHARFORMAT,SCF_SELECTION,LongInt(@EditFormat));

end;

end.
