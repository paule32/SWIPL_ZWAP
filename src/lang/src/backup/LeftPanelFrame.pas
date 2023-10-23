// -------------------------------------------------------------------
// File:    LeftPanelFrame.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit LeftPanelFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ImgList, ComCtrls, StdCtrls, JvExStdCtrls, JvButton, JvCtrls,
  CheckLst, Grids, ValEdit, JvExControls, JvInspector, JvCombobox,
  ExtCtrls, JvExComCtrls, JvComCtrls;

type
  TFrame23 = class(TFrame)
    LeftPageControl: TJvPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    Panel1: TPanel;
    JvComboBox1: TJvComboBox;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    JvInspector1: TJvInspector;
    TabSheet4: TTabSheet;
    EventMethodeListBox: TValueListEditor;
    DesignerIconListViews: TPageControl;
    TabSheet5: TTabSheet;
    DesignerIconListView_Standard: TListView;
    TabSheet6: TTabSheet;
    DesignerIconListView_Edit: TListView;
    TabSheet7: TTabSheet;
    DesignerIconListView_Box: TListView;
    TabSheet8: TTabSheet;
    DesignerIconListView_List: TListView;
    TabSheet9: TTabSheet;
    DesignerIconListView_Button: TListView;
    TabSheet10: TTabSheet;
    DesignerIconListView_Grid: TListView;
    TabSheet11: TTabSheet;
    DesignerIconListView_DataBase: TListView;
    TabSheet12: TTabSheet;
    DesignerIconListView_Image: TListView;
    TabSheet13: TTabSheet;
    DesignerIconListView_Scroll: TListView;
    TabSheet17: TTabSheet;
    DesignerIconListView_CS: TListView;
    TabSheet3: TTabSheet;
    Splitter2: TSplitter;
    ScrollBox1: TScrollBox;
    PageControl3: TPageControl;
    TabSheet14: TTabSheet;
    Splitter3: TSplitter;
    CheckListBox1: TCheckListBox;
    Panel2: TPanel;
    JvImgBtn1: TJvImgBtn;
    JvImgBtn2: TJvImgBtn;
    TabSheet15: TTabSheet;
    Splitter4: TSplitter;
    TreeView2: TTreeView;
    Panel3: TPanel;
    JvImgBtn3: TJvImgBtn;
    JvImgBtn4: TJvImgBtn;
    TabSheet16: TTabSheet;
    Splitter5: TSplitter;
    TreeView3: TTreeView;
    Panel4: TPanel;
    JvImgBtn13: TJvImgBtn;
    JvImgBtn14: TJvImgBtn;
    TabSheet18: TTabSheet;
    Splitter6: TSplitter;
    Panel5: TPanel;
    JvImgBtn11: TJvImgBtn;
    JvImgBtn12: TJvImgBtn;
    TabSheet19: TTabSheet;
    Splitter7: TSplitter;
    TreeView4: TTreeView;
    Panel6: TPanel;
    JvImgBtn9: TJvImgBtn;
    JvImgBtn10: TJvImgBtn;
    TabSheet20: TTabSheet;
    Splitter8: TSplitter;
    ListView1: TListView;
    Panel7: TPanel;
    JvImgBtn7: TJvImgBtn;
    JvImgBtn8: TJvImgBtn;
    TabSheet21: TTabSheet;
    Splitter9: TSplitter;
    TreeView1: TTreeView;
    Panel8: TPanel;
    JvImgBtn5: TJvImgBtn;
    JvImgBtn6: TJvImgBtn;
    ScrollBox2: TScrollBox;
    PageControl4: TPageControl;
    TabSheet22: TTabSheet;
    TreeView5: TTreeView;
    C64ConfigTabSheet: TTabSheet;
    PageControl2: TPageControl;
    LocalTabSheet: TTabSheet;
    LocalFoldersScrollBox: TScrollBox;
    RemoteTabSheet: TTabSheet;
    RemoteFoldersScrollBox: TScrollBox;
    ImageList1: TImageList;
    ColorDialog1: TColorDialog;
    TabSheet23: TTabSheet;
    PageControl5: TPageControl;
    TabSheet24: TTabSheet;
    TreeView6: TTreeView;
    procedure DesignerIconListView_StandardMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure JvInspector1BeforeEdit(Sender: TObject;
      Item: TJvCustomInspectorItem; Edit: TCustomEdit);
    procedure JvInspector1ItemValueChanged(Sender: TObject;
      Item: TJvCustomInspectorItem);
  private
    { Private declarations }
  public
    procedure ItemClick(Sender: TObject);
  end;

implementation

{$R *.dfm}

procedure TFrame23.DesignerIconListView_StandardMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DesignerIconListView_Standard.BeginDrag(true,2);
end;

procedure TFrame23.ItemClick(Sender: TObject);
var
  I: Integer;
  found: Boolean;
begin
  if JvInspector1.Selected.DisplayName = 'Color' then
  begin
    if ColorDialog1.Execute then
    begin
      JvInspector1.Selected.SetDisplayValue(
      ColorToString(ColorDialog1.Color));
    end;
  end;
end;

procedure TFrame23.JvInspector1BeforeEdit(Sender: TObject;
  Item: TJvCustomInspectorItem; Edit: TCustomEdit);
begin
  TEdit(Edit).OnClick := ItemClick;
end;

procedure TFrame23.JvInspector1ItemValueChanged(
  Sender: TObject;
  Item  : TJvCustomInspectorItem);
var
  sValue: String;
begin
  if (Item.Data <> nil) then
  begin
    sValue := Item.DisplayValue;

    if (CompareText(Item.Data.Name, 'Color') = 0) then
    begin
      Item.SetDisplayValue(ColorToString(ColorDialog1.Color));
    end;
  end;
end;

end.
