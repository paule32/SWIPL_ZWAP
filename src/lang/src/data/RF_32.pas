// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_32;
interface
const
  TByteArray_c64key25: Array [0..853] of Byte = (
$00, $0C, $63, $36, $34, $6B, $65, $79, $32, $35, $2E, $62, $6D, $70, $42, $2D, $00, $00, $3F, 
$03, $00, $00, $78, $DA, $ED, $9A, $CF, $4B, $22, $61, $18, $C7, $D5, $ED, $60, $75, $12, $C1, $5B, 
$26, $48, $1D, $62, $77, $6F, $7A, $ED, $07, $C2, $5A, $E0, $65, $23, $48, $0A, $84, $E8, $E0, $C5, 
$3C, $2C, $46, $81, $09, $79, $F0, $B0, $7F, $86, $74, $2B, $F0, $A4, $58, $D0, $0F, $B4, $B2, $34, 
$85, $A8, $83, $27, $11, $B4, $3A, $58, $42, $45, $87, $52, $78, $D6, $E7, $8D, $31, $1D, $67, $36, 
$D3, $B1, $9D, $71, $DF, $C1, $2F, $EA, $BC, $7C, $9F, $F9, $7E, $D4, $99, $F7, $7D, $E7, $75, $C2, 
$32, $F1, $4D, $46, $B6, $DF, $15, $B9, $2B, $32, $54, $64, $AC, $48, $2E, $D3, $C9, $BE, $54, $9E, 
$C3, $5F, $65, $32, $FD, $F7, $57, $BD, $6D, $C0, $3C, $C8, $9B, $89, $1F, $3F, $7F, $C9, $3E, $B8, 
$29, $58, $EF, $73, $B9, $1C, $5C, $5E, $5E, $C2, $D4, $D4, $14, $68, $B5, $5A, $78, $3D, $C8, $9B, 
$14, $0A, $05, $F4, $F4, $F4, $80, $52, $A9, $84, $FE, $FE, $FE, $3A, $F5, $F6, $F6, $92, $36, $B9, 
$5C, $DE, $E0, $FB, $4C, $E9, $74, $3A, $30, $9B, $CD, $70, $71, $71, $01, $C8, $B3, $B9, $B9, $09, 
$C3, $C3, $C3, $B0, $B4, $B4, $04, $7E, $BF, $1F, $22, $91, $88, $E4, $B4, $B1, $B1, $01, $56, $AB, 
$95, $70, $20, $8F, $CD, $66, $03, $8F, $C7, $03, $27, $27, $27, $10, $8F, $C7, $E1, $EC, $EC, $4C, 
$72, $C2, $DC, $B1, $58, $0C, $EC, $76, $3B, $2C, $2E, $2E, $C2, $E8, $E8, $28, $9C, $9E, $9E, $4A, 
$92, $85, $2D, $E4, $1A, $1C, $1C, $84, $D9, $D9, $D9, $AE, $E0, $61, $34, $33, $33, $43, $CE, $A3, 
$6E, $62, $42, $1E, $A7, $D3, $D9, $55, $4C, $C8, $43, $99, $A4, $CD, $B4, $BF, $BF, $0F, $BB, $BB, 
$BB, $10, $0E, $87, $45, $27, $CC, $75, $70, $70, $F0, $21, $26, $EC, $AB, $D0, $7B, $73, $73, $03, 
$CF, $CF, $CF, $A2, $D3, $F5, $F5, $35, $6C, $6F, $6F, $93, $9C, $CD, $32, $1D, $1E, $1E, $C2, $F9, 
$F9, $39, $94, $4A, $25, $B8, $BA, $BA, $82, $87, $87, $87, $96, $85, $E3, $AE, $72, $B9, $5C, $95, 
$10, $F5, $30, $17, $E6, $C3, $9C, $CD, $32, $E1, $78, $23, $9D, $4E, $93, $0C, $AB, $AB, $AB, $60, 
$30, $18, $40, $AD, $56, $73, $6A, $60, $60, $80, $B7, $0D, $7D, $2B, $2B, $2B, $75, $4C, $42, $D5, 
$C3, $7C, $98, $B3, $15, $A6, $F5, $F5, $75, $32, $76, $C2, $31, $2C, $97, $70, $1C, $CB, $D7, $D6, 
$D7, $D7, $47, $FC, $B5, $4C, $4C, $BD, $FB, $FB, $FB, $06, $8D, $8F, $8F, $57, $EB, $E1, $6B, $76, 
$3B, $FA, $98, $7A, $ED, $30, $79, $BD, $5E, $22, $BE, $DC, $EF, $09, $BD, $B5, $4C, $4C, $BD, $DA, 
$7D, $8C, $4C, $26, $53, $D5, $87, $AF, $D9, $ED, $B5, $5E, $CA, $F4, $F9, $4C, $99, $4C, $86, $1C, 
$D3, $68, $34, $76, $0D, $93, $CF, $E7, $03, $95, $4A, $45, $CE, $3F, $29, $33, $59, $2C, $96, $AA, 
$46, $46, $46, $EA, $3C, $A1, $50, $88, $F4, $3D, $52, $63, $62, $DF, $03, $A8, $F5, $60, $BF, $FA, 
$F2, $F2, $D2, $71, $26, $AE, $6B, $EF, $7B, $72, $BB, $DD, $BC, $4C, $5C, $FC, $F8, $FD, $A0, $8F, 
$EB, $FA, $D1, $09, $26, $BE, $E3, $FC, $4D, $5C, $5E, $66, $1F, $F6, $3F, $6C, $25, $93, $C9, $A6, 
$EB, $89, $91, $E9, $F1, $F1, $B1, $41, $5C, $BF, $37, $29, $31, $B5, $5B, $8F, $32, $FD, $1F, $4C, 
$6B, $6B, $6B, $2D, $CD, $0B, $F8, $AE, $7B, $42, $D4, $6B, $87, $C9, $E1, $70, $C0, $D0, $D0, $50, 
$4B, $73, $03, $F4, $A1, $BF, $96, $49, $A8, $7A, $ED, $30, $3D, $3D, $3D, $91, $CF, $A8, $95, $FE, 
$09, $7D, $85, $42, $A1, $8E, $49, $A8, $7A, $ED, $30, $B5, $2B, $9C, $93, $0A, $51, $87, $5D, $EF, 
$5F, $32, $75, $4A, $94, $89, $32, $51, $26, $CA, $D4, $69, $A6, $E3, $E3, $63, $D2, $EF, $15, $8B, 
$C5, $AE, $61, $8A, $46, $A3, $64, $DE, $76, $77, $77, $47, $99, $28, $13, $65, $A2, $4C, $94, $89, 
$32, $51, $A6, $0E, $32, $E1, $FD, $5E, $9C, $6B, $0A, $3D, $C7, $A3, $E3, $BD, $D6, $99, $70, $ED, 
$37, $95, $4A, $89, $9A, $09, $F3, $F1, $AD, $51, $CF, $CD, $CD, $35, $EC, $4F, $24, $12, $E4, $7E, 
$3C, $AE, $75, $89, $91, $27, $9B, $CD, $92, $7C, $98, $93, $9D, $1D, $79, $34, $1A, $0D, $E7, $7F, 
$27, $8E, $8E, $8E, $60, $6F, $6F, $0F, $76, $76, $76, $44, $27, $CC, $85, $F9, $B8, $72, $23, $CF, 
$D8, $D8, $18, $4C, $4F, $4F, $73, $B6, $E3, $E7, $20, $56, $71, $E5, $45, $0E, $E4, $09, $06, $83, 
$A0, $D7, $EB, $61, $7E, $7E, $1E, $B6, $B6, $B6, $24, $F9, $1F, $A3, $40, $20, $00, $0B, $0B, $0B, 
$84, $03, $79, $6E, $6F, $6F, $21, $9F, $CF, $83, $CB, $E5, $22, $6B, $40, $B8, $A6, $2A, $35, $4D, 
$4E, $4E, $C2, $F2, $F2, $32, $E1, $40, $9E, $3F, $79, $6C, $CD, $E9, 0 );
implementation
end.
