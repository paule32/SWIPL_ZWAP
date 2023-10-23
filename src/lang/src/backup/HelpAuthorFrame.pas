// -------------------------------------------------------------------
// File:    HelpAuthorFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit HelpAuthorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvRichEdit, SynEdit,
  OleCtrls, SHDocVw, ExtCtrls, ComCtrls, JvExControls, JvRuler, Menus,
  JvMenus;

type
  TFrame11 = class(TFrame)
    Panel1: TPanel;
    Splitter1: TSplitter;
    JvPopupMenu1: TJvPopupMenu;
    EditOperations1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N2: TMenuItem;
    Delete1: TMenuItem;
    CloseTab: TMenuItem;
    procedure CloseTabClick(Sender: TObject);
  private
  public
    FontBold: Boolean;
    FontItalic: Boolean;
    FontUnderline: Boolean;
    FontStrikeOut: Boolean;
    FontColor    : TColor;

    function CurrText: TTextAttributes;
  end;

implementation

{$R *.dfm}
uses
  EditorForm;

function TFrame11.CurrText: TTextAttributes;
begin
result := nil;
end;

procedure TFrame11.CloseTabClick(Sender: TObject);
var
  Tab: TTabSheet;
  N: TTreeNodes;
  S: String;
  I, P: Integer;
begin
  Tab := Form1.DFrameHelpTopic.CurrentPage;
  S := Tab.Caption;
  if S <> 'Index Page' then
  begin
    N := Form1.DFrameHelpTopic.TreeView1.Items;
    for I := 0 to N.Count - 1 do
    begin
      if N.Item[I].Text = S then
      begin
        N.Item[I].Delete;
        Tab.TabVisible := false;
        P := Form1.DFrameHelpTopic.PageControl0.ActivePageIndex;
        if P-1 < 0 then
           Form1.DFrameHelpTopic.PageControl0.ActivePageIndex := 0 else
           Form1.DFrameHelpTopic.PageControl0.ActivePageIndex := 1 ;
           Form1.DFrameHelpTopic.PageControl0.ActivePageIndex := P ;
        break;
      end;
    end;
  end;
end;

end.
