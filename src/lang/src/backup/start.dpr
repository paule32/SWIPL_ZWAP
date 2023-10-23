program start;

uses
  Forms,
  SplashScreen in 'SplashScreen.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
