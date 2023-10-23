// -------------------------------------------------------------------
// File:    InputBox.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit InputBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvGradientCaption, StdCtrls, JvExStdCtrls, JvButton, JvCtrls,
  JvExControls, JvFormWallpaper;

type
  TInputBoxWindow = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    JvGradientCaption1: TJvGradientCaption;
    JvFormWallpaper1: TJvFormWallpaper;
    Button1: TJvImgBtn;
    Button2: TJvImgBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    InputLineText: String;
  end;

var
  InputBoxWindow: TInputBoxWindow;

implementation

{$R *.dfm}

procedure TInputBoxWindow.Button1Click(Sender: TObject);
begin
  InputLineText := Edit1.Text;
  Close;
end;

procedure TInputBoxWindow.Button2Click(Sender: TObject);
begin
  InputLineText := '';
  Close;
end;

procedure TInputBoxWindow.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
end;

end.
