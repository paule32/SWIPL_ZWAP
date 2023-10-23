unit WebServerUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, ExtCtrls;

type
  TFrame33 = class(TFrame)
    ScrollBox1: TScrollBox;
    GroupBox2: TGroupBox;
    Image2: TImage;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    CheckListBox2: TCheckListBox;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button3: TButton;
    CheckBox3: TCheckBox;
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label10MouseEnter(Sender: TObject);
    procedure Label10MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame33.Label3MouseEnter(Sender: TObject);
begin
  Label3.Font.Style := [fsUnderline];
end;

procedure TFrame33.Label3MouseLeave(Sender: TObject);
begin
  Label3.Font.Style := [];
end;

procedure TFrame33.Label10MouseEnter(Sender: TObject);
begin
  Label10.Font.Style := [fsUnderline];
end;

procedure TFrame33.Label10MouseLeave(Sender: TObject);
begin
  Label10.Font.Style := [];
end;

end.
