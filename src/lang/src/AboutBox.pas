// -------------------------------------------------------------------
// File:    AboutBox.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit AboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, JvGradientCaption, JvComponentBase, JvStarfield,
  JvExControls, JvPoweredBy;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvGradientCaption1: TJvGradientCaption;
    JvPoweredByJVCL1: TJvPoweredByJVCL;
    JvStarfield1: TJvStarfield;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

{$R *.dfm}

procedure TOKRightDlg.FormShow(Sender: TObject);
begin
  JvGradientCaption1.Active := true;
  JvStarfield1.Active := true;
  Timer1.Interval := 30000;
  Timer1.Enabled  :=  true;
end;

procedure TOKRightDlg.OKBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TOKRightDlg.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Close;
end;

end.
