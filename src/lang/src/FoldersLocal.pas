// -------------------------------------------------------------------
// File:    FolderLocal.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit FoldersLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ImgList, StdCtrls, JvExStdCtrls, JvListBox, JvDriveCtrls,
  ExtCtrls, ComCtrls, Buttons;

type
  TFrame9 = class(TFrame)
    UserHomeFolder: TTreeView;
    Splitter1: TSplitter;
    JvDriveList1: TJvDriveList;
    ImageList1: TImageList;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure JvDriveList1DblClick(Sender: TObject);
    procedure UserHomeFolderDblClick(Sender: TObject);
  private
    procedure FilteredTV(theDir: string;ext:String;startNode:tTreeNode);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame9.JvDriveList1DblClick(Sender: TObject);
var
  S: String;
begin
  S := JvDriveList1.Drive;
  UserHomeFolder.Items.Clear;
  UserHomeFolder.Items.BeginUpdate;
  FilteredTV(S + ':\','pro',nil);
  UserHomeFolder.Items.EndUpdate;
end;

procedure TFrame9.FilteredTV(theDir: string;ext:String;startNode:tTreeNode);
var
  sr: TSearchRec;
  FileAttrs: Integer;
  theNode : tTreeNode;
begin
  if copy(ext,1,1)<>'.' then ext := '.'+ext;
  FileAttrs := faAnyfile;
  if startNode = nil then
     StartNode := UserHomeFolder.Items.AddFirst(nil,theDir);
  if FindFirst(theDir+'\*.*', FileAttrs, sr) = 0 then
  begin
    theNode := UserHomeFolder.Items.AddChild(StartNode,'..');
    repeat
      if (sr.Attr=faDirectory) and (copy(sr.Name,1,1)<>'.')
      then
      begin
        theNode := UserHomeFolder.Items.AddChild(StartNode,sr.name);
        theNode.ImageIndex := 0;
      end else
      if ((sr.Attr and FileAttrs) = sr.Attr) and (ExtractFileExt(sr.name) = ext) then
      begin
        theNode := UserHomeFolder.Items.AddChild(StartNode,sr.name);
        theNode.ImageIndex := -1;   // No image for files
      end;
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  UserHomeFolder.FullExpand;
end;

procedure TFrame9.UserHomeFolderDblClick(Sender: TObject);
var
  cBuild : string;
  theNode : tTreeNode;
begin
  if UserHomeFolder.Selected <> nil then
  begin
    theNode := UserHomeFolder.Selected;
    cBuild := theNode.Text;
    while theNode.Parent <> nil do
    begin
      cBuild := theNode.Parent.Text+'\'+cBuild;
      theNode := theNode.Parent;
    end;
    cBuild := stringReplace(cBuild,'\\','\',[rfReplaceAll]);

    UserHomeFolder.Items.Clear;
    UserHomeFolder.Items.BeginUpdate;
    FilteredTV(cBuild,'*',nil);
    UserHomeFolder.Items.EndUpdate;
  end;
end;

end.
