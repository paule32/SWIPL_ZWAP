// -------------------------------------------------------------------
// File:    EditorFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit EditorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, ExtCtrls, SynEdit,
  ComCtrls, Menus, JvMenus, JvExComCtrls, SynEditHighlighter,
  SynHighlighterGeneral, SynHighlighterPas, JvComponentBase, JvInterpreter,
  JvInterpreterFm, InterpreterClasses, SynEditCodeFolding;

type
  TFrame19 = class(TFrame)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    SynEdit1: TSynEdit;
    Panel1: TPanel;
    JvImgBtn1: TJvImgBtn;
    CopyButton: TJvImgBtn;
    PasteButton: TJvImgBtn;
    JvImgBtn4: TJvImgBtn;
    SaveButton: TJvImgBtn;
    SaveDialog1: TSaveDialog;
    OpenButton: TJvImgBtn;
    OpenDialog1: TOpenDialog;
    JvPopupMenu1: TJvPopupMenu;
    Run1: TMenuItem;
    N1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N2: TMenuItem;
    SelectAll1: TMenuItem;
    HighPascal: TSynGeneralSyn;
    HighBasic: TSynGeneralSyn;
    HighDBase: TSynGeneralSyn;
    HighAssembler: TSynGeneralSyn;
    HighCLISP: TSynGeneralSyn;
    HighPas: TSynPasSyn;
    SynPasSyn1: TSynPasSyn;
    JvInterpreterFm1: TJvInterpreterFm;
    procedure JvImgBtn1Click(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure JvImgBtn4Click(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure OpenButtonClick(Sender: TObject);

    procedure JvImgBtn1KeyDown  (Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CopyButtonKeyDown (Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PasteButtonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvImgBtn4KeyDown  (Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OpenButtonKeyDown (Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SaveButtonKeyDown (Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SynEdit1KeyDown   (Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure Run1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  EditorForm, ErrorBoxForm, NewProjectFrame, InfoBoxForm;

procedure TFrame19.JvImgBtn1Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
  SynEdit1.ClearSelection;
end;

procedure TFrame19.CopyButtonClick(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
  SynEdit1.PasteFromClipboard;
end;

procedure TFrame19.PasteButtonClick(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;

procedure TFrame19.JvImgBtn4Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;

procedure TFrame19.SaveButtonClick(Sender: TObject);
begin
  if SynEdit1.Modified then
  begin
    if not(SaveDialog1.Execute) then
    begin
      ShowMessage('Error during save source file occur.');
      exit;
    end else
    begin
      SynEdit1.Lines.SaveToFile(SaveDialog1.FileName);
    end;
  end;
end;

procedure TFrame19.OpenButtonClick(Sender: TObject);
begin
  SaveButtonClick(Sender);
  if not(OpenDialog1.Execute) then
  begin
    ShowMessage('Error during open source file occur.');
    exit;
  end else
  begin
    SynEdit1.Lines.Clear;
    SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName)
  end;
end;

procedure TFrame19.JvImgBtn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.CopyButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.PasteButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.JvImgBtn4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.OpenButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

procedure TFrame19.SaveButtonKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
  end;
end;

type
  TWriteTextToConsole = procedure(m: PChar);
procedure WriteToMyConsole(m: PChar);
begin
  ShowMessage('---> ' + string(m));
end;
//var
//  export_WriteToMyConsole: procedure(callback: TWriteTextToConsole); cdecl;

procedure StartCompile(aType: myAppType);
var
  callParser:          function(fileSrc, tempDir: PChar): BOOL; cdecl;
  callParserGetLine  : function: Integer; cdecl;
  callParserGetLines : function: Integer; cdecl;
  callParserCloseFile: procedure; cdecl;
  callExecute        : procedure; cdecl;
var
  export_ShowParserErrorText: procedure( m: Pchar) cdecl;
  export_WriteTextToConsole : procedure( m: Pchar) cdecl;

  Handle : THandle;
  res: String;
  sl: TStrings;

  InterpreterProgram: TJvInterpreterProgram;

  procedure ShowParserErrorText(m: PChar);
  begin
    raise Exception.Create(PChar(m));
  end;

  procedure WriteTextToConsole( m: Pchar );
  begin
//    Form1.Console1.WriteLn(m);
  end;

begin
//  if not(Form1.DFrameEditor.SynEdit1.Modified) then exit;
  if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
  begin
    if not(Form1.SaveDialog1.Execute) then
    begin
      ErrorBox.Text('something went wrong at open file:' + #13 + Form1.SaveDialog1.FileName);
      ErrorBox.BringToFront;
      ErrorBox.Show;

      Form1.has_errors := true;
      exit;
    end;
  end;

  if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
     Form1.DFrameEditor.TabSheet1.Caption := Form1.SaveDialog1.FileName;

  sl := TStringList.Create;
  sl.Add(Form1.DFrameEditor.SynEdit1.Lines.Text);
  sl.SaveToFile(Form1.SaveDialog1.FileName);
  sl.Free;

  Form1.DFrameEditor.SynEdit1.Modified := false;
  Form1.has_errors := false;

  Form1.buildListBox.Items.Clear;

  DateTimeToString(res,'',now);
  Form1.buildListBox.Items.Insert(0,res + ': ' + 'initialize...');

  Form1.MainPageControl.ActivePage := Form1.ConsoleTabSheet;
  Form1.DblClickConsole;
//  Form1.Console1.SetFocus;

  if atMSDOS in aType then
  begin
    if atPascal in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighPascal;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLdos32Pascal.dll'));
          if Handle = 0 then
          raise Exception.Create('dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load pascalDSL.dll: OK.');

          callParser          := GetProcAddress(Handle,'_yy_pascal_dos32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_pascal_dos32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_pascal_dos32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_pascal_dos32_lex_getlines');

          export_ShowParserErrorText := GetProcAddress(Handle,'_import_func_ShowParserErrorText');
          export_WriteTextToConsole  := GetProcAddress(Handle,'_import_func_WriteTextToConsole');

          export_ShowParserErrorText( @export_ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atBASIC in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighBasic;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLdos32BASIC.dll'));
          if Handle = 0 then
          raise Exception.Create('basicDSLdos32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load dBaseDSL.dll: OK.');

          callParser          := GetProcAddress(Handle,'_yy_basic_dos32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_basic_dos32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_basic_dos32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_basic_dos32_lex_getlines');

          export_ShowParserErrorText := GetProcAddress(Handle,'_yy_basic_dos32_lex_parser_error');

          export_ShowParserErrorText( @ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atdBASE in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighDBase;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLdos32DBase.dll'));
          if Handle = 0 then
          raise Exception.Create('dBaseDSLdos32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load dBaseDSL.dll: OK.');

          callExecute         := GetProcAddress(Handle,'_yy_dbase_win32_run_code');

          callParser          := GetProcAddress(Handle,'_yy_dbase_dos32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_dbase_dos32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_dbase_dos32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_dbase_dos32_lex_getlines');
          export_ShowParserErrorText := GetProcAddress(Handle,'_yy_dbase_dos32_lex_parser_error');

          export_ShowParserErrorText( @ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              callExecute;
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atcLisp in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighCLISP;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLdos32cLISP.dll'));
          if Handle = 0 then
          raise Exception.Create('cLispDSLdos32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load clispDSL.dll: OK.');

          callParser          := GetProcAddress(Handle,'_yy_clisp_dos32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_clisp_dos32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_clisp_dos32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_clisp_dos32_lex_getlines');
          export_ShowParserErrorText := GetProcAddress(Handle,'_yy_clisp_dos32_lex_parser_error');


          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atAssembler in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighAssembler;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLdos32Assembler.dll'));
          if Handle = 0 then
          raise Exception.Create('assemblerDSLdos32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load assemblerDSL.dll: OK.');

          callParser          := GetProcAddress(Handle,'_yy_assembler_dos32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_assembler_dos32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_assembler_dos32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_assembler_dos32_lex_getlines');
          export_ShowParserErrorText := GetProcAddress(Handle,'_yy_assembler_dos32_lex_parser_error');

          export_ShowParserErrorText( @ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end;
  end else
  if atWin32 in aType then
  begin
    if atPascal in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighPascal;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLwin32Pascal.dll'));
          if Handle = 0 then
          raise Exception.Create('pascalDSLwin32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load pascalDSL.dll: OK.');

          callExecute         := GetProcAddress(Handle,'_yy_pascal_win32_run_code');
          callParser          := GetProcAddress(Handle,'_yy_pascal_win32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_pascal_win32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_pascal_win32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_pascal_win32_lex_getlines');

          export_ShowParserErrorText := GetProcAddress(Handle,'_import_func_ShowParserErrorText');
          export_WriteTextToConsole  := GetProcAddress(Handle,'_import_func_WriteTextToConsole');

          export_ShowParserErrorText( @ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );


          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );

              callExecute;
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atBASIC in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighBasic;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLwin32BASIC.dll'));
          if Handle = 0 then
          raise Exception.Create('basicDSLwin32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load basicDSL.dll: OK.');

          callExecute         := GetProcAddress(Handle,'_yy_basic_win32_run_code');
          callParser          := GetProcAddress(Handle,'_yy_basic_win32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_basic_win32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_basic_win32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_basic_win32_lex_getlines');
          export_ShowParserErrorText     := GetProcAddress(Handle,'_yy_basic_win32_lex_parser_error');

          export_ShowParserErrorText( @ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );


          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atdBASE in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighDBase;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLwin32DBase.dll'));
          if Handle = 0 then
          raise Exception.Create('dBaseDSLwin32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load dBaseDSL.dll: OK.');

          callExecute         := GetProcAddress(Handle,'_yy_dbase_win32_run_code');

          callParser          := GetProcAddress(Handle,'_yy_dbase_win32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_dbase_win32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_dbase_win32_lex_get_lin');
          callParserGetLines  := GetProcAddress(Handle,'_yy_dbase_win32_lex_getlines');

          export_ShowParserErrorText := GetProcAddress(Handle,'_import_func_ShowParserErrorText');
          export_WriteTextToConsole  := GetProcAddress(Handle,'_import_func_WriteTextToConsole');

          export_ShowParserErrorText(@ShowParserErrorText);  // hook: yyerror
          export_WriteTextToConsole (@WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );

              callExecute;
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
(*
              if not(InterpreterInitialized) then
              begin
                initInterpreter;
                InterpreterInitialized := true;
              end;
*)

              if not(Assigned(InterpreterProgram)) then
              InterpreterProgram := TJvInterpreterProgram.Create(nil);
              InterpreterProgram.Pas.Clear;
              InterpreterProgram.Run;
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        if Assigned(InterpreterProgram) then
        begin
          InterpreterProgram.Pas.Clear;
          InterpreterProgram.Free;
        end;

        // close dll handle
        FreeLibrary(Handle);
        Handle := 0;
      end;
    end else
    if atProlog in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighDBase;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLwin32Prolog.dll'));
          if Handle = 0 then
          raise Exception.Create('DSLwin32Prolog.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load PrologDSL.dll: OK.');

          callExecute         := GetProcAddress(Handle,'_yy_prolog_win32_run_code');

          callParser          := GetProcAddress(Handle,'_yy_prolog_win32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_prolog_win32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_prolog_win32_lex_get_lin');
          callParserGetLines  := GetProcAddress(Handle,'_yy_prolog_win32_lex_getlines');

          export_ShowParserErrorText := GetProcAddress(Handle,'_import_func_ShowParserErrorText');
          export_WriteTextToConsole  := GetProcAddress(Handle,'_import_func_WriteTextToConsole');

          export_ShowParserErrorText(@ShowParserErrorText);  // hook: yyerror
          export_WriteTextToConsole (@WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
showmessage('start');
              callExecute;
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atcLisp in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighCLISP;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLwin32cLISP.dll'));
          if Handle = 0 then
          raise Exception.Create('cLispDSLwin32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load cLispDSL.dll: OK.');

          callParser          := GetProcAddress(Handle,'_yy_clisp_win32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_clisp_win32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_clisp_win32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_clisp_win32_lex_getlines');
          export_ShowParserErrorText     := GetProcAddress(Handle,'_yy_clisp_win32_lex_parser_error');


          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end else
    if atAssembler in aType then
    begin
      try
        try
          Form1.DFrameEditor.SynEdit1.Highlighter :=
          Form1.DFrameEditor.HighAssembler;

          Handle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + '\parser\DSLwin32Assembler.dll'));
          if Handle = 0 then
          raise Exception.Create('assemblerDSLwin32.dll not loaded.');

          DateTimeToString(res,'',now);
          Form1.buildListBox.Items.Insert(0,res + ': load assemblerDSL.dll: OK.');

          callParser          := GetProcAddress(Handle,'_yy_assembler_win32_lex_main');
          callParserCloseFile := GetProcAddress(Handle,'_yy_assembler_win32_lex_close');
          callParserGetLine   := GetProcAddress(Handle,'_yy_assembler_win32_lex_get_line');
          callParserGetLines  := GetProcAddress(Handle,'_yy_assembler_win32_lex_getlines');
          export_ShowParserErrorText     := GetProcAddress(Handle,'_yy_assembler_win32_lex_parser_error');

          export_ShowParserErrorText( @ShowParserErrorText );
          export_WriteTextToConsole ( @WriteTextToConsole );

          if @callParser <> nil then
          begin
            try
              if Form1.DFrameEditor.TabSheet1.Caption = 'Unamed' then
              begin
                Form1.DFrameEditor.SynEdit1.Modified := true;
                Form1.JvSpeedButton2Click(nil);
              end;
              callParser(
                PChar(Form1.DFrameEditor.TabSheet1.Caption),
                PChar(Form1.IniFile_AsmOutput)
              );
              InfoBox.Text('Compile OK' + #13#10 +
              'Lines: ' + IntToStr(callParserGetLines-1));
            except
              on E: Exception do
              begin
                callParserCloseFile;
                ErrorBox.Text('Exception:' + #13 + E.Message);
                ErrorBox.BringToFront;
                ErrorBox.Show;
              end;
            end;
          end;
        except
          on E: Exception do
          begin
            FreeLibrary(Handle);
            Handle := 0;
            ErrorBox.Text('Exception occur:' + #13 + E.Message);
            exit;
          end;
        end;
      finally
        FreeLibrary(Handle);
//        Handle := 0;
      end;
    end;
  end;
end;

procedure TFrame19.SynEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    ShowMessage('todo: help implementation');
    exit;
  end else
  if key = VK_F2 then
  begin
    with Form1.DFrameComputerOS do
    begin
      if JvCheckBox10.Checked then appType := appType + [atPascal] else
      if JvCheckBox11.Checked then appType := appType + [atBASIC ] else
      if JvCheckBox12.Checked then appType := appType + [atDBase ] else
      if JvCheckBox15.Checked then appType := appType + [atProlog] else
      if JvCheckBox13.Checked then appType := appType + [atCLISP ] else
      if JvCheckBox14.Checked then appType := appType + [atAssembler];

      if JvCheckBox5.Checked then appType  := appType + [atWin32] else
      if JvCheckBox6.Checked then appType  := appType + [atMSDos] else
      if JvCheckBox7.Checked then appType  := appType + [atLinux] else
      if JvCheckBox8.Checked then appType  := appType + [atAmiga] ;
    end;

    StartCompile(appType);
    exit;
  end;

  if [ssCtrl] = Shift then
  begin
    if key = Ord('O') then begin OpenButtonClick(Sender);  end else
    if key = Ord('S') then begin SaveButtonClick(Sender);  end else
    if key = Ord('C') then begin ShowMessage('ooo');CopyButtonClick(Sender);  end else
    if key = Ord('A') then begin SynEdit1.SelectAll;       end else
    if key = Ord('R') then begin SynEdit1.Redo;            end else
    if key = Ord('U') then begin SynEdit1.Undo;            end else
    if key = Ord('V') then begin PasteButtonClick(Sender); end ;
    key := 0;
  end;
end;

procedure TFrame19.Run1Click(Sender: TObject);
var
  shift: TShiftState;
  key: Word;
begin
  key := VK_F2;
  SynEdit1KeyDown(Sender,key,shift);
end;

procedure TFrame19.Cut1Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
  SynEdit1.ClearSelection;
end;

procedure TFrame19.Copy1Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;

procedure TFrame19.Paste1Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;

procedure TFrame19.Delete1Click(Sender: TObject);
begin
  SynEdit1.ClearSelection;
end;

procedure TFrame19.SelectAll1Click(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;

end.

