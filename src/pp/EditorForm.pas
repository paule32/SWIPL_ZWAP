unit EditorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvMenus, Menus, SynEdit, SynMemo, ExtCtrls, ToolWin,
  JvGradientCaption, JvDialogs, SynEditHighlighter, SynHighlighterGeneral,
  JvExControls, JvSpeedButton, JvxCheckListBox, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    JvGradientCaption1: TJvGradientCaption;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    SynMemo1: TSynMemo;
    JvMainMenu1: TJvMainMenu;
    JvXPMenuItemPainter1: TJvXPMenuItemPainter;
    kkkkk1: TMenuItem;
    ToolBar1: TToolBar;
    Edit1: TMenuItem;
    Options1: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    JvPopupMenu1: TJvPopupMenu;
    New2: TMenuItem;
    N2: TMenuItem;
    Exit2: TMenuItem;
    N3: TMenuItem;
    LoadfromFile1: TMenuItem;
    SavetoFile1: TMenuItem;
    emplate1: TMenuItem;
    Application1: TMenuItem;
    Module1: TMenuItem;
    JvPopupMenu2: TJvPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    JvOpenDialog1: TJvOpenDialog;
    SynGeneralSyn1: TSynGeneralSyn;
    Panel3: TPanel;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton3: TJvSpeedButton;
    JvSaveDialog1: TJvSaveDialog;
    JvStatusBox: TJvxCheckListBox;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    JvOpenDialog2: TJvOpenDialog;
    procedure kkkkk1Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure Exit2Click(Sender: TObject);
    procedure LoadfromFile1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvSpeedButton3Click(Sender: TObject);
    procedure JvSpeedButton2Click(Sender: TObject);
    procedure SavetoFile1Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure JvSpeedButton1Click(Sender: TObject);
    procedure SynMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FFileName: String;
    FCompileFlag: Boolean;

    procedure SaveFile;
    procedure LoadFile;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses AboutForm;

function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;

  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;

    Handle  :=  CreateProcess(
                nil, PChar('cmd.exe /C ' + CommandLine),
                nil, nil, True, 0, nil,
                PChar(WorkDir), SI, PI);

    CloseHandle(StdOutPipeWrite);
    if Handle then
    try
      repeat
        WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
        if BytesRead > 0 then
        begin
          Buffer[BytesRead] := #0;
          Result := Result + Buffer;
        end;
      until not WasOK or (BytesRead = 0);
      WaitForSingleObject(PI.hProcess, INFINITE);
    finally
      CloseHandle(PI.hThread);
      CloseHandle(PI.hProcess);
    end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

procedure TForm1.kkkkk1Click(Sender: TObject);
begin
  JvPopupMenu1.Popup(
  Mouse.CursorPos.X,
  Mouse.CursorPos.Y);
end;

procedure TForm1.Help1Click(Sender: TObject);
begin
  JvPopupMenu2.Popup(
  Mouse.CursorPos.X,
  Mouse.CursorPos.Y);
end;

procedure TForm1.Exit2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.LoadfromFile1Click(Sender: TObject);
begin
  if not JvOpenDialog1.Execute then
  begin
    ShowMessage('Error during open a file.');
    exit;
  end;

  FFileName := JvOpenDialog1.FileName;
  TabSheet1.Caption := ExtractFileName(FFileName);
  LoadFile;
end;

procedure TForm1.LoadFile;
begin
  JvStatusBox.Items.Insert(0,DateTimeToStr(Now) + ' ' +
  'load: ' + FFileName);

  SynMemo1.Lines.Clear;
  SynMemo1.Lines.LoadFromFile(FFileName);
  SynMemo1.SetFocus;
end;

procedure TForm1.SavetoFile1Click(Sender: TObject);
begin
  SaveFile;
end;

procedure TForm1.SaveFile;
  var s1,s0: String;
begin
  FFileName := TabSheet1.Caption;
  if Length(Trim(Edit2.Text)) < 3 then
  begin
    ShowMessage('output file editfield must not be empty.');
    exit;
  end;

  if SynMemo1.Modified then
  begin
    if not JvSaveDialog1.Execute then
    begin
      ShowMessage('Error during save a file.');
      exit;
    end;

    FFileName := JvSaveDialog1.FileName;

    if FileExists(FFileName) then
    begin
      if Application.MessageBox(PChar(
      'File already exists:'    + #13#10 +
      FFileName                 + #13#10 +
      'would you overwrite it ?'),PChar(
      'Warning'), MB_YESNO) = ID_NO then // todo
      begin
        Application.MessageBox(PChar(
        'File not saved.'       + #13#10 +
        'Compile run aborted.'),  PChar(
        'Information'), MB_OK);
        exit;
      end;
    end;

    FFileName := JvSaveDialog1.FileName;
    TabSheet1.Caption := ExtractFileName(FFileName);

    JvStatusBox.Items.Insert(0,DateTimeToStr(Now) +
    ': save ' + FFileName);

    SynMemo1.Modified := false;
    SynMemo1.Lines.SaveToFile(FFileName);
    SynMemo1.SetFocus;
  end;

  if FCompileFlag then
  begin
    JvStatusBox.Items.Insert(0, DateTimeToStr(Now) + ': ' +
    'compile file: ' +
    FFileName);

    s0 :=
    ExtractFilePath(Application.ExeName) +
    'prolog32.exe ' +
    FFileName       + ' ' +
    Edit2.Text      ;
    ShowMessage(s0);

    s1 := GetDosOutput(s0,'E:');
    ShowMessage(s1);

    FCompileFlag := false;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SynMemo1.Lines.Clear;
  FCompileFlag := true;

  SynMemo1.Modified := false;

  JvStatusBox.Items.Clear;
  JvStatusBox.Items.Add(DateTimeToStr(Now) + ': started...');
end;

procedure TForm1.JvSpeedButton3Click(Sender: TObject);
begin
  LoadfromFile1Click(Sender);
end;

procedure TForm1.JvSpeedButton2Click(Sender: TObject);
begin
  SaveToFile1Click(Sender);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  Application.CreateForm(TOKRightDlg, OKRightDlg);
  OKRightDlg.ShowModal;
  OKRightDlg.Free;
end;

procedure TForm1.JvSpeedButton1Click(Sender: TObject);
begin
  JvStatusBox.Items.Insert(0, DateTimeToStr(Now) + ' compile file: ' +
  FFileName);
end;

procedure TForm1.SynMemo1KeyDown(
  Sender: TObject; var Key: Word;
  Shift : TShiftState);
begin
  if Key = VK_F1 then
  begin
    ShowMessage('Help is not implemented, yet.');
    exit
  end;

  if Key = VK_F2 then
  begin
    FCompileFlag := true;
    SaveFile;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  JvSaveDialog1.FileName := TabSheet1.Caption;
  SynMemo1.SetFocus;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  SynMemo1.SetFocus;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if not JvOpenDialog2.Execute then
  begin
    ShowMessage('error during set output file.');
    exit;
  end;
  Edit2.Text := JvOpenDialog2.FileName;
end;

end.
