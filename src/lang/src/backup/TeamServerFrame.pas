// -------------------------------------------------------------------
// File:    TeamServerFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit TeamServerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvEdit, ExtCtrls,
  CheckLst;

type
  TFrame2 = class(TFrame)
    Project_Panel: TPanel;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvEdit1: TJvEdit;
    JvEdit2: TJvEdit;
    JvEdit3: TJvEdit;
    JvEdit4: TJvEdit;
    JvImgBtn1: TJvImgBtn;
    Label5: TLabel;
    CheckListBox1: TCheckListBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure JvEdit1Enter(Sender: TObject);
    procedure JvEdit3Enter(Sender: TObject);
    procedure JvEdit4Enter(Sender: TObject);
    procedure JvEdit2Enter(Sender: TObject);
    procedure JvEdit2Exit(Sender: TObject);
    procedure JvEdit4Exit(Sender: TObject);
    procedure JvEdit3Exit(Sender: TObject);
    procedure JvEdit1Exit(Sender: TObject);
    procedure JvEdit5Enter(Sender: TObject);
    procedure JvEdit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame2.JvEdit1Enter(Sender: TObject); begin (Sender as TJvEdit).Color := clYellow; end;
procedure TFrame2.JvEdit2Enter(Sender: TObject); begin (Sender as TJvEdit).Color := clYellow; end;
procedure TFrame2.JvEdit3Enter(Sender: TObject); begin (Sender as TJvEdit).Color := clYellow; end;
procedure TFrame2.JvEdit4Enter(Sender: TObject); begin (Sender as TJvEdit).Color := clYellow; end;
procedure TFrame2.JvEdit5Enter(Sender: TObject); begin (Sender as TJvEdit).Color := clYellow; end;

procedure TFrame2.JvEdit1Exit (Sender: TObject); begin (Sender as TJvEdit).Color := clWhite;  end;
procedure TFrame2.JvEdit2Exit (Sender: TObject); begin (Sender as TJvEdit).Color := clWhite;  end;
procedure TFrame2.JvEdit3Exit (Sender: TObject); begin (Sender as TJvEdit).Color := clWhite;  end;
procedure TFrame2.JvEdit4Exit (Sender: TObject); begin (Sender as TJvEdit).Color := clWhite;  end;
procedure TFrame2.JvEdit5Exit (Sender: TObject); begin (Sender as TJvEdit).Color := clWhite;  end;

end.
