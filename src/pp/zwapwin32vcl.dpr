// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL zwap_vcl.dpr
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
// -----------------------------------------------------------------------
library zwapwin32vcl;

uses
  Windows,
  SysUtils,
  Classes,
  form_dialog in 'form_dialog.pas' {OKRightDlg};

{$R *.res}

procedure vcl_show_message(t_title: PChar; t_text: PChar); export
begin
  MessageBox(0,PChar(
  'This is only a pre-alpha release' + #13#10 +
  'not for use !'),PChar(
  'Information'),
  MB_OK or MB_TASKMODAL);
end;

exports
vcl_show_message;

begin
  MessageBox(0,PChar(
  'This is only a pre-alpha release' + #13#10 +
  'not for productive use !'),PChar(
  'Information'),
  MB_OK or MB_TASKMODAL);
end.
