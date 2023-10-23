// -------------------------------------------------------------------
// File:    InfoBoxForm.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit InfoBoxForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGradientCaption, StdCtrls, JvExStdCtrls, JvButton, JvCtrls,
  JvExForms, JvScrollBox, JvExControls, JvGradient;

type
  TInfoBox = class(TForm)
    JvGradient1: TJvGradient;
    JvScrollBox1: TJvScrollBox;
    Memo1: TMemo;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    JvGradientCaption1: TJvGradientCaption;
    procedure JvImgBtn1Click(Sender: TObject);
    procedure JvImgBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    procedure Text(txt: String);
  end;

var
  InfoBox: TInfoBox;

implementation

{$R *.dfm}

procedure TInfoBox.Text(txt: String);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(txt);
end;

procedure TInfoBox.JvImgBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoBox.JvImgBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoBox.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
end;

procedure TInfoBox.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  close;
end;

end.
