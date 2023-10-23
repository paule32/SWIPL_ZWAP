// -------------------------------------------------------------------
// File:    C64DrivesFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit C64DrivesFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvExControls, JvArrowButton, Menus, JvMenus, ImgList, StdCtrls;

type
  TFrame7 = class(TFrame)
    ScrollBox1: TScrollBox;
    ImageList1: TImageList;
    PopupMenu_Datasette: TJvPopupMenu;
    PopupMenu_Floppy: TJvPopupMenu;
    JvArrowButton1: TJvArrowButton;
    JvArrowButton2: TJvArrowButton;
    GameA1: TMenuItem;
    GameB1: TMenuItem;
    GameC1: TMenuItem;
    PopupMenu_C64Floppy: TMenuItem;
    ProgramB1: TMenuItem;
    ProgramC1: TMenuItem;
    ImageList2: TImageList;
    Edit1: TEdit;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
