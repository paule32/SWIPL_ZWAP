// -------------------------------------------------------------------
// File:    ChatFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit ChatFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ComCtrls, JvExStdCtrls, JvButton, JvCtrls, ExtCtrls,
  JvExComCtrls, JvComCtrls;

type
  TFrame20 = class(TFrame)
    PageControl6: TJvPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    Panel1: TPanel;
    sendChatTextEdit: TEdit;
    Button9: TJvImgBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    ircTopicEdit: TEdit;
    PageControl7: TJvPageControl;
    TabSheet2: TTabSheet;
    ircRichEdit: TRichEdit;
    ListBox1: TListBox;
    TabSheet3: TTabSheet;
    Splitter2: TSplitter;
    Panel4: TPanel;
    ircChannelEdit: TEdit;
    ircConnectButton: TJvImgBtn;
    Panel5: TPanel;
    ircListBox: TListBox;
    PageControl8: TJvPageControl;
    TabSheet4: TTabSheet;
    ScrollBox1: TScrollBox;
    ircLabelNick: TLabel;
    ircLabelPassword: TLabel;
    ircLabelChannel: TLabel;
    ircUserName: TEdit;
    ircUserPass: TEdit;
    ircChannel: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
