// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_57;
interface
const
  TByteArray_c64key49: Array [0..1022] of Byte = (
$00, $0C, $63, $36, $34, $6B, $65, $79, $34, $39, $2E, $62, $6D, $70, $1A, $2E, $00, $00, $E8, 
$03, $00, $00, $78, $DA, $ED, $9A, $39, $48, $24, $41, $14, $86, $E7, $00, $F1, $40, $51, $44, $C4, 
$11, $61, $70, $15, $51, $D8, $D1, $40, $06, $44, $13, $C7, $63, $44, $98, $64, $63, $13, $31, $30, 
$32, $71, $D3, $C1, $0B, $3C, $D8, $40, $17, $03, $05, $11, $4C, $D4, $58, $13, $6F, $45, $45, $C4, 
$13, $CC, $CC, $34, $10, $4C, $BC, $8F, $C0, $0B, $DE, $FA, $BF, $DD, $DE, $95, $9E, $EA, $71, $C6, 
$99, $1D, $BB, $9A, $6E, $FC, $99, $1E, $AB, $BA, $7C, $9F, $FD, $FA, $BD, $7A, $D5, $E5, $F1, $39, 
$5C, $16, $3E, $7E, $BC, $CA, $FF, $2A, $F7, $1F, $59, $2D, $4E, $8B, $FD, $F5, $F3, $E7, $57, $8B, 
$E5, $8B, $EB, $B7, $FE, $1D, $A4, $FC, $F0, $17, $8F, $F7, $DB, $77, $4B, $98, $87, $4D, $F5, $FD, 
$F2, $F2, $92, $A0, $91, $91, $11, $2A, $2B, $2B, $23, $87, $C3, $41, $49, $49, $49, $21, $2B, $2E, 
$2E, $8E, $EC, $76, $3B, $FD, $36, $EE, $73, $94, $9A, $9A, $4A, $25, $25, $25, $D4, $DB, $DB, $4B, 
$27, $27, $27, $2C, $30, $55, $57, $57, $F3, $EF, $07, $07, $07, $69, $7A, $7A, $9A, $D6, $D7, $D7, 
$A5, $12, $6C, $EE, $EF, $EF, $A7, $BC, $BC, $3C, $AA, $AA, $AA, $62, $A6, $B9, $B9, $39, $CA, $CE, 
$CE, $E6, $F6, $9D, $9D, $1D, $DA, $DD, $DD, $A5, $BD, $BD, $3D, $A9, $04, $9B, $B7, $B7, $B7, $69, 
$75, $75, $95, $7D, $08, $4C, $35, $35, $35, $34, $30, $30, $20, $1D, $8B, $96, $DA, $DB, $DB, $A9, 
$A9, $A9, $89, $32, $33, $33, $69, $76, $76, $D6, $30, $5C, $33, $33, $33, $94, $9F, $9F, $4F, $56, 
$AB, $55, $4A, $DF, $0B, $E6, $93, $36, $9B, $8D, $E3, $89, $51, $98, $14, $29, $71, $D2, $E4, $92, 
$9F, $0B, $31, $7F, $6D, $6D, $8D, $16, $17, $17, $39, $6E, $EA, $49, $B0, $49, $C9, $4B, $E1, $72, 
$21, $17, $6C, $6D, $6D, $D1, $ED, $ED, $2D, $3D, $3E, $3E, $EA, $4A, $B0, $09, $B6, $C1, $C6, $70, 
$B9, $16, $16, $16, $E8, $EE, $EE, $8E, $5E, $5E, $5E, $78, $9C, $48, $84, $31, $DE, $2A, $1A, $E3, 
$C1, $36, $D8, $18, $2E, $17, $72, $9A, $62, $87, $CF, $E7, $A3, $F4, $F4, $74, $A1, $72, $72, $72, 
$58, $5A, $ED, $B8, $56, $CD, $15, $AD, $F1, $B4, $F2, $6E, $A8, $5C, $98, $9B, $DC, $DC, $DC, $7C, 
$48, $B8, $56, $CD, $15, $AD, $F1, $22, $E5, $8A, $8F, $8F, $0F, $B0, $2D, $54, $89, $AE, $8D, $D6, 
$78, $B2, $71, $69, $F9, $AF, $AC, $5C, $07, $07, $07, $1C, $BF, $D1, $EE, $76, $BB, $F9, $FC, $E8, 
$E8, $48, $7A, $AE, $FA, $FA, $7A, $4A, $4B, $4B, $E3, $F6, $C4, $C4, $44, $3E, $EF, $E9, $E9, $89, 
$39, $57, $5F, $5F, $5F, $50, $8D, $8F, $8F, $87, $C4, $85, $FB, $82, $FE, $05, $05, $05, $DC, $F6, 
$56, $5E, $AF, $97, $DB, $94, $FB, $16, $0B, $AE, $94, $94, $94, $A0, $AA, $AB, $AB, $0B, $89, $AB, 
$BB, $BB, $9B, $FB, $27, $24, $24, $04, $70, $21, $FE, $A1, $0D, $39, $38, $56, $5C, $6A, $1B, $D4, 
$C2, $FA, $42, $30, $2E, $3C, $4F, $88, $0F, $45, $45, $45, $EF, $8E, $55, $5E, $5E, $CE, $7D, $65, 
$E0, $52, $EA, $76, $D1, $7D, $52, $0B, $CF, $1B, $FA, $C6, $9A, $CB, $EF, $F7, $07, $E4, $50, $CC, 
$75, $82, $71, $61, $AE, $87, $7E, $B8, $F6, $3D, $2E, $D4, $C1, $E8, $1B, $6B, $AE, $AE, $AE, $AE, 
$0F, $C7, $C3, $B1, $B1, $31, $AA, $AC, $AC, $A4, $8C, $8C, $8C, $00, $1E, $D4, $F4, $68, $DB, $DF, 
$DF, $FF, $94, $E7, $2B, $12, $AE, $87, $87, $07, $BE, $B7, $1E, $8F, $27, $80, $AB, $AD, $AD, $8D, 
$DB, $9E, $9E, $9E, $A4, $E3, $52, $34, $3A, $3A, $FA, $D7, $27, $71, $9F, $70, $BE, $B4, $B4, $F4, 
$5F, $F3, $97, $A8, $5E, $50, $3F, $5F, $5A, $7D, $44, $5C, $A2, $BE, $17, $17, $17, $74, $7E, $7E, 
$CE, $ED, $F0, $3D, $9C, $5F, $5D, $5D, $69, $8E, $17, $29, $17, $FC, $43, $54, $33, $E0, $6F, $60, 
$0D, $19, $4A, $4E, $4E, $16, $F6, $C1, $B5, $6A, $2E, $AD, $F1, $94, $3A, $05, $E3, $21, $F6, $BD, 
$37, $5E, $A4, $5C, $F0, $EF, $8F, $D6, $15, $4A, $6D, $FA, $56, $D1, $1A, $2F, $52, $2E, $BD, $CA, 
$E4, $32, $B9, $4C, $2E, $93, $CB, $E4, $8A, $1E, $17, $72, $22, $DE, $3D, $6B, $49, $56, $AE, $E6, 
$E6, $66, $1A, $1A, $1A, $D2, $CC, $97, $B2, $72, $9D, $9D, $9D, $F1, $1A, $D1, $E1, $E1, $A1, $A1, 
$FC, $F0, $F9, $F9, $99, $E6, $E7, $E7, $A9, $A2, $A2, $82, $EE, $EF, $EF, $0D, $15, $37, $50, $DF, 
$B6, $B4, $B4, $50, $6B, $6B, $AB, $E1, $E2, $21, $6A, $07, $97, $CB, $45, $53, $53, $53, $86, $8B, 
$F3, $2B, $2B, $2B, $E4, $74, $3A, $E9, $F8, $F8, $D8, $50, $5C, $F0, $47, $F8, $62, $6D, $6D, $2D, 
$D7, $F0, $46, $CA, $CB, $D8, $AB, $53, $5C, $5C, $4C, $9D, $9D, $9D, $52, $73, $89, $72, $31, $6A, 
$64, $AC, $C5, $CA, $CC, $15, $AC, $86, $35, $E7, $87, $9F, $CF, $85, $77, $D2, $A2, $77, $DE, $7A, 
$11, $6C, $0B, $F6, $DE, $1C, $6B, $3F, $58, $A3, $53, $B7, $6D, $6C, $6C, $D0, $E6, $E6, $26, $5D, 
$5F, $5F, $EB, $8E, $09, $BE, $0F, $DB, $60, $A3, $DA, $6E, $B0, $80, $A9, $B4, $B4, $94, $F7, $59, 
$8A, $B8, $F1, $5E, $0A, $FD, $F0, $7F, $D1, $93, $96, $97, $97, $D9, $36, $91, $CD, $58, $9F, $05, 
$D3, $E4, $E4, $24, $65, $65, $65, $F1, $BE, $3D, $AD, $FD, $61, $7A, $94, $C8, $D6, $8E, $8E, $0E, 
$66, $01, $13, $E6, $E9, $D8, $D7, $9B, $9B, $9B, $CB, $75, $88, $C8, $27, $F5, $2E, $CC, $7F, $86, 
$87, $87, $79, $1F, $2C, $58, $C0, $84, $FC, $7A, $7A, $7A, $CA, $7B, $64, $1B, $1A, $1A, $78, $5D, 
$1C, $EF, $9A, $64, $52, $61, $61, $21, $35, $36, $36, $D2, $C4, $C4, $04, $B3, $80, $E9, $17, $72, 
$37, $19, $62, 0 );
implementation
end.