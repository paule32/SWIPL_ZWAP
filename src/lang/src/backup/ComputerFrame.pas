// -------------------------------------------------------------------
// File:    ComputerFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit ComputerFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, ImgList, ComCtrls, JvExComCtrls, JvComCtrls, StdCtrls,
  JvExStdCtrls, JvCheckBox, JvRadioButton;

type
  TFrame16 = class(TFrame)
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    JvCheckBox4: TJvCheckBox;
    JvCheckBox5: TJvRadioButton;
    JvCheckBox6: TJvRadioButton;
    JvCheckBox7: TJvRadioButton;
    JvCheckBox8: TJvRadioButton;
    GroupBox3: TGroupBox;
    Splitter3: TSplitter;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TScrollBox;
    GroupBox4: TGroupBox;
    JvCheckBox10: TJvRadioButton;
    JvCheckBox11: TJvRadioButton;
    JvCheckBox12: TJvRadioButton;
    JvCheckBox13: TJvRadioButton;
    JvCheckBox14: TJvRadioButton;
    JvCheckBox15: TJvRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
