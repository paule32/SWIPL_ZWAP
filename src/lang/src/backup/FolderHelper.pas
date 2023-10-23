// -------------------------------------------------------------------
// File:    FolderHelper.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit FolderHelper;

interface

type
  TFolderHelper = class
  private
    class function GetFolder(const ACSIDL: Integer): string;
  public
    class function GetMyDocumentsFolder: string;
    class function GetMyDesktopFolder: string;
  end;

implementation

uses
  ShlObj,  // Needed for the CSIDL constants
  Windows;

function SHGetFolderPath(hwnd: HWND; csidl: Integer; hToken: THandle; dwFlags: DWord; pszPath: LPWSTR): HRESULT; stdcall; forward;
function SHGetFolderPath; external 'SHFolder.dll' name 'SHGetFolderPathW';

class function TFolderHelper.GetFolder(const aCSIDL: Integer): string;
var
  FolderPath: array[0 .. MAX_PATH] of Char;
begin
  SetLastError(ERROR_SUCCESS);
  if SHGetFolderPath(0, aCSIDL, 0, 0, @FolderPath) = S_OK then
    Result := FolderPath;
end;

class function TFolderHelper.GetMyDocumentsFolder: string;
begin
  Result := GetFolder(CSIDL_PERSONAL);
end;

class function TFolderHelper.GetMyDesktopFolder: string;
begin
  Result := GetFolder(CSIDL_DESKTOP);
end;

end.
