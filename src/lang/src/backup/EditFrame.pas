// -------------------------------------------------------------------
// File:    EditFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit EditFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, ExtCtrls, Grids, SynEdit, JvExComCtrls, JvComCtrls;

type
  TFrame3 = class(TFrame)
    PageControl2: TJvPageControl;
    TabSheet1: TTabSheet;
    SynEdit1: TSynEdit;
    TabSheet2: TTabSheet;
    SynEdit2: TSynEdit;
    TabSheet3: TTabSheet;
    SynEdit3: TSynEdit;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    StringGrid1: TStringGrid;
    Splitter1: TSplitter;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    TreeView1: TTreeView;
    TabSheet7: TTabSheet;
    TreeView2: TTreeView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
