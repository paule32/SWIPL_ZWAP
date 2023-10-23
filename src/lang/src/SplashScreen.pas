// -------------------------------------------------------------------
// File:    SplashScreen.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SplashScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, JvGradientCaption, madExceptVcl, JvAppInst;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    JvGradientCaption1: TJvGradientCaption;
    MadExceptionHandler1: TMadExceptionHandler;
    JvAppInstances1: TJvAppInstances;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure JvAppInstances1InstanceCreated(Sender: TObject;
      ProcessId: Cardinal);
  private
    { Private declarations }
  public
    isinit: Boolean;
    isExit: Boolean;
    isMemE: Boolean;
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}
uses
  EditorForm, SelectDataBase;

procedure TSplashForm.FormShow(Sender: TObject);
begin
  if isExit = false then
  begin
    Timer1.Enabled := true;

    Width := Width + 1;
    Width := Width - 1;
  end;
end;

procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
  try
    Timer1.Enabled := false;
    if not(Assigned(Form1)) then
    Application.CreateForm(TForm1, Form1);
    Form2.Hide;
    ShowMessage('xxxxx');
    Form1.ShowModal;
  except
    on E: Exception do
    begin
      ShowMessage('Exception:'
      + #13#10 + 'ClassName: ' + E.ClassName
      + #13#10 + 'Message: '   + E.Message);

      SplashForm.ProgressBar1.Position := 70;
      SplashForm.isExit := true;
      SplashForm.isMemE := true;
      SplashForm.Close;
    end;
  end;
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  isinit := true;
  isExit := false;

  // be fair...
  JvAppInstances1.AutoActivate := true;
  JvAppInstances1.Active := true;
end;

procedure TSplashForm.JvAppInstances1InstanceCreated(
  Sender   : TObject;
  ProcessId: Cardinal);
begin
  if GetCurrentProcessId <> ProcessId then
  begin
    Close;
  end;
end;

end.
