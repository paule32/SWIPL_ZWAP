// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_23;
interface
const
  TByteArray_c64key17: Array [0..1016] of Byte = (
$00, $0C, $63, $36, $34, $6B, $65, $79, $31, $37, $2E, $62, $6D, $70, $0A, $44, $00, $00, $E2, 
$03, $00, $00, $78, $DA, $ED, $DB, $DB, $2B, $AC, $6B, $1C, $07, $F0, $61, $B9, $70, $28, $17, $14, 
$39, $2B, $91, $0B, $ED, $70, $B1, $5C, $09, $63, $D5, $42, $ED, $DA, $6D, $11, $11, $C2, $85, $14, 
$CA, $C2, $8D, $9D, $76, $2E, $57, $F9, $27, $70, $87, $94, $22, $94, $43, $CE, $A7, $48, $28, $E4, 
$54, $E4, $94, $B3, $C8, $A9, $BE, $6B, $BE, $CF, $DA, $AF, $3D, $66, $BD, $8B, $E5, $B0, $5A, $6B, 
$66, $7E, $93, $6F, $D3, $BC, $A7, $F1, $7E, $E6, $7D, $9F, $F7, $37, $EF, $F3, $8C, $F1, $4F, $D7, 
$0F, $06, $F5, $F8, $6C, $CA, $3F, $A6, $FC, $65, $CA, $7B, $53, $1C, $0C, $C1, $86, $77, $A6, $E7, 
$7F, $13, $0D, $86, $90, $3F, $BE, $E6, $FF, $07, $B4, $3F, $F5, $C2, $F8, $F1, $EF, $4F, $86, $67, 
$3E, $1C, $2D, $5E, $6F, $6E, $6E, $62, $7E, $7E, $1E, $29, $29, $29, $08, $0C, $0C, $C4, $D7, $37, 
$F9, $35, $71, $74, $74, $84, $93, $93, $13, $9C, $9D, $9D, $E1, $E6, $E6, $F6, $20, $2E, $2E, $2E, 
$6A, $9E, $83, $83, $C3, $2F, $FD, $1F, $83, $83, $83, $91, $94, $94, $84, $B9, $B9, $39, $D0, $AE, 
$A9, $A9, $09, $61, $61, $61, $28, $2D, $2D, $45, $7D, $7D, $3D, $06, $06, $06, $24, $8F, $A4, $B1, 
$B1, $11, $99, $99, $99, $CA, $8C, $76, $B9, $B9, $B9, $A8, $A9, $A9, $C1, $D8, $D8, $18, $26, $26, 
$26, $30, $35, $35, $25, $79, $24, $34, $1A, $1D, $1D, $45, $51, $51, $11, $0A, $0B, $0B, $11, $17, 
$17, $87, $F1, $F1, $71, $B1, $79, $66, $68, $18, $14, $14, $84, $8C, $8C, $0C, $F1, $78, $61, $D2, 
$D2, $D2, $54, $BB, $27, $16, $2F, $0B, $ED, $CA, $CA, $CA, $C4, $E2, $85, $A1, $9D, $F8, $89, $DF, 
$EF, $E8, $D7, $D7, $D7, $87, $9E, $9E, $1E, $74, $76, $76, $DA, $75, $68, $D0, $DF, $DF, $FF, $2C, 
$3F, $D6, $82, $5C, $77, $67, $67, $07, $D7, $D7, $D7, $76, $9D, $ED, $ED, $6D, $74, $75, $75, $29, 
$93, $1F, $F5, $1B, $1A, $1A, $C2, $EC, $EC, $2C, $6E, $6F, $6F, $71, $77, $77, $67, $D7, $A1, $01, 
$2D, $68, $F2, $A3, $7E, $FC, $9E, $B2, $B8, $B8, $68, $F7, $76, $5A, $68, $41, $13, $F1, $13, $3F, 
$F1, $13, $3F, $F1, $13, $3F, $F1, $13, $3F, $F1, $13, $3F, $F1, $13, $3F, $F1, $13, $3F, $F1, $FB, 
$39, $7E, $EB, $EB, $EB, $28, $29, $29, $41, $44, $44, $04, $FC, $FD, $FD, $11, $1D, $1D, $8D, $EA, 
$EA, $6A, $1C, $1D, $1D, $E9, $2E, $3F, $32, $32, $02, $4F, $4F, $4F, $9C, $9D, $9D, $E9, $4E, $D7, 
$5B, $AF, $A1, $A1, $01, $01, $01, $01, $58, $59, $59, $B9, $5F, $CE, $D7, $D7, $F7, $41, $C2, $C3, 
$C3, $AD, $CE, $6F, $79, $79, $19, $21, $21, $21, $28, $28, $28, $C0, $C2, $C2, $02, $4E, $4E, $4E, 
$30, $33, $33, $83, $D4, $D4, $54, $C4, $C4, $C4, $E0, $F8, $F8, $F8, $9B, $75, $06, $07, $07, $D5, 
$F8, $83, $D3, $D3, $53, $DD, $E9, $87, $87, $87, $0F, $A6, $73, $0C, $00, $3F, $97, $BA, $BA, $3A, 
$DC, $DC, $DC, $DC, $2F, $C7, $E9, $DC, $86, $16, $CB, $CF, $C3, $1A, $FC, $E8, $14, $1F, $1F, $8F, 
$8B, $8B, $8B, $FB, $7B, $89, $DC, $47, $EE, $8F, $D1, $68, $44, $5B, $5B, $DB, $AB, $FD, $D2, $D3, 
$D3, $91, $90, $90, $80, $CB, $CB, $CB, $47, $97, $B3, $B6, $F3, $97, $E7, $99, $BB, $BB, $3B, $5A, 
$5A, $5A, $74, $E7, $9F, $9F, $9F, $E3, $EA, $EA, $EA, $55, $7E, $3C, $6F, $BD, $BC, $BC, $D4, $F8, 
$9D, $A7, $9C, $AD, $CD, $8F, $E7, $29, $F7, $63, $69, $69, $E9, $59, $EB, $3D, $E5, $E7, $E3, $E3, 
$73, $DF, $A6, $79, $78, $78, $C0, $DB, $DB, $1B, $B5, $B5, $B5, $36, $77, $FC, $71, $9C, $08, $F7, 
$63, $75, $75, $F5, $4D, $FD, $CC, $DB, $35, $1E, $E3, $BC, $AF, $1E, $15, $15, $85, $F2, $F2, $72, 
$9B, $F2, $DB, $DD, $DD, $55, $63, $CE, $BA, $BB, $BB, $DF, $D4, $CF, $D2, $85, $ED, $29, $C7, $8D, 
$F1, $38, $64, $1B, $6B, $2B, $7E, $DC, $97, $C4, $C4, $44, $75, $0D, $B1, $9C, $C7, $76, $8F, $EF, 
$CB, $7E, $99, $D7, $FA, $31, $AD, $AD, $AD, $AA, $66, $31, $BF, $FE, $5A, $BB, $1F, $C3, $6D, $B1, 
$9D, $AA, $AC, $AC, $54, $E7, $1D, $4D, $59, $D3, $E4, $E4, $E4, $20, $34, $34, $14, $7B, $7B, $7B, 
$AF, $F2, $A3, $17, $EB, $A2, $D8, $D8, $58, $64, $67, $67, $DB, $D4, $F9, $AB, $ED, $1F, $8F, $B1, 
$BC, $BC, $3C, $55, $BF, $B2, $4E, $63, $1D, $5D, $5C, $5C, $AC, $1C, $B5, $9A, $C6, $BC, $CE, $E5, 
$F5, $94, $FB, $6F, $3E, $ED, $7B, $D7, $0F, $3F, $3F, $3F, $44, $46, $46, $A2, $A2, $A2, $02, $FB, 
$FB, $FB, $36, $E7, $A7, $19, $B2, $FE, $63, $FD, $AA, $D5, $B1, $E6, $F5, $20, $63, $5E, $E7, $EA, 
$85, $CB, $B0, $2F, $5B, $6F, $1E, $B7, $C7, $6B, $AF, $B6, $3D, $6D, $B9, $B7, $EC, $BB, $96, $EF, 
$BF, $E2, $27, $7E, $E2, $27, $7E, $E2, $27, $7E, $E2, $27, $7E, $E2, $27, $7E, $E2, $27, $7E, $E2, 
$27, $7E, $FA, $E3, $C7, $A7, $A7, $A7, $C5, $EE, $BF, $D0, $E2, $7B, $E3, $C7, $B3, $B2, $B2, $BE, 
$99, $3E, $39, $39, $89, $8E, $8E, $0E, $AC, $AD, $AD, $D9, $BD, $DD, $C6, $C6, $86, $B2, $A0, $89, 
$A5, $13, $ED, $78, $BF, $4D, $EF, $B7, $21, $C3, $C3, $C3, $E8, $ED, $ED, $55, $F7, $DF, $ED, $39, 
$34, $A0, $85, $9E, $11, $ED, $D8, $3F, $CB, $7B, $EC, $7A, $F3, $69, $2E, $99, $D4, $B5, $D1, $FA, 
$B6, $DB, $DB, $DB, $D5, $18, $01, $DE, $FF, $6E, $6E, $6E, $96, $DF, $B5, $3D, $11, $F6, $B5, $E4, 
$E7, $E7, $2B, $33, $DA, $1D, $1C, $1C, $60, $6B, $6B, $4B, $F5, $51, $B0, $1F, $DF, $D5, $D5, $55, 
$F2, $48, $92, $93, $93, $51, $55, $55, $A5, $CC, $68, $F7, $05, $80, $19, $DC, $ED, 0 );
implementation
end.
