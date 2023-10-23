// -------------------------------------------------------------------
// @File    SimulationPartA.pas
// @Author  paule32 - Jens Kallup
// @License (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
//
// @brief   This unit contains Part A of the circuite board design.
//          You will find standard parts there.
// -------------------------------------------------------------------
unit SimulationPartA;

interface

uses
  Windows, Classes, Graphics, ExtCtrls;

type
  // ------------------------------------------------------------
  // @brief TPaintOrientation set the orientation of the current
  //        selected TPaint<Object>.
  // ------------------------------------------------------------
  TPaintOrientation = (
    poVertical   = 1,   //! orientation: vertical
    poHorizontal = 2    //! orientation: horizontal
  );

type
  TElementType = class(TObject)
  end;

// ------------------------------------------------------------
// @brief This ist the base class for all PaintElement's.
// ------------------------------------------------------------
type
  TPaintElementList = class(TList)
  private
    function getElement(Index: Integer): TPaintElementList;
  public
    constructor Create;
  end;

  TCustomPaintElement = class(TPaintBox)
  private
    FElementName        : String;
    FElementNameDisplay : String;
  public
    constructor Create(AComponent: TComponent); reintroduce; overload;
    constructor Create(AComponent: TComponent; AName: String); reintroduce; overload;
  end;

// ------------------------------------------------------------
// @brief This class representant the connection's between the
//        element's. It merge internal stuff with visual stuff.
// ------------------------------------------------------------
type
  TCustomElementPorts = class(TPaintElementList)
  private
    FElementType: TElementType;
//    function getElement(Index: Integer): TPaintElementList;
  public
    constructor Create;
    property ElementType: TElementType read FElementType;

    property Input [Index: Integer]: TPaintElementList read getElement;
    property Output[Index: Integer]: TPaintElementList read getElement;
  end;

  // ------------------------------------------------------------
  // @brief The TPaintWire class is used, when a wire (line) is
  //        place on the board, and wait for connection.
  // ------------------------------------------------------------
  TPaintWire = class(TPaintBox)
  private
    FToolSetLabel: String;
    FPosition: TPaintOrientation;
  protected
    procedure Paint; override;
  public
    constructor Create(AComponent: TComponent); override;
    property Position: TPaintOrientation read FPosition write FPosition;
    property ToolSetLabel: String read FToolSetLabel write FToolSetLabel;
  end;

implementation

constructor TCustomElementPorts.Create;
begin
end;

constructor TCustomPaintElement.Create(AComponent: TComponent);
begin
  Create(AComponent, 'Type 1');
end;
constructor TCustomPaintElement.Create(
  AComponent: TComponent;
  AName     : String);
begin
  inherited Create(AComponent);
  FElementName        := AName;
  FElementNameDisplay := AName;
end;

// ------------------------------------------------------------
// @brief This is the constructor for class TPaintWire.
//        The ctor initialize a simple wire that can be connect
//        with other circuities.
//        Usally it has two Ports - in, and out.
// ------------------------------------------------------------
constructor TPaintWire.Create(AComponent: TComponent);
begin
  inherited Create(AComponent);
  FPosition     := poHorizontal;
  FToolSetLabel := '';

  Height := 20;
end;

// ------------------------------------------------------------
// @brief Paint render the Element on the board.
//        You can connect the wire on left, and right side with
//        other Elmenets (which includes TPainWire, itself).
// ------------------------------------------------------------
procedure TPaintWire.Paint;
var
  x,y,Radius: Integer;
begin
  inherited Paint;

  Canvas.Pen.Color := clBlack;
  Canvas.Pen.Width := 2;

  if Position = poHorizontal then
  begin
    Canvas.MoveTo(1    ,Height div 2);
    Canvas.LineTo(Width,Height div 2);
  end else
  begin
    Height := 100;
    Width  := 20;
    Resize;

    Canvas.MoveTo((Width div 2) - 3, 1);
    Canvas.LineTo((Width div 2) - 3, Height);
  end;

  // left knubbel port
  if Position = poHorizontal then
  begin
    Radius := 5;
    x := Trunc(                  5  + Radius * Cos(5));
    y := Trunc(((Height div 2) + 5) + Radius * Sin(5));
  end else
  begin
    Radius := 5;
    x := Trunc((Width div 2) -  5 + Radius * Cos(5));
    y := Trunc(                10 + Radius * Sin(5));
  end;

  Canvas.Brush.Color := clWhite;
  Canvas.Pen.Width := 1;
  Canvas.Ellipse(
    x - Radius, y - Radius,
    x + Radius, y + Radius
  );

  // right knubbel port
  if Position = poHorizontal then
  begin
    Radius := 5;
    x := Trunc( (Width   -  5)      + Radius * Cos(5));
    y := Trunc(((Height div 2) + 5) + Radius * Sin(5));
  end else
  begin
    x := Trunc((Width div 2) - 3  + Radius * Cos(5));
    y := Trunc( Height            + Radius * Sin(5));
  end;

  Canvas.Brush.Color := clRed;
  Canvas.Pen.Width := 1;
  Canvas.Ellipse(
    x - Radius, y - Radius,
    x + Radius, y + Radius
  );

  // working tool set
  if Length(ToolSetLabel) > 0 then
  begin
    Canvas.Brush.Style := bsClear;
    Canvas.Font.Size   := 11;
    Canvas.Font.Name   := 'Consolas';
    Canvas.TextOut(2,Height - (Canvas.Font.Size + 5),FToolSetLabel);
  end;
end;

constructor TPaintElementList.Create;
begin
  inherited Create;
end;

function TPaintElementList.getElement(Index: Integer): TPaintElementList;
begin
  result := nil;
end;

end.
