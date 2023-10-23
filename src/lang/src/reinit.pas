unit reinit;

interface

uses
  Windows, Dialogs, Messages, SysUtils, Classes, Graphics, Controls, Forms;

procedure ReinitializeForms;
function LoadNewResourceModule(Locale: LCID): Longint;

implementation

uses
  EditorForm;

var
  NewInst: Longint;
  FileLocale: String;

type
  TAsInheritedReader = class(TReader)
  public
    procedure ReadPrefix(var Flags: TFilerFlags; var AChildPos: Integer); override;
  end;

procedure TAsInheritedReader.ReadPrefix(var Flags: TFilerFlags; var AChildPos: Integer);
begin
  inherited ReadPrefix(Flags, AChildPos);
  Include(Flags, ffInherited);
end;

function SetResourceHInstance(NewInstance: Longint): Longint;
var
  CurModule: PLibModule;
begin
  CurModule := LibModuleList;
  Result := 0;
  while CurModule <> nil do
  begin
    if CurModule.Instance = HInstance then
    begin
      if CurModule.ResInstance <> CurModule.Instance then
        FreeLibrary(CurModule.ResInstance);
      CurModule.ResInstance := NewInstance;
      Result := NewInstance;
      Exit;
    end;
    CurModule := CurModule.Next;
  end;
end;

function LoadNewResourceModule(Locale: LCID): Longint;
var
  FileName: array [0..260] of char;
  res : DWORD;
  LocaleName: array[0..4] of Char;
begin
  res := GetModuleFileName(0, FileName, sizeof(FileName));
  if res <> 0 then
  begin
    GetLocaleInfo(Locale, LOCALE_SABBREVLANGNAME, LocaleName, SizeOf(LocaleName));

    NewInst := 0;

    if Length(LocaleName) > 0 then
    begin
      // Then look for a potential language/country translation
//      FileLocale := ChangeFileExt(FileName, '.' + LocaleName);
      NewInst    := LoadLibraryEx(PChar(FileLocale), 0, LOAD_LIBRARY_AS_DATAFILE);

      if NewInst  = 0 then
      raise Exception.Create('switch to default');

      Result := SetResourceHInstance(NewInst);
      exit;
    end;
  end else
  raise Exception.Create('Language-Module not loaded !');
  result := 0;
end;

function InternalReloadComponentRes(const ResName: string; HInst: THandle; var Instance: TComponent): Boolean;
var
//  hr: HRSRC;
  ResStream: TResourceStream;
  AsInheritedReader: TAsInheritedReader;
begin
  try
    //hr := FindResource(newInst, PChar(ResName), RT_RCDATA);
    ResStream := TResourceStream.Create(newInst, ResName, RT_RCDATA);
    try
      // wird nie erreicht !
      showmessage('SENSE');
      AsInheritedReader := TAsInheritedReader.Create(ResStream, 4096);
      try
        Instance := AsInheritedReader.ReadRootComponent(Instance);
      finally
        AsInheritedReader.Free;
      end;
    finally
      ResStream.Free;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Resource-Error: ' + #13#10 + E.Message);
    end;
  end;
  Result := true;
  exit;
end;

function ReloadInheritedComponent(Instance: TComponent; RootAncestor: TClass): Boolean;

  function InitComponent(ClassType: TClass): Boolean;
  begin
    Result := true;

    if ClassType.ClassParent = nil then
    begin
      Result := False;
      exit;
    end;

    Result := InternalReloadComponentRes(ClassType.ClassName, FindResourceHInstance(
    FindClassHInstance(ClassType)), Instance) or Result;
  end;

begin
  Result := InitComponent(Instance.ClassType);
end;

procedure ReinitializeForms;
var
//  Count: Integer;
  I: Integer;
begin
  Form1.Memo1.Lines.Clear;

  for I := 0 to Form1.ComponentCount - 1 do
  begin
    if  (not (Form1.Components[i] is TControl))
    and (not  Form1.Components[i].HasParent)
    then begin
      Form1.Memo1.Lines.Add(Form1.Components[i].Name);
      ReloadInheritedComponent(Form1.Components[I], TForm1);
    end;
  end;
end;

end.
