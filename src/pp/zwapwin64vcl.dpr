library zwapwin64vcl;

{ Wichtiger Hinweis zur DLL-Speicherverwaltung: ShareMem muss die erste
  Unit in der USES-Klausel Ihrer Bibliothek UND in der USES-Klausel Ihres Projekts
  (wählen Sie 'Projekt-Quelltext anzeigen') sein, wenn Ihre DLL Prozeduren oder Funktionen
  exportiert, die Strings als Parameter oder Funktionsergebnisse übergeben. Dies
  gilt für alle Strings, die an oder von Ihrer DLL übergeben werden, auch für solche,
  die in Records und Klassen verschachtelt sind. ShareMem ist die Interface-Unit zur
  gemeinsamen BORLNDMM.DLL-Speicherverwaltung, die zusammen mit Ihrer DLL
  weitergegeben werden muss. Übergeben Sie String-Informationen mit PChar- oder ShortString-Parametern, um die Verwendung von BORLNDMM.DLL zu vermeiden.
 }

uses
  WinApi.Windows,
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  Vcl.Dialogs,
  form_dialog in 'form_dialog.pas' {Form1};

{$R *.res}

procedure vcl_show_message(pc1: PChar; pc2: PChar); cdecl export
var
  s1,s2: String;
begin
  s1 := pc1;
  s2 := pc2;

  Form1 := TForm1.Create(nil);
  Form1.Caption := s1;
  Form1.Memo1.Lines.Add(s2);
  Form1.ShowModal;
end;

exports
  vcl_show_message;

begin

end.
