// -------------------------------------------------------------------
// File:    SpreadFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SpreadFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs,  Grids, ComCtrls;

type
  TFrame18 = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    procedure AdvStringGrid1SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame18.AdvStringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  CanSelect := true;
end;

end.
