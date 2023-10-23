// -------------------------------------------------------------------
// File:    GlobalDeclaration.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit GlobalDeclaration;

interface
uses
  Windows, Types, Dialogs, SysUtils;

// -------------------------------------------------------------------
// Supported Database System's ...
// -------------------------------------------------------------------
type TdataBaseType = (dbUnknown, dbBorland, dbInterBase, dbMySQL);
var  usedDataBase: TDataBaseType;

// -------------------------------------------------------------------
// Contains values that indicate the type of session information to
// retrieve in a call to the "WTSQuerySessionInformation" function.
// {WTS_INFO_CLASS}:
// -------------------------------------------------------------------
const
  WTSInitialProgram     =  0;
  WTSApplicationName    =  1;
  WTSWorkingDirectory   =  2;
  WTSOEMId              =  3;
  WTSSessionId          =  4;
  WTSUserName           =  5;
  WTSWinStationName     =  6;
  WTSDomainName         =  7;
  WTSConnectState       =  8;
  WTSClientBuildNumber  =  9;
  WTSClientName         = 10;
  WTSClientDirectory    = 11;
  WTSClientProductId    = 12;
  WTSClientHardwareId   = 13;
  WTSClientAddress      = 14;
  WTSClientDisplay      = 15;
  WTSClientProtocolType = 16;
  WTSIdleTime           = 17;
  WTSLogonTime          = 18;
  WTSIncomingBytes      = 19;
  WTSOutgoingBytes      = 20;
  WTSIncomingFrames     = 21;
  WTSOutgoingFrames     = 22;
  WTSClientInfo         = 23;
  WTSSessionInfo        = 24;
  WTSSessionInfoEx      = 25;
  WTSConfigInfo         = 26;
  WTSValidationInfo     = 27;
  WTSSessionAddressV4   = 28;
  WTSIsRemoteSession    = 29;

function GetCurrentSessionId: DWORD;
function GetSessionIdUserName: String;

implementation

// -------------------------------------------------------------------
// external Terminal Services ...
// -------------------------------------------------------------------
function WTSQuerySessionInformationA(
  hServer     : THandle;
  SessionId   : DWord;
  WTSInfoClass: DWord;
  var ppBuffer: LPTSTR;
  var BytesReturned: DWord): BOOL; stdcall;
  external 'Wtsapi32.dll';

procedure WTSFreeMemory(pMemory: Pointer); stdcall;
  external 'Wtsapi32.dll';

function ProcessIdToSessionId(
  dwProcessId: DWORD;
  pSessionId : DWORD): BOOL; stdcall;
  external 'kernel32.dll';

// -------------------------------------------------------------------
// get the user name based of the loged-in session ID
// -------------------------------------------------------------------
function GetSessionIdUserName: String;
const
  WTS_CURRENT_SERVER_HANDLE = 0;
  WTS_CURRENT_SESSION = DWord(-1);
var
  Buffer: LPTSTR;
  BytesReturned: DWord;
begin
  result := '';
  if WTSQuerySessionInformationA(
  WTS_CURRENT_SERVER_HANDLE,
  WTS_CURRENT_SESSION,
  WTSUserName,
  Buffer,
  BytesReturned) then
  begin
    try
      result := Buffer;
    finally
      WTSFreeMemory(Buffer);
    end;
  end;
end;

// -------------------------------------------------------------------
// get informations of a session into a string
// -------------------------------------------------------------------
function WTSGetString(
  hServer  : THandle;
  sessionID: DWORD;
  command  : DWORD {WTS_INFO_CLASS};
  cmdStr   : String): String;
var
  BytesReturned: DWORD;
  Buffer: LPTSTR;
begin
  result := '';
  bytesReturned := 0;
  if not(WTSQuerySessionInformationA(
  hServer, sessionID, command, Buffer, BytesReturned)) then
  begin
    result := Format('session: %d - %s failed - error = %d',
    [sessionID, cmdStr, GetLastError]);
  end else
  begin
    result := Format('session: %d - %s returned: "%s"',
    [sessionID, cmdStr, Buffer]);
  end;
  WTSFreeMemory(Buffer);
end;

function InitWTS: Boolean;
//var
//  sessionInfo: PWTS_SESSION_INFO;
begin
  result := false;
end;

function GetSessionIdfromProccessId(
  const processId: DWORD;
  var   sessionId: DWORD): boolean;
begin
  result := ProcessIdToSessionId(processId, DWORD(@sessionId));
end;

function GetCurrentSessionId: DWORD;
begin
  if not GetSessionIdfromProccessId(GetCurrentProcessId,result) then
  result := 0;
end;

end.
