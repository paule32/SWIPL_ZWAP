unit StandardMenuFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, JvExControls, JvSpeedButton, CtrlMenuBarButton, ToolWin,
  ComCtrls, ExtCtrls, Menus, JvMenus, JvArrowButton, StdCtrls,
  JvExStdCtrls, JvButton, JvCtrls;

type
  TFrame26 = class(TFrame)
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    Panel2: TPanel;
    MenuBarButton_File: TJvImgBtn;
    MenuBarButton_Edit: TJvImgBtn;
    CtrlMenuBarButton1: TJvImgBtn;
    MenuBarButton_Tools: TJvImgBtn;
    MenuBarButton_Help: TJvImgBtn;
    CtrlMenuBarButton2: TJvImgBtn;
    MenuBarButton_Window: TJvImgBtn;
    MenuBarButton_DataBase: TJvImgBtn;
    CtrlMenuBarButton3: TJvImgBtn;
    Panel3: TPanel;
    StartCompile: TJvSpeedButton;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton3: TJvSpeedButton;
    PopupMenu_File: TJvPopupMenu;
    PopupMenu_File_New: TMenuItem;
    PopupMenu_File_New_Application: TMenuItem;
    Windows32Bit1: TMenuItem;
    Windows64Bit1: TMenuItem;
    N18: TMenuItem;
    MSDOS32Bit1: TMenuItem;
    PopupMenu_File_New_Library: TMenuItem;
    N7: TMenuItem;
    PopupMenu_File_New_Other: TMenuItem;
    PopupMenu_File_Open: TMenuItem;
    N1: TMenuItem;
    PopupMenu_File_Save: TMenuItem;
    PopupMenu_File_SaveAs: TMenuItem;
    N2: TMenuItem;
    PopupMenu_File_Exit: TMenuItem;
    PopupMenu_Edit: TJvPopupMenu;
    PopupMenu_Edit_Undo: TMenuItem;
    N3: TMenuItem;
    PopupMenu_Edit_SelAll: TMenuItem;
    N5: TMenuItem;
    PopupMenu_Edit_Cut: TMenuItem;
    PopupMenu_Edit_Copy: TMenuItem;
    PopupMenu_Edit_Paste: TMenuItem;
    N4: TMenuItem;
    PopupMenu_Edit_Delete: TMenuItem;
    PopupMenu_Tools: TJvPopupMenu;
    IDE1: TMenuItem;
    EnvironmentOptions1: TMenuItem;
    EditorOptions1: TMenuItem;
    heme1: TMenuItem;
    light1: TMenuItem;
    dark1: TMenuItem;
    ImageEditor1: TMenuItem;
    ConfigureTools1: TMenuItem;
    N12: TMenuItem;
    procedure PopupMenu_File_NewClick(Sender: TObject);
    procedure PopupMenu_File_OpenClick(Sender: TObject);
    procedure PopupMenu_File_SaveAsClick(Sender: TObject);
    procedure PopupMenu_File_ExitClick(Sender: TObject);
    procedure EnvironmentOptions1Click(Sender: TObject);
    procedure EditorOptions1Click(Sender: TObject);
    procedure light1Click(Sender: TObject);
    procedure dark1Click(Sender: TObject);
    procedure ImageEditor1Click(Sender: TObject);
    procedure PopupMenu_File_New_OtherClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  EditorForm;

procedure TFrame26.PopupMenu_File_NewClick(Sender: TObject);
begin
  Form1.DFrameEditor.TabSheet1.Caption := 'Unamed';
  Form1.DFrameEditor.SynEdit1.Lines.Clear;
end;

procedure TFrame26.PopupMenu_File_OpenClick(Sender: TObject);
begin
  Form1.JvSpeedButton1Click(Sender);
end;

procedure TFrame26.PopupMenu_File_SaveAsClick(Sender: TObject);
begin
  Form1.PopupMenu_File_SaveAsClick(Sender);
end;

procedure TFrame26.PopupMenu_File_ExitClick(Sender: TObject);
begin
  Form1.PopupMenu_File_ExitClick(Sender);
end;

procedure TFrame26.EnvironmentOptions1Click(Sender: TObject);
begin
  Form1.EnvironmentOptions1Click(Sender);
end;

procedure TFrame26.EditorOptions1Click(Sender: TObject);
begin
  Form1.EditorOptions1Click(Sender);
end;

procedure TFrame26.light1Click(Sender: TObject);
begin
  Form1.light1Click(Sender);
end;

procedure TFrame26.dark1Click(Sender: TObject);
begin
  Form1.dark1Click(Sender);
end;

procedure TFrame26.ImageEditor1Click(Sender: TObject);
begin
  Form1.ImageEditor1Click(Sender);
end;

procedure TFrame26.PopupMenu_File_New_OtherClick(Sender: TObject);
begin
  Form1.PopupMenu_File_New_OtherClick(Sender);
end;

end.
