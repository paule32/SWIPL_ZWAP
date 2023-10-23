unit ProfileIconsFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvOutlookBar;

type
  TFrame27 = class(TFrame)
    ScrollBox1: TScrollBox;
    JvOutlookBar1: TJvOutlookBar;
    procedure FrameResize(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons4Click(Sender: TObject);
    procedure JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
    procedure JvOutlookBar1Pages3Buttons0Click(Sender: TObject);
    procedure JvOutlookBar1Pages3Buttons1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  EditorForm;

procedure TFrame27.FrameResize(Sender: TObject);
begin
  Width := 200;
  Form1.LeftPanel.Width := Width;
end;

procedure TFrame27.JvOutlookBar1Pages0Buttons4Click(Sender: TObject);
begin
  Form1.HideAllSetPages;
  Form1.DFrameAbout.Visible := true;
end;

procedure TFrame27.JvOutlookBar1Pages0Buttons2Click(Sender: TObject);
begin
  Form1.HideAllSetPages;
  Form1.DFrameTeamServerSettings.Visible := true;
end;

procedure TFrame27.JvOutlookBar1Pages1Buttons0Click(Sender: TObject);
begin
  Form1.HideAllSetPages;
  Form1.DFrameProfile.Visible := true;
end;

procedure TFrame27.JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
begin
  Form1.HideAllSetPages;
  Form1.DFrameTimeLine.Visible := true;
end;

procedure TFrame27.JvOutlookBar1Pages3Buttons0Click(Sender: TObject);
begin
  Form1.HideAllSetPages;
  Form1.DFrameWebSiteSetup.Visible := true;
end;

procedure TFrame27.JvOutlookBar1Pages3Buttons1Click(Sender: TObject);
begin
  Form1.HideAllSetPages;
  Form1.DFrameWebServerUser.Visible := true;
end;

end.
