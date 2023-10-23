unit SetupHttpServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, ExtCtrls;

type
  TFrame32 = class(TFrame)
    ScrollBox1: TScrollBox;
    GroupBox2: TGroupBox;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    CheckListBox2: TCheckListBox;
    Edit2: TEdit;
    CheckListBox1: TCheckListBox;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button3: TButton;
    CheckBox3: TCheckBox;
    Label11: TLabel;
    Edit5: TEdit;
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label7MouseLeave(Sender: TObject);
    procedure Label7MouseEnter(Sender: TObject);
    procedure Label10MouseEnter(Sender: TObject);
    procedure Label10MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame32.Label3MouseEnter(Sender: TObject);
begin
  Label3.Font.Style := [fsUnderline];
end;

procedure TFrame32.Label3MouseLeave(Sender: TObject);
begin
  Label3.Font.Style := [];
end;

procedure TFrame32.Label6MouseLeave(Sender: TObject);
begin
  Label6.Font.Style := [fsUnderline];
end;

procedure TFrame32.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label6.Font.Style := [];
end;

procedure TFrame32.Label7MouseLeave(Sender: TObject);
begin
  Label7.Font.Style := [];
end;

procedure TFrame32.Label7MouseEnter(Sender: TObject);
begin
  Label7.Font.Style := [fsUnderline];
end;

procedure TFrame32.Label10MouseEnter(Sender: TObject);
begin
  Label10.Font.Style := [fsUnderline];
end;

procedure TFrame32.Label10MouseLeave(Sender: TObject);
begin
  Label10.Font.Style := [];
end;

end.
