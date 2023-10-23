// -------------------------------------------------------------------
// File:    SplashScreen.pas
// Author:  paule32 - Jens Kallup
// License: (c) 2023  non-profit Software
//          All Rights Reserved - only for private or education usage.
// -------------------------------------------------------------------
unit SQLparser;

interface

uses
  Windows, Classes, StrUtils, SysUtils, Contnrs;

type
  TTokenTypes = (
    tkConstantNumber = 1,
    tkConstantString = 2,

    tkSelect = 10,
    tkFrom   = 11,
    tkWhere  = 12,

    tkUnknown = 1000
  );

  TTokenInfo = class
  private
    FTokenSQL: TTokenTypes;
    function GetTokenSQL: TTokenTypes;
    procedure SetTokenSQL(const AValue: TTokenTypes);
  public
    TokenType: Char;
    Token: String;
    property TokenSQL: TTokenTypes read GetTokenSQL write SetTokenSQL;
  end;

  TTokenBucket = class(TObjectList)
  public
    procedure Join(istart: Integer);
  end;

  TSQLparser = class
  public
    FTokens: Array of TTokenInfo;
    constructor Create;
    destructor Destroy; override;
  end;

function TokenStringToTokenSQL(info: TTokenInfo): TTokenTypes;
function TokenIdToTokenString(inTokenId:TTokenTypes): string;

implementation

function TokenStringToTokenSQL(info: TTokenInfo): TTokenTypes;
var
  token: String;
begin
  token := UpperCase(info.Token);

  if token = 'SELECT' then result := tkSelect else
  if token = 'FROM'   then result := tkFrom   else
  if token = 'WHERE'  then result := tkWhere  else result := tkUnknown;
end;

function TokenIdToTokenString(inTokenId: TTokenTypes): string;
begin
  case inTokenId of
    tkConstantNumber: result := 'tkConstantNumber';
    tkConstantString: result := 'tkConstantString';

    tkSelect:  result := 'tkSelect';
    tkFrom:    result := 'tkFrom';
    tkWhere:   result := 'tkWhere';
    tkUnknown: result := '';
  else
    result := 'token name !defined';
  end;
end;

{ TTokenBucket }

procedure TTokenBucket.Join(istart: Integer);
begin
  TTokenInfo( self[ istart + 0 ] ).Token :=
  TTokenInfo( self[ istart + 0 ] ).Token + ' ' +
  TTokenInfo( self[ istart + 1 ] ).Token ;
end;

{ TTokenInfo }

function TTokenInfo.GetTokenSQL: TTokenTypes;
begin
  result := FTokenSQL;
end;

procedure TTokenInfo.SetTokenSQL(const AValue: TTokenTypes);
begin
  if (TokenSQL = tkConstantNumber) or
     (TokenSQL = tkConstantString) then
  begin
    exit;
  end;
  FTokenSQL := AValue;
end;

constructor TSQLparser.Create;
var
  I: Integer;
begin
  SetLength(FTokens,5);

  for I := 0 to 4 do
  begin
    if FTokens[I].TokenSQL in
    [ tkSelect
    ] then
  end;
end;

destructor TSQLparser.Destroy;
begin
  inherited Destroy;
//  FreeAndNil( FTokens );
end;

end.

