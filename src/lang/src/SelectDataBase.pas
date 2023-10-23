// -------------------------------------------------------------------
// File:    SelectDatabase.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SelectDataBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, JvExControls, JvLED, Buttons, ExtCtrls,
  IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox2: TListBox;
    EditPort: TEdit;
    EditUsername: TEdit;
    EditPassword: TEdit;
    TabSheet2: TTabSheet;
    ScrollBox2: TScrollBox;
    Memo1: TMemo;
    Button4: TButton;
    TabSheet3: TTabSheet;
    ScrollBox3: TScrollBox;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    ScrollBox4: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    Label6: TLabel;
    EditRootDomain: TEdit;
    Label7: TLabel;
    EditWebSiteName: TEdit;
    Label8: TLabel;
    EditOrganizationName: TEdit;
    Label9: TLabel;
    EditCountry: TEdit;
    Label10: TLabel;
    EditLocation: TEdit;
    Label11: TLabel;
    EditCAname: TEdit;
    Label12: TLabel;
    CAstartDate: TDateTimePicker;
    CAendDate: TDateTimePicker;
    Label13: TLabel;
    CreateDomainButton: TButton;
    CreateCAbutton: TButton;
    LEDcerts: TJvLED;
    LEDdns: TJvLED;
    LEDdnsLabel: TLabel;
    LEDcertLabel: TLabel;
    LEDApacheLabel: TLabel;
    LEDapache: TJvLED;
    LEDTerminalServerLabel: TLabel;
    LEDTerminalServer: TJvLED;
    Label15: TLabel;
    DownloadDNSbutton: TButton;
    DownloadApacheButton: TButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    LEDdnsDownload: TJvLED;
    LEDApacheDownload: TJvLED;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    DownloadOpenSSLbutton: TButton;
    ProgressBar3: TProgressBar;
    LEDOpenSSLdownload: TJvLED;
    Panel1: TPanel;
    CheckServerStatesButton: TButton;
    Label14: TLabel;
    Edit1: TEdit;
    Label16: TLabel;
    Edit2: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Image2: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DownloadDNSbuttonClick(Sender: TObject);
    procedure LEDdnsLabelMouseEnter(Sender: TObject);
    procedure LEDdnsLabelMouseLeave(Sender: TObject);
    procedure LEDcertLabelMouseEnter(Sender: TObject);
    procedure LEDcertLabelMouseLeave(Sender: TObject);
    procedure LEDApacheLabelMouseEnter(Sender: TObject);
    procedure LEDApacheLabelMouseLeave(Sender: TObject);
    procedure LEDTerminalServerLabelMouseEnter(Sender: TObject);
    procedure LEDTerminalServerLabelMouseLeave(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure DownloadApacheButtonClick(Sender: TObject);
    procedure DownloadOpenSSLbuttonClick(Sender: TObject);
    procedure EditRootDomainEnter(Sender: TObject);
    procedure EditRootDomainExit(Sender: TObject);
    procedure EditOrganizationNameEnter(Sender: TObject);
    procedure EditOrganizationNameExit(Sender: TObject);
    procedure EditCountryEnter(Sender: TObject);
    procedure EditCountryExit(Sender: TObject);
    procedure EditLocationEnter(Sender: TObject);
    procedure EditLocationExit(Sender: TObject);
    procedure EditWebSiteNameEnter(Sender: TObject);
    procedure EditWebSiteNameExit(Sender: TObject);
    procedure EditCAnameEnter(Sender: TObject);
    procedure EditCAnameExit(Sender: TObject);
    procedure CAstartDateEnter(Sender: TObject);
    procedure CAstartDateExit(Sender: TObject);
    procedure CAendDateEnter(Sender: TObject);
    procedure CAendDateExit(Sender: TObject);
    procedure ListBox1Enter(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure ListBox2Enter(Sender: TObject);
    procedure ListBox2Exit(Sender: TObject);
    procedure EditPortEnter(Sender: TObject);
    procedure EditPortExit(Sender: TObject);
    procedure EditUsernameEnter(Sender: TObject);
    procedure EditUsernameExit(Sender: TObject);
    procedure EditPasswordEnter(Sender: TObject);
    procedure EditPasswordExit(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ExitFlag: Boolean;
    URL     : String;
(*
    procedure IdHTTP1Work(
      Sender   : TObject;
      AWorkMode: TWorkMode; const AWorkCount: Integer);
    procedure IdHTTP2Work(
      Sender   : TObject;
      AWorkMode: TWorkMode; const AWorkCount: Integer);
    procedure IdHTTP3Work(
      Sender   : TObject;
      AWorkMode: TWorkMode; const AWorkCount: Integer);
*)
  end;

var
  Form2: TForm2;

implementation

uses
  GlobalDeclaration, SplashScreen, ResourceStrings;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  ExitFlag := true;

  SplashForm.isExit := true;
  SplashForm.isMemE := true;
  SplashForm.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  ExitFlag := false;

  if ListBox1.Selected[0] = true then usedDataBase := dbBorland   else
  if ListBox1.Selected[1] = true then usedDataBase := dbInterBase else
  if ListBox1.Selected[2] = true then usedDataBase := dbMySQL     else
  begin
    usedDataBase := dbUnknown;
    ShowMessage(rs_no_DatabaseSelected);
    exit;
  end;

  Hide;
  SplashForm.Timer1Timer(Sender);
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  SessionId: DWORD;
begin
  GroupBox1.Caption := GroupBox1.Caption
  + ' SID: '
  + IntToStr(GetCurrentSessionId);

  usedDataBase := dbUnknown;
  URL := 'https://localhost/';

  ExitFlag := true;
end;

// -------------------------------------------------------------------
// try to download DNS Server bind9 ...
// -------------------------------------------------------------------
procedure TForm2.DownloadDNSbuttonClick(Sender: TObject);
var
  URL, S1 : String;
  FileName: String;
//  IdHTTP1 : TIdHTTP;
begin
//  IdHTTP1 := TIdHTTP.Create(nil);
  try
    try
      S1 := ExtractFilePath(Application.ExeName) + '\data';
      if not(DirectoryExists(S1)) then
      CreateDir(S1);

      SaveDialog1.FileName := S1;
      if not(SaveDialog1.Execute) then
      raise Exception.Create(rs_DNS_download_Error);

      FileName := SaveDialog1.FileName;
      URL := 'https://localhost/';

//      FileName := IdHTTP1.Get(URL);
      ShowMessage(FileName);
    except
      on E: Exception do
      begin
        ShowMessage('Exception Error:'
        + #13#10 + 'Classname: ' + E.ClassName
        + #13#10 + 'Message: '   + E.Message);

        ProgressBar1.Position := 0;
        LEDdnsDownload.Status := false;
      end;
    end;
  finally
//    IdHTTP1.Free;
  end;
end;

// -------------------------------------------------------------------
// if download is available, then display the progress of download:
// -------------------------------------------------------------------
(*procedure TForm2.IdHTTP1Work(
  Sender   : TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
 if ProgressBar1.Max > 0 then
    ProgressBar1.Position := (AWorkCount * 100) div
    ProgressBar1.Max;
end;*)

// -------------------------------------------------------------------
// try to download Apache 2.4 WebServer ...
// -------------------------------------------------------------------
procedure TForm2.DownloadApacheButtonClick(Sender: TObject);
var
  S1      : String;
  FileName: String;
//  IdHTTP1 : TIdHTTP;
begin
//  IdHTTP1 := TIdHTTP.Create(nil);
  try
    try
//      IdHTTP1.OnWork := IdHTTP1Work;

      S1 := ExtractFilePath(Application.ExeName) + '\data';
      if not(DirectoryExists(S1)) then
      CreateDir(S1);

      SaveDialog1.FileName := S1;
      if not(SaveDialog1.Execute) then
      raise Exception.Create(rs_DNS_download_Error);

      FileName := SaveDialog1.FileName;
//      FileName := IdHTTP1.Get(URL);

      ShowMessage(FileName);
    except
      on E: Exception do
      begin
        ShowMessage('Exception Error:'
        + #13#10 + 'Classname: ' + E.ClassName
        + #13#10 + 'Message: '   + E.Message);

        ProgressBar2.Position := 0;
        LEDapacheDownload.Status := false;
      end;
    end;
  finally
//    IdHTTP1.Free;
  end;
end;

// -------------------------------------------------------------------
// if download is available, then display the progress of download:
// -------------------------------------------------------------------
(*procedure TForm2.IdHTTP2Work(
  Sender   : TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
 if ProgressBar2.Max > 0 then
    ProgressBar2.Position := (AWorkCount * 100) div
    ProgressBar2.Max;
end;*)

// -------------------------------------------------------------------
// try to download the OpenSSL package and libraries ...
// -------------------------------------------------------------------
procedure TForm2.DownloadOpenSSLbuttonClick(Sender: TObject);
var
  S1      : String;
  FileName: String;
//  IdHTTP1 : TIdHTTP;
begin
//  IdHTTP1 := TIdHTTP.Create(nil);
  try
    try
//      IdHTTP1.OnWork := IdHTTP3Work;

      S1 := ExtractFilePath(Application.ExeName) + '\data';
      if not(DirectoryExists(S1)) then
      CreateDir(S1);

      SaveDialog1.FileName := S1;
      if not(SaveDialog1.Execute) then
      raise Exception.Create(rs_DNS_download_Error);

      FileName := SaveDialog1.FileName;
//      FileName := IdHTTP1.Get(URL);

      ShowMessage(FileName);
    except
      on E: Exception do
      begin
        ShowMessage('Exception Error:'
        + #13#10 + 'Classname: ' + E.ClassName
        + #13#10 + 'Message: '   + E.Message);

        ProgressBar3.Position := 0;
        LEDopenSSLdownload.Status := false;
      end;
    end;
  finally
//    IdHTTP1.Free;
  end;
end;

// -------------------------------------------------------------------
// if download is available, then display progress of download:
// -------------------------------------------------------------------
(*procedure TForm2.IdHTTP3Work(
  Sender   : TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
 if ProgressBar3.Max > 0 then
    ProgressBar3.Position := (AWorkCount * 100) div
    ProgressBar3.Max;
end;
*)
// -------------------------------------------------------------------
// do some make-up on user interface ...
// -------------------------------------------------------------------
procedure TForm2.LEDdnsLabelMouseEnter   (Sender: TObject); begin (Sender as TLabel).Font.Style := [fsUnderline]; end;
procedure TForm2.LEDcertLabelMouseEnter  (Sender: TObject); begin (Sender as TLabel).Font.Style := [fsUnderline]; end;
procedure TForm2.LEDApacheLabelMouseEnter(Sender: TObject); begin (Sender as TLabel).Font.Style := [fsUnderline]; end;
procedure TForm2.LEDTerminalServerLabelMouseEnter(Sender: TObject); begin (Sender as TLabel).Font.Style := [fsUnderline]; end;

procedure TForm2.LEDdnsLabelMouseLeave   (Sender: TObject); begin (Sender as TLabel).Font.Style := []; end;
procedure TForm2.LEDcertLabelMouseLeave  (Sender: TObject); begin (Sender as TLabel).Font.Style := []; end;
procedure TForm2.LEDApacheLabelMouseLeave(Sender: TObject); begin (Sender as TLabel).Font.Style := []; end;


procedure TForm2.LEDTerminalServerLabelMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Style := [];
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not(ExitFlag) then
  begin
    Action := caFree;

    SplashForm.isExit := true;
    SplashForm.isMemE := true;

    SplashForm.Hide;
    SplashForm.Close;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ExitFlag := false;

  if ListBox1.Selected[0] = true then usedDataBase := dbBorland   else
  if ListBox1.Selected[1] = true then usedDataBase := dbInterBase else
  if ListBox1.Selected[2] = true then usedDataBase := dbMySQL     else
  begin
    usedDataBase := dbUnknown;
    ShowMessage(rs_no_DatabaseSelected);
    exit;
  end;

  Hide;
  SplashForm.Timer1Timer(Sender);
end;

procedure TForm2.EditRootDomainExit(Sender: TObject);        begin (Sender as TEdit).Color := clWhite;  end;
procedure TForm2.EditOrganizationNameExit(Sender: TObject);  begin (Sender as TEdit).Color := clWhite;  end;
procedure TForm2.EditCountryExit(Sender: TObject);           begin (Sender as TEdit).Color := clWhite;  end;
procedure TForm2.EditLocationExit(Sender: TObject);          begin (Sender as TEdit).Color := clWhite;  end;
procedure TForm2.EditWebSiteNameExit(Sender: TObject);       begin (Sender as TEdit).Color := clWhite;  end;
procedure TForm2.EditCAnameExit(Sender: TObject);            begin (Sender as TEdit).Color := clWhite;  end;

procedure TForm2.EditRootDomainEnter(Sender: TObject);       begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditOrganizationNameEnter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditCountryEnter(Sender: TObject);          begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditLocationEnter(Sender: TObject);         begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditWebSiteNameEnter(Sender: TObject);      begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditCAnameEnter(Sender: TObject);           begin (Sender as TEdit).Color := clYellow; end;

procedure TForm2.CAstartDateEnter(Sender: TObject); begin (Sender as TDateTimePicker).Color := clYellow; end;
procedure TForm2.CAendDateEnter  (Sender: TObject); begin (Sender as TDateTimePicker).Color := clYellow; end;
procedure TForm2.CAstartDateExit (Sender: TObject); begin (Sender as TDateTimePicker).Color := clWhite; end;
procedure TForm2.CAendDateExit   (Sender: TObject); begin (Sender as TDateTimePicker).Color := clWhite; end;

procedure TForm2.ListBox1Enter(Sender: TObject); begin (Sender as TListBox).Color := clYellow; (Sender as TListBox).Repaint; end;
procedure TForm2.ListBox1Exit (Sender: TObject); begin (Sender as TListBox).Color := clWhite;  (Sender as TListBox).Repaint; end;

procedure TForm2.ListBox2Enter(Sender: TObject); begin (Sender as TListBox).Color := clYellow; (Sender as TListBox).Update; end;
procedure TForm2.ListBox2Exit (Sender: TObject); begin (Sender as TListBox).Color := clWhite;  (Sender as TListBox).Update; end;

procedure TForm2.EditPortEnter    (Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditUsernameEnter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TForm2.EditPasswordEnter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;

procedure TForm2.EditPortExit     (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TForm2.EditUsernameExit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TForm2.EditPasswordExit (Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;

procedure TForm2.ListBox1DrawItem(
  Control: TWinControl;
  Index  : Integer;
  Rect   : TRect;
  State  : TOwnerDrawState);
var
  I,xpos,ypos: Integer;
begin
  if TListBox(Control).Focused then
  begin
    TListBox(Control).Canvas.Brush.Color := clYellow;
    TListBox(Control).Canvas.Pen.Width   := 0;
    TListBox(Control).Canvas.Rectangle(0,0,
    TListBox(Control).Width  - 1 ,
    TListBox(Control).Height - 1);

    TListBox(Control).Canvas.Font.Color := clBlack;

    xpos := Rect.Left;
    ypos := 0;

    for I := 0 to TListBox(Control).Items.Count - 1 do
    begin
      TListBox(Control).Canvas.Textout(
      xpos,ypos,TListBox(Control).Items[I]);
      inc(ypos ,TListBox(Control).Canvas.TextHeight('@'));
    end;

    xpos := Rect.Left;
    ypos := Rect.Top;

    for I := 0 to TListBox(Control).Items.Count - 1 do
    begin
      if Index = I then
      begin
        TListBox(Control).Canvas.Brush.Color := clAqua;
        TListBox(Control).Canvas.Rectangle(Rect);
        TListBox(Control).Canvas.Textout(
        xpos,ypos,TListBox(Control).Items[Index]);
        inc(ypos ,TListBox(Control).Canvas.TextHeight('@'));
      end
    end;

  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
//  ListBox1.SetFocus;
end;

end.

