// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_88;
interface
const
  TByteArray_left: Array [0..1281] of Byte = (
$00, $08, $6C, $65, $66, $74, $2E, $62, $6D, $70, $36, $0C, $00, $00, $EF, $04, $00, $00, $78, 
$DA, $A5, $56, $59, $6C, $1B, $55, $14, $2D, $3F, $08, $91, $45, $20, $24, $54, $E0, $A7, $9F, $48, 
$FC, $17, $3E, $90, $40, $A1, $29, $55, $A1, $02, $54, $B9, $AD, $D8, $5B, $50, $A5, $82, $F8, $08, 
$AD, $A0, $2A, $81, $F6, $A3, $80, $5A, $20, $15, $6B, $63, $05, $2A, $95, $84, $20, $91, $AD, $44, 
$4D, $89, $5D, $D2, $C6, $5B, $6A, $BB, $E3, $25, $8B, $63, $27, $8E, $63, $8F, $3D, $8E, $C7, $76, 
$62, $8F, $97, $D8, $71, $12, $28, $67, $E6, $C5, $AF, $2F, $E3, $38, $2A, $EA, $D1, $F3, $F5, $AC, 
$E7, $DC, $7B, $EE, $9B, $37, $D3, $B0, $67, $7B, $ED, $16, $05, $DB, $F1, $7B, $1C, $BF, $6D, $6B, 
$BF, $7B, $B6, $6C, $25, $27, $70, $FE, $D2, $83, $E4, $57, $C6, $AD, $8D, $30, $3F, $3F, $3F, $75, 
$07, $F0, $79, $27, $A7, $A7, $A6, $56, $56, $56, $6E, $FD, $4F, $B8, $5C, $AE, $54, $2A, $05, $95, 
$64, $32, $B9, $B0, $B0, $80, $0D, $EC, $62, $83, $8D, $A2, $28, $06, $02, $01, $CF, $18, $67, $34, 
$1A, $36, $97, $F8, $B7, $02, $4E, $A7, $73, $75, $75, $75, $79, $79, $79, $45, $C1, $AA, $82, $7F, 
$14, $E0, $2C, $6E, $C1, $6E, $A1, $50, $88, $C5, $62, $76, $9B, $CD, $62, $32, $E0, $FA, $52, $A9, 
$54, $CD, $0A, $64, $EB, $64, $E0, $70, $38, $3A, $3B, $3B, $41, $45, $F8, $55, $E4, $84, $1F, $DB, 
$C5, $62, $11, $FC, $36, $AB, $F5, $CA, $C0, $80, $DB, $ED, $32, $59, $CC, $38, $52, $C9, $0F, $1B, 
$51, $2C, $65, $20, $A0, $F9, $6F, $28, $41, $F9, $13, $F1, $B8, $83, $E3, $FA, $7A, $7B, $BD, $DE, 
$49, $BF, $DF, $6F, $B7, $DB, $17, $17, $17, $2B, $F9, $61, $B2, $CA, $0A, $F0, $93, $FC, $29, $BF, 
$2A, $7F, $44, $9C, $42, $23, $7C, $5E, $AF, $4E, $37, $A8, $D7, $0D, $C2, $1F, $FF, $8C, $DF, $6C, 
$56, $57, $51, $8D, $9F, $CD, $7F, $43, $09, $1C, $CC, $E5, $72, $82, $10, $B1, $D9, $6C, $3D, $3D, 
$DD, $F9, $5C, $0E, $C9, $CF, $CC, $CC, $DC, $E4, $B8, $A5, $A5, $A5, $3B, $E1, $47, $4A, $D5, $5A, 
$0C, $60, $03, $3C, $E9, $74, $1A, $B3, $C8, $68, $30, $E8, $75, $BA, $6B, $D7, $86, $46, $47, $47, 
$3D, $93, $1E, $A3, $D9, $44, $DB, $5D, $C9, $8F, $A8, $F2, $A7, $5A, $97, $71, $04, $6E, $C0, $A5, 
$50, $28, $E4, $76, $BB, $4D, $26, $A3, $5E, $AF, $1F, $1E, $BE, $EE, $74, $70, $98, $32, $B8, $F7, 
$2E, $F9, $11, $71, $10, $55, $64, $32, $99, $78, $3C, $CE, $F3, $FC, $8C, $DF, $0F, $C2, $60, $70, 
$36, $18, $F0, $61, $83, $F2, $B3, $56, $10, $7E, $72, $E3, $E6, $16, $51, $A3, $70, $0D, $0A, $41, 
$3B, $32, $0A, $B2, $D9, $6C, $61, $31, $87, $69, $8F, $B3, $94, $5F, $95, $3F, $F1, $9F, $F0, $6F, 
$2E, $41, $0A, $C1, $11, $72, $0D, $B9, $18, $BB, $84, $7F, $7A, $7A, $3A, $91, $48, $20, $55, $96, 
$07, $8F, $18, $22, $52, $22, $C7, $53, $52, $AA, $AD, $AB, $6D, $EF, $91, $3D, $62, $32, $C6, $3E, 
$29, $AC, $44, $E5, $3A, $C0, $F2, $97, $4A, $B7, $F9, $11, $09, $3F, $56, $00, $F0, $4F, $05, $7D, 
$1F, $9C, $7C, $BF, $BE, $E5, $F0, $73, $87, $9E, $8E, $C6, $22, $AA, $2A, $54, $5E, $B1, $8A, $AA, 
$FC, $A9, $D5, $88, $1C, $C7, $61, $23, $93, $CB, $18, $6D, $C3, $4F, $35, $ED, $AA, $EF, $3A, $71, 
$9F, $4B, $BB, $E3, $F0, $33, $82, $78, $9B, $5F, $F5, $C8, $57, $4A, $50, $7E, $B4, $1E, $56, $10, 
$B7, $29, $BF, $94, $93, $BE, $6D, $3F, $B7, $ED, $0B, $4D, $5D, $E0, $8F, $BA, $58, $6F, $8D, $EF, 
$E2, $8E, $F7, $9E, $A5, $FC, $D5, $54, $28, $D8, $FC, $C1, $4F, $AC, $20, $25, $2C, $95, $96, $F4, 
$D7, $75, $6F, $9D, $3D, $F8, $C0, $C5, $23, $75, $42, $6F, $BD, $78, $A9, $2E, $F4, $FB, $FD, $9E, 
$0B, $CF, $37, $35, $80, $9F, $9D, $66, $AB, $EB, $A1, $2A, $87, $CE, $1F, $F0, $E3, $D1, $A6, $DD, 
$BC, $6C, $E9, $6F, $3C, $FD, $4A, $CD, $E5, $E6, $5A, $D7, $0F, $B5, $DE, $9F, $31, $6A, $C6, $B4, 
$35, $DC, $77, $BB, $8F, $37, $0A, $F1, $08, $F5, $B0, $9A, $0A, $01, $CB, $8F, $65, $16, $FC, $28, 
$01, $86, $B7, $0E, $FC, $F4, $44, $8B, $E6, $E1, $BE, $A3, $5B, $AF, $9E, $7A, $D4, $7C, $F6, $31, 
$DB, $B9, $47, $AC, $2D, $0F, $99, $BE, $BC, $77, $E8, $D4, $8B, $CD, $BB, $C2, $62, $98, $CE, $58, 
$56, $82, $9D, $DB, $24, $D2, $F9, $59, $E6, $CF, $2B, $FC, $92, $76, $B0, $F5, $49, $ED, $6B, $0D, 
$43, $67, $1A, $47, $7E, $DC, $79, $B3, $6D, $A7, $E3, $97, $46, $0C, $7B, $EB, $7E, $FB, $85, $97, 
$3F, $7F, $21, $12, $0F, $13, $1B, $37, $51, $21, $58, $CF, $3F, $97, $53, $56, $3F, $B9, $8A, $62, 
$E1, $8A, $E3, $2F, $8D, $F6, $4D, $CD, $DF, $5F, $BD, $ED, $6C, $3F, $E8, $FE, $4D, $1E, $AE, $8E, 
$63, $63, $DD, $7B, $BF, $79, $89, $17, $F9, $62, $51, $EE, $54, $A5, $8A, $0A, $A8, $82, $F2, $CF, 
$CD, $C9, $FC, $F9, $FC, $9A, $04, $A0, $37, $EA, $8F, $75, $7F, $BC, $AF, $E7, $C3, $4F, $3C, $7D, 
$CD, $BE, $FE, $66, $EF, $9F, $5F, $4F, $EB, $34, $DF, $6B, $C0, $4F, $9C, $2C, $2A, $60, $85, $54, 
$50, $F1, $67, $B3, $19, $22, $51, $28, $2C, $E6, $F3, $79, $AB, $D5, $9A, $CE, $49, $E7, $F5, $DA, 
$FD, $1D, $EF, $9E, $1E, $EB, $3A, $2F, $8C, $74, $CC, $71, $FB, $B4, $07, $42, $22, $8F, $B3, $05, 
$19, $44, $A5, $C0, $AA, $B0, $91, $F5, $27, $1A, $8D, $2A, $8B, $92, $2C, $A1, $A8, $E4, $6F, $58, 
$6F, $C8, $AF, $BF, $F9, $84, $61, $CC, $F0, $7A, $FB, $3B, $27, $2D, $6D, $83, $99, $C0, $81, $B6, 
$57, $43, $B1, $10, $B9, $00, $58, $F3, $53, $11, $2A, $57, $44, $63, $01, $2D, $60, $F9, $25, $49, 
$A2, $12, $58, $FD, $46, $46, $46, $70, $1D, $F9, $2C, $F1, $F0, $DE, $E3, $DD, $9F, $7E, $76, $F5, 
$CC, $1B, $BF, $1E, $0A, $C6, $82, $38, $4B, $D2, $00, $39, $51, $81, $04, $31, $AD, $AC, $25, $47, 
$96, $5F, $10, $84, $74, $3A, $25, $49, $69, $AA, $62, $B1, $58, $D0, $68, $7C, $FE, $2C, $28, $88, 
$C6, $A3, $7D, $5C, $7F, $53, $CF, $47, $7C, $8C, $2F, $AF, $C0, $C8, $24, $4B, $EB, $85, $B1, $E5, 
$A2, $C8, $7F, $1E, $2D, $A6, $FC, $91, $48, $38, $A5, $00, $12, $B8, $17, $2A, $16, $8B, $19, $39, 
$24, $12, $71, $48, $50, $15, $E4, $40, $D2, $50, $14, $D6, $32, $51, $46, $96, $16, $45, $C1, $F2, 
$87, $C3, $61, $F2, $55, $06, $E0, $7D, $0A, $06, $E4, $8F, $02, $CB, $F6, $CA, $8F, $36, $33, $67, 
$D6, $1A, $4A, $81, $96, $2A, $43, $3D, $7F, $F0, $2E, $2E, $E7, $1F, $51, $F2, $9C, $57, $54, $E4, 
$3C, $E1, $D8, $F8, $F8, $F8, $C4, $C4, $04, $89, $04, $1E, $0F, $19, $9E, $C9, $C9, $75, $03, $8B, 
$B9, $D1, $68, $E4, $2B, $80, $2A, $C8, $FB, $31, $1C, $E6, $93, $C9, $04, $23, $91, $2A, $5B, $21, 
$91, $8E, $6C, $68, $85, $6C, $BA, $02, $3C, $9E, $E4, $55, $BB, $21, $B0, $7E, $E2, $D3, $0B, $12, 
$F8, $92, $01, $04, $05, $D1, $28, $46, $74, $8E, $01, $D6, $10, $12, $01, $51, $24, $51, $24, $BB, 
$B3, $B3, $B3, $20, $A9, $C6, $0F, $93, $41, $25, $DC, $1D, $2A, $3F, $0B, $29, $FE, $03, $BD, $28, 
$DF, $DC, 0 );
implementation
end.
