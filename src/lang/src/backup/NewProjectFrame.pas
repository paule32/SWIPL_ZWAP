// -------------------------------------------------------------------
// File:    NewProjectFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit NewProjectFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, ExtCtrls;

type
  TFrame8 = class(TFrame)
    NewProject_ImageList: TImageList;
    NewApplication_ListView: TListView;
    procedure NewApplication_ListViewDblClick(Sender: TObject);
    procedure NewApplication_ListViewClick(Sender: TObject);
  private
    procedure uncheckOS;
  public

  end;

type
  myAppType = set of (
    atMSDOS, atWin32, atLinux, atAmiga,
    atPascal, atBASIC, atdBASE, atProlog, atcLISP, atAssembler);
var
  appType: myAppType;

implementation

{$R *.dfm}
uses
  EditorForm, ErrorBoxForm;

procedure TFrame8.NewApplication_ListViewDblClick(Sender: TObject);
var
  S: String;
begin
  if NewApplication_ListView.Selected = nil then
  exit;

  if Length(Trim(Form1.ProjectNameEdit.Text)) < 1 then
  begin
    Form1.ProjectNameEdit.Color := clRed;
    Form1.ProjectNameEdit.Font.Color := clYellow;

    ErrorBox.Text('Error: No projectname given.');
    ErrorBox.BringToFront;
    ErrorBox.Show;

    Form1.ProjectNameEdit.SetFocus;
    exit;
  end;

  S := NewApplication_ListView.Selected.Caption;
  if (S = 'Windows 32-Bit App')
  or (S = 'Windows 64-Bit App') then
  begin
    // template code
    with Form1.DFrameComputerOS do
    begin
      if JvCheckBox5.Checked = true then
      begin
        if JvCheckBox10.Checked then appType := [atWin32, atPascal ] else
        if JvCheckBox11.Checked then appType := [atWin32, atBASIC  ] else
        if JvCheckBox12.Checked then appType := [atWin32, atdBASE  ] else
        if JvCheckBox15.Checked then appType := [atWin32, atProlog ] else
        if JvCheckBox13.Checked then appType := [atWin32, atcLISP  ] else
        if JvCheckBox14.Checked then appType := [atWin32, atAssembler ] ;

        Form1.CreateSimpleProgram( appType );
        exit;
      end else
      raise Exception.Create('not supported');
    end;
  end else
  if S = 'MS-DOS 32-Bit App' then
  begin
    // template code
    with Form1.DFrameComputerOS do
    begin
      if JvCheckBox6.Checked = true then
      begin
        if JvCheckBox10.Checked then appType := [atMSDOS, atPascal ] else
        if JvCheckBox11.Checked then appType := [atMSDOS, atBASIC  ] else
        if JvCheckBox12.Checked then appType := [atMSDOS, atdBASE  ] else
        if JvCheckBox15.Checked then appType := [atMSDOS, atProlog ] else
        if JvCheckBox13.Checked then appType := [atMSDOS, atcLISP  ] else
        if JvCheckBox14.Checked then appType := [atMSDOS, atAssembler ];

        Form1.CreateSimpleProgram( appType );
        exit;
      end else
      raise Exception.Create('not supported');
    end;
  end;
end;

procedure TFrame8.uncheckOS;
begin
//  Form1.DFrameComputerOS.JvCheckBox1.Checked := false;
//  Form1.DFrameComputerOS.JvCheckBox2.Checked := false;
//  Form1.DFrameComputerOS.JvCheckBox3.Checked := false;

  with Form1.DFrameComputerOS do
  begin
    JvCheckBox4.Checked := false;
    JvCheckBox5.Checked := false;
    JvCheckBox6.Checked := false;
    JvCheckBox7.Checked := false;
    JvCheckBox8.Checked := false;
  end;
end;

procedure TFrame8.NewApplication_ListViewClick(Sender: TObject);
var
  S: String;
  procedure nyi;
  begin
    ErrorBox.Text('Information: not yet implemented.');
    ErrorBox.BringToFront;
    ErrorBox.Show;
  end;
begin
  if NewApplication_ListView.Selected = nil then
  exit;

  S := NewApplication_ListView.Selected.Caption;
  if (S = 'Windows 32-Bit App')
  or (S = 'Windows 64-Bit App') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox5.Checked := true;
  end else
  if (S = 'MS-DOS 32-Bit App') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox6.Checked := true;
  end else
  if (S = 'Linux 32-Bit') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox7.Checked := true;
    nyi;
  end else
  if (S = 'Amiga 500') then
  begin
    uncheckOS;
    Form1.DFrameComputerOS.JvCheckBox8.Checked := true;
    nyi;
  end else
  begin
    uncheckOS;
    nyi;
  end;
end;

end.
