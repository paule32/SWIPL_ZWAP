// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_2;
interface
const
  TByteArray_TEdit: Array [0..574] of Byte = (
$00, $09, $54, $45, $64, $69, $74, $2E, $62, $6D, $70, $CA, $14, $00, $00, $2B, $02, $00, $00, 
$78, $DA, $ED, $96, $CF, $AB, $61, $61, $18, $C7, $19, $65, $81, $E5, $20, $11, $32, $B3, $9E, $BF, 
$40, $9A, $94, $86, $32, $D1, $D8, $62, $61, $21, $85, $BA, $37, $25, $45, $6C, $C5, $4A, $59, $9A, 
$8D, $85, $B2, $B4, $A0, $66, $83, $9D, $1A, $61, $A3, $6C, $D8, $90, $F2, $EB, $52, $6E, $D9, $90, 
$EF, $78, $5F, $E3, $CE, $75, $9D, $A9, $7B, $A7, $33, $63, $EA, $9E, $4F, $E7, $E9, $F4, $F6, $BE, 
$E7, $39, $9F, $73, $DE, $F7, $3C, $EF, $31, $7E, $FE, $FE, $96, $47, $49, $1D, $22, $76, $88, $F7, 
$3F, $83, $CF, $D3, $F2, $04, $87, $F3, $C7, $43, $FF, $BB, $0F, $C7, $F8, $05, $4E, $07, $6D, $18, 
$3F, $7D, $09, $F1, $5E, $C8, $1B, $1E, $07, $07, $C7, $6B, $E7, $DB, $D7, $04, $AE, $19, $4C, $3E, 
$D7, $E2, $35, $FB, $1C, $37, $95, $63, $30, $B5, $9F, $E3, $B3, $DF, $EF, $51, $28, $14, $E0, $F3, 
$F9, $70, $7B, $7B, $8B, $56, $AB, $85, $5E, $AF, $87, $64, $32, $89, $F5, $7A, $4D, $C7, $2C, $16, 
$0B, $DA, $1E, $0C, $06, $A8, $D5, $6A, $F0, $FB, $FD, $F0, $7A, $BD, $C8, $E7, $F3, $D8, $6E, $B7, 
$BF, $75, $FB, $93, $F7, $13, $0E, $87, $C1, $E7, $F3, $61, $36, $9B, $E1, $76, $BB, $A1, $52, $A9, 
$E0, $F1, $78, $68, $BE, $D1, $68, $44, $C7, $10, $3F, $D2, $76, $38, $1C, $90, $CB, $E5, $70, $3A, 
$9D, $B0, $5A, $AD, $10, $0A, $85, $30, $18, $0C, $D8, $6C, $36, $AC, $F9, $48, $A5, $52, $9A, $FF, 
$C4, $7C, $3E, $87, $46, $A3, $61, $F4, $D1, $E9, $74, $98, $CD, $66, $0F, $63, $AB, $D5, $2A, $04, 
$02, $01, $12, $89, $04, $6B, $3E, $32, $99, $8C, $CE, $D3, $63, $52, $A9, $14, $A3, $4F, $36, $9B, 
$BD, $C8, $4F, $DE, $99, $5A, $AD, $66, $CD, $27, $14, $0A, $41, $2C, $16, $23, $9D, $4E, $A3, $DD, 
$6E, $E3, $FE, $FE, $1E, $C5, $62, $91, $D1, $A7, $5C, $2E, $5F, $E4, $27, $D7, $91, $BE, $E5, $72, 
$C9, $8A, $CF, $6E, $B7, $A3, $CF, $AD, $D7, $EB, $21, $12, $89, $68, $1E, $89, $44, $C2, $E8, $53, 
$2A, $95, $2E, $F2, $E7, $72, $39, $DA, $37, $99, $4C, $58, $F1, $79, $CA, $78, $3C, $46, $2C, $16, 
$A3, $F9, $A6, $D3, $E9, $99, $0F, $99, $C7, $A7, $44, $A3, $51, $FA, $1C, $E4, $3B, $65, $C3, $67, 
$B5, $5A, $A1, $D3, $E9, $9C, $5D, $13, $0C, $06, $E9, $1C, $9E, $EE, $71, $F2, $51, $2A, $95, $0F, 
$8E, $84, $BB, $BB, $3B, $28, $14, $0A, $98, $4C, $26, $D6, $D6, $CF, $70, $38, $A4, $DF, $88, $DD, 
$6E, $47, $3C, $1E, $A7, $75, $85, $B4, $6F, $6E, $6E, $1E, $C6, $9C, $7C, $48, $DD, $21, $6B, $97, 
$AC, $B9, $48, $24, $02, $AD, $56, $4B, $E7, $96, $AC, $3B, $B6, $7C, $08, $CD, $66, $13, $81, $40, 
$00, $16, $8B, $05, $36, $9B, $0D, $99, $4C, $E6, $AC, $CE, $9D, $7C, $2A, $95, $0A, $1A, $8D, $06, 
$5C, $2E, $17, $8C, $46, $23, $AD, $53, $DD, $6E, $97, $D5, $7A, $F8, $1C, $1E, $FB, $BC, $64, $EF, 
$E0, $7C, $AE, $E3, $D3, $EF, $F7, $E9, $5E, $51, $AF, $D7, $FF, $FA, $FE, $CE, $FD, $8F, $31, $FB, 
$FC, $4F, $FF, $CF, $1C, $1C, $1C, $1C, $FF, $9A, $1F, $E0, $94, $D7, $9C, 0 );
implementation
end.
