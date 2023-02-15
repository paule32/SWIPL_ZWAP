// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL form_dialog.pas
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
// -----------------------------------------------------------------------
unit form_dialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    TextBox: TMemo;
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

{$R *.dfm}
(*
procedure vcl_show_message(t_title: PChar; t_text: PChar);
begin
  OkRightDlg := TOkRightDlg.CreateParented(0);
  OkRightDlg.TextBox.Lines.Clear;
  OkRightDlg.TextBox.Lines.Add(t_text);
  OkRightDlg.ShowModal;
end;
*)
procedure TOKRightDlg.CancelBtnClick(Sender: TObject);
begin
  Close
end;

procedure TOKRightDlg.OKBtnClick(Sender: TObject);
begin
  Close;
end;

end.

