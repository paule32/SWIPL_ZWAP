// -------------------------------------------------------------------
// File:    MembersFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit MembersFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, ComCtrls, JvExComCtrls,
  JvComCtrls, JvButton, JvCtrls, ExtCtrls, JvCombobox;

type
  TFrame6 = class(TFrame)
    PageControl5: TJvPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    Label1: TLabel;
    DatabaseComboBox: TJvComboBox;
    Panel1: TPanel;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    TabSheet2: TTabSheet;
    Splitter2: TSplitter;
    Panel2: TPanel;
    JvTreeView1: TJvTreeView;
    JvEdit1: TJvEdit;
    ListBox1: TListBox;
    procedure DatabaseComboBoxChange(Sender: TObject);
    procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    function getTableList: TListBox;
  end;

implementation

{$R *.dfm}
uses
  EditorForm;

function TFrame6.getTableList: TListBox;
begin
  result := ListBox1;
end;

procedure TFrame6.DatabaseComboBoxChange(Sender: TObject);
var
  SL: TStrings;
begin
  ListBox1.Items.Clear;
//  Form1.DataBase1.Close;

//  Form1.Session1.Close;
//  Form1.Session1.Open;
(*
  with Form1.DataBase1 do
  begin
    DataBaseName := DataBaseComboBox.Text;
    AliasName    := DataBaseComboBox.Text;
    Open;
    if Connected then
    begin
      sl := TStringList.Create;
      try
        ListBox1.BringToFront;
        ListBox1.Color := clYellow;

        GetTableNames(sl,false);
        ListBox1.Items.AddStrings(sl);
      finally
        sl.Free;
      end;
    end else
    Showmessage('error');
  end;*)
end;

procedure TFrame6.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ListBox1.BeginDrag(false);
end;

end.
