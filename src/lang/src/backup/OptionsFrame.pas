// -------------------------------------------------------------------
// File:    OptionsFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit OptionsFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, Mask,
  JvExMask, JvSpin, ComCtrls, JvExComCtrls, JvComCtrls;

type
  TFrame21 = class(TFrame)
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    PageControl3: TJvPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    JvSpinEdit1: TJvSpinEdit;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TJvImgBtn;
    Button2: TJvImgBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Panel1: TPanel;
    Button3: TJvImgBtn;
    Button4: TJvImgBtn;
    Button5: TJvImgBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
