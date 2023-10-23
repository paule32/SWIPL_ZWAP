unit ProfileSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, ExtCtrls;

type
  TFrame28 = class(TFrame)
    ScrollBox1: TScrollBox;
    GroupBox2: TGroupBox;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CheckListBox2: TCheckListBox;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    CheckListBox1: TCheckListBox;
    CheckBox2: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button3: TButton;
    CheckBox3: TCheckBox;

    procedure Label3MouseEnter(Sender: TObject);
    procedure Label6MouseEnter(Sender: TObject);
    procedure Label7MouseEnter(Sender: TObject);
    procedure Label10MouseEnter(Sender: TObject);

    procedure Label3MouseLeave(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label7MouseLeave(Sender: TObject);
    procedure Label10MouseLeave(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame28.Label3MouseEnter(Sender: TObject);
begin
  Label3.Font.Style := [fsUnderline];
end;

procedure TFrame28.Label6MouseEnter(Sender: TObject);
begin
  Label6.Font.Style := [fsUnderline];
end;

procedure TFrame28.Label7MouseEnter(Sender: TObject);
begin
  Label7.Font.Style := [fsUnderline];
end;

procedure TFrame28.Label10MouseEnter(Sender: TObject);
begin
  Label10.Font.Style := [fsUnderline];
end;

procedure TFrame28.Label3MouseLeave(Sender: TObject);
begin
  Label3.Font.Style := [];
end;

procedure TFrame28.Label6MouseLeave(Sender: TObject);
begin
  Label6.Font.Style := [];
end;

procedure TFrame28.Label7MouseLeave(Sender: TObject);
begin
  Label7.Font.Style := [];
end;

procedure TFrame28.Label10MouseLeave(Sender: TObject);
begin
  Label10.Font.Style := [];
end;

procedure TFrame28.Edit2Enter(Sender: TObject);
begin
  Edit2.Color := clYellow;
end;

procedure TFrame28.Edit1Enter(Sender: TObject);
begin
  Edit1.Color := clYellow;
end;

procedure TFrame28.Edit4Enter(Sender: TObject);
begin
  Edit4.Color := clYellow;
end;

procedure TFrame28.Edit3Enter(Sender: TObject);
begin
  Edit3.Color := clYellow;
end;

procedure TFrame28.Edit2Exit(Sender: TObject);
begin
  Edit2.Color := clWhite;
end;

procedure TFrame28.Edit1Exit(Sender: TObject);
begin
  Edit1.Color := clWhite;
end;

procedure TFrame28.Edit4Exit(Sender: TObject);
begin
  Edit4.Color := clWhite;
end;

procedure TFrame28.Edit3Exit(Sender: TObject);
begin
  Edit3.Color := clWhite;
end;

end.
