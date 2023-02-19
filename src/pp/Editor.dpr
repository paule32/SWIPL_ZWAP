program Editor;

uses
  Forms,
  EditorForm in 'EditorForm.pas' {Form1},
  OKCANCL1 in '..\..\..\..\..\Program Files (x86)\Borland\Delphi7\ObjRepos\OKCANCL1.pas' {OKBottomDlg},
  AboutForm in 'AboutForm.pas' {OKRightDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
