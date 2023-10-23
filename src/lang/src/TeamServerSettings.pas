unit TeamServerSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst;

type
  TFrame30 = class(TFrame)
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckListBox1: TCheckListBox;
    Edit1: TEdit;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label9: TLabel;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Edit6: TEdit;
    Label11: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    Edit8: TEdit;
    Button4: TButton;

    procedure Label1MouseEnter(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);

    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);

    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame30.Label1MouseEnter(Sender: TObject); begin Label1.Font.Style := [fsUnderline]; end;
procedure TFrame30.Label2MouseEnter(Sender: TObject); begin Label2.Font.Style := [fsUnderline]; end;
procedure TFrame30.Label3MouseEnter(Sender: TObject); begin Label3.Font.Style := [fsUnderline]; end;

procedure TFrame30.Label1MouseLeave(Sender: TObject); begin Label1.Font.Style := []; end;
procedure TFrame30.Label2MouseLeave(Sender: TObject); begin Label2.Font.Style := []; end;
procedure TFrame30.Label3MouseLeave(Sender: TObject); begin Label3.Font.Style := []; end;

procedure TFrame30.Label1Click(Sender: TObject);
begin
  GroupBox1.Height := 377;
end;

procedure TFrame30.Label2Click(Sender: TObject);
begin
  GroupBox1.Height := 377;
end;

procedure TFrame30.Button2Click(Sender: TObject);
begin
  CheckListBox1.Items.Clear;

  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
end;

procedure TFrame30.Edit1Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame30.Edit2Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame30.Edit3Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame30.Edit4Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;
procedure TFrame30.Edit5Enter(Sender: TObject); begin (Sender as TEdit).Color := clYellow; end;

procedure TFrame30.Edit1Exit(Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame30.Edit2Exit(Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame30.Edit3Exit(Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame30.Edit4Exit(Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;
procedure TFrame30.Edit5Exit(Sender: TObject); begin (Sender as TEdit).Color := clWhite; end;

end.
