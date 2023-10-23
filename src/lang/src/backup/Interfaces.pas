// --------------------------------------------------
// File:   Interfaces.pas
// Author: Jens Kallup - paule32
//         (c) 2023 Jens Kallup - non-profit Software
// --------------------------------------------------
unit Interfaces;
interface

type
  PointerByte = ^Byte;

type
  IRF_Package = interface(IInterface)
    ['{19790208-2023-0802-0002-CAFEBABE0002}']
    function DeCompressBuffer(arr: PointerByte; str: String; len: Integer): Boolean;
    function DeCompressAll: Boolean;
  end;

implementation
end.
