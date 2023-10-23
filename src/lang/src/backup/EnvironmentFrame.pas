// -------------------------------------------------------------------
// File:    EnvironmentFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit EnvironmentFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, ExtCtrls, ComCtrls,
  JvExComCtrls, JvComCtrls;

type
  TFrame22 = class(TFrame)
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    PageControl3: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
