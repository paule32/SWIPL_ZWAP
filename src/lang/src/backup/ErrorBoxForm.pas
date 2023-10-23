// -------------------------------------------------------------------
// File:    ErrorBoxForm.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit ErrorBoxForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, JvButton,
  JvTransparentButton, JvExForms, JvScrollBox, JvExControls, JvGradient,
  JvGradientCaption, JvExStdCtrls, JvHtControls, JvCtrls, ExtCtrls;

type
  TErrorBox = class(TForm)
    JvGradientCaption1: TJvGradientCaption;
    JvGradient1: TJvGradient;
    JvScrollBox1: TJvScrollBox;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    Memo1: TMemo;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure JvImgBtn2Click(Sender: TObject);
    procedure JvImgBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Text(txt: String);
    procedure Show;
  end;

var
  ErrorBox: TErrorBox;

implementation

{$R *.dfm}

procedure TErrorBox.Text(txt: String);
begin
  memo1.Lines.clear;
  memo1.Lines.Text := txt;
end;

procedure TErrorBox.Show;
begin
  Timer1.Enabled := true;
  inherited ShowModal;
end;

procedure TErrorBox.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  Timer1.Enabled := true;
end;

procedure TErrorBox.JvImgBtn2Click(Sender: TObject);
begin
  Timer1.Enabled := false;
  Close;
end;

procedure TErrorBox.JvImgBtn1Click(Sender: TObject);
begin
  Timer1.Enabled := false;
  Close;
end;

procedure TErrorBox.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    Timer1.Enabled := false;
    close;
  end;
end;

procedure TErrorBox.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Close;
end;

end.
