// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_16;
interface
const
  TByteArray_c64key10: Array [0..1484] of Byte = (
$00, $0C, $63, $36, $34, $6B, $65, $79, $31, $30, $2E, $62, $6D, $70, $6A, $2C, $00, $00, $B6, 
$05, $00, $00, $78, $DA, $ED, $5A, $59, $48, $95, $5B, $14, $F6, $5E, $41, $1C, $10, $1F, $84, $4C, 
$41, $71, $C8, $52, $34, $95, $10, $07, $D4, $D2, $32, $AC, $E8, $3E, $A8, $88, $86, $13, $48, $A5, 
$DC, $07, $45, $AF, $0A, $E2, $45, $B1, $7A, $F1, $82, $20, $58, $4F, $05, $51, $09, $21, $2A, $41, 
$E2, $8C, $F3, $3C, $8F, $E0, $88, $0A, $39, $A7, $65, $A9, $4D, $0A, $EB, $FA, $AD, $F8, $CF, $FD, 
$CF, $39, $FF, $83, $27, $0F, $F7, $0C, $78, $70, $E1, $D9, $7B, $FF, $C3, $FA, $F6, $DE, $6B, $AD, 
$6F, $AD, $7D, $AE, $FE, $F1, $A7, $BB, $01, $7F, $FE, $39, $92, $BF, $8F, $C4, $FB, $48, $7C, $8E, 
$E4, $37, $03, $7B, $03, $C3, $A3, $FF, $4B, $6E, $06, $06, $4E, $1E, $3F, $E5, $BF, $0F, $09, $7F, 
$DC, $B8, $1A, $16, $F1, $97, $81, $8A, $9F, $DF, $15, $DA, $EF, $DE, $BD, $A3, $C9, $C9, $49, $BA, 
$75, $EB, $16, $D9, $D9, $D9, $D1, $CF, $97, $9C, $5C, $0C, $0D, $0D, $C9, $C8, $C8, $88, $CC, $CC, 
$CC, $94, $04, $FD, $18, $57, $D7, $BB, $EC, $ED, $ED, $E9, $C6, $8D, $1B, $34, $31, $31, $41, $E5, 
$E5, $E5, $74, $FE, $FC, $79, $4A, $4D, $4D, $A5, $97, $2F, $5F, $52, $7B, $7B, $BB, $CE, $49, $69, 
$69, $29, $DD, $B9, $73, $87, $71, $24, $26, $26, $52, $5E, $5E, $1E, $F5, $F6, $F6, $52, $7F, $7F, 
$3F, $0D, $0E, $0E, $EA, $9C, $40, $EF, $9E, $9E, $1E, $4A, $49, $49, $A1, $2B, $57, $AE, $50, $5F, 
$5F, $9F, $4E, $E2, $50, $14, $60, $8A, $89, $89, $D1, $0B, $2C, $82, $C0, $6E, $F4, $09, $4F, $5A, 
$5A, $DA, $29, $9E, $53, $3C, $1A, $C7, $D3, $D2, $D2, $42, $4D, $4D, $4D, $54, $57, $57, $A7, $75, 
$02, $BD, $5A, $5B, $5B, $8F, $8D, $07, $B1, $08, $F7, $AD, $AD, $AD, $D1, $F7, $EF, $DF, $B5, $4E, 
$56, $57, $57, $A9, $BE, $BE, $9E, $F5, $3C, $0E, $9E, $CE, $CE, $4E, $1A, $1B, $1B, $A3, $83, $83, 
$03, $3A, $3C, $3C, $D4, $3A, $81, $5E, $D0, $0F, $7A, $1E, $07, $0F, $38, $C4, $F4, $F4, $B4, $56, 
$62, $11, $04, $FA, $41, $CF, $53, $3C, $3F, $A5, $B9, $B9, $99, $7C, $7C, $7C, $C8, $C3, $C3, $83, 
$72, $72, $72, $7E, $79, $2F, $C2, $96, $C1, $E5, $BD, $BC, $BC, $C8, $D3, $D3, $93, $12, $12, $12, 
$68, $6E, $6E, $4E, $36, $3E, $3F, $3F, $4F, $36, $36, $36, $72, $F7, $C0, $66, $2E, $5F, $BE, $CC, 
$FC, $5F, $5D, $78, $22, $22, $22, $E8, $ED, $DB, $B7, $F4, $F1, $E3, $47, $0A, $0B, $0B, $A3, $D7, 
$AF, $5F, $AB, $8C, $05, $3E, $D3, $D9, $D9, $99, $7D, $CD, $E7, $CF, $9F, $E9, $D3, $A7, $4F, $CC, 
$8D, $DD, $DC, $DC, $08, $79, $0B, $AE, $99, $9D, $9D, $25, $0B, $0B, $0B, $B9, $FB, $9E, $3D, $7B, 
$46, $17, $2F, $5E, $24, $4B, $4B, $4B, $B5, $E1, $D9, $DB, $DB, $E3, $79, $C2, $F7, $57, $AF, $5E, 
$51, $78, $78, $B8, $CA, $78, $42, $43, $43, $A9, $A4, $A4, $44, $F6, $1C, $C8, $B7, $6F, $DF, $98, 
$73, $65, $66, $66, $4A, $E2, $D9, $DA, $DA, $E2, $39, $A8, $AC, $AC, $54, $2B, $9E, $A1, $A1, $21, 
$BA, $76, $ED, $1A, $F3, $F1, $C2, $C2, $42, $BA, $70, $E1, $82, $4A, $58, $B0, $1E, $C8, $E5, $96, 
$96, $96, $94, $C6, $6A, $6B, $6B, $79, $FF, $49, $E1, $C9, $C8, $C8, $A0, $F4, $F4, $74, $D6, $47, 
$9D, $78, $7C, $7D, $7D, $A9, $B8, $B8, $98, $F7, $1B, $E6, $D3, $CA, $CA, $4A, $25, $3C, $8B, $8B, 
$8B, $64, $62, $62, $42, $3F, $7E, $FC, $50, $1A, $83, $EF, $15, $6C, $46, $8C, $07, $FD, $58, $9B, 
$8D, $8D, $0D, $EE, $57, $17, $9E, $F7, $EF, $DF, $93, $A9, $A9, $29, $63, $41, $BB, $BB, $BB, $9B, 
$6C, $6D, $6D, $55, $C2, $B3, $BD, $BD, $4D, $C6, $C6, $C6, $B4, $BE, $BE, $2E, $E9, $23, $5C, $5D, 
$5D, $95, $F0, $C0, $6F, $3C, $7D, $FA, $94, $7D, $8F, $3A, $F1, $60, $7E, $30, $B7, $5F, $BE, $7C, 
$E1, $36, $E2, $58, $40, $40, $80, $CA, $31, $F0, $D2, $A5, $4B, $6C, $7B, $8A, $63, $D9, $D9, $D9, 
$74, $EF, $DE, $3D, $39, $3C, $15, $15, $15, $EC, $D3, $BE, $7E, $FD, $2A, $EB, $57, $17, $1E, $E8, 
$E2, $EE, $EE, $2E, $F3, $69, $C8, $6B, $1F, $3D, $7A, $A4, $B2, $3F, $80, $4D, $23, $C7, $EF, $EA, 
$EA, $92, $3D, $B7, $AC, $AC, $8C, $EB, $19, $53, $53, $53, $32, $BD, $CD, $CD, $CD, $D9, $E7, $75, 
$74, $74, $C8, $EE, $55, $27, $1E, $08, $74, $C0, $7C, $C1, $6E, $51, $7B, $10, $F6, $9E, $2A, $02, 
$BF, $F6, $E6, $CD, $1B, $F6, $73, $F0, $BF, $88, $3F, $D1, $D1, $D1, $34, $30, $30, $20, $B3, $2B, 
$E8, $8D, $7D, $79, $FF, $FE, $7D, $39, $5B, $53, $37, $1E, $3C, $7B, $77, $77, $97, $FD, $14, $7C, 
$F7, $AF, $C6, $75, $60, $12, $9E, $23, $3C, $4B, $AC, $37, $BE, $23, $2E, $ED, $EF, $EF, $2B, $BD, 
$1F, $FD, $A7, $7C, $E7, $14, $8F, $58, $A4, $F8, $97, $C0, $FF, $CE, $9D, $3B, $C7, $7E, $5B, $DC, 
$7F, $F3, $E6, $4D, $F6, $CB, $8A, $D7, $83, $07, $05, $06, $06, $72, $DC, $F3, $F3, $F3, $63, $1F, 
$B4, $B9, $B9, $F9, $BF, $E3, $91, $E2, $5F, $D8, $FB, $F0, $EF, $45, $45, $45, $72, $3C, $16, $3C, 
$14, $3C, $03, $BE, $13, $F3, $20, $F4, $B7, $B5, $B5, $91, $A3, $A3, $23, $73, $12, $D8, $D8, $CE, 
$CE, $0E, $E5, $E7, $E7, $53, $7C, $7C, $BC, $56, $E0, $41, $1D, $19, $3A, $43, $37, $71, $7F, $41, 
$41, $01, $73, $0D, $70, $9A, $87, $0F, $1F, $CA, $FA, $17, $16, $16, $38, $C6, $8A, $FD, $04, $6A, 
$85, $0E, $0E, $0E, $1A, $C7, $03, $0C, $88, $39, $88, $8F, $8A, $6B, $E6, $E2, $E2, $C2, $31, $06, 
$7C, $03, $FC, $40, $D0, $1F, $6B, $28, $E6, $AC, $E3, $E3, $E3, $14, $15, $15, $C5, $7E, $5E, $13, 
$78, $C0, $25, $B0, $EF, $21, $E0, $04, $C0, $87, $F7, $7C, $F8, $F0, $41, $8E, $E3, $20, $66, $02, 
$03, $04, $79, $15, $F2, $09, $31, $AF, $CE, $CD, $CD, $E5, $18, $85, $B8, $73, $FB, $F6, $6D, $59, 
$CC, $D5, $C4, $FA, $08, $F1, $05, $02, $CE, $96, $9C, $9C, $CC, $B9, $9B, $70, $5D, $52, $52, $12, 
$DB, $84, $D0, $7E, $F0, $E0, $01, $DD, $BD, $7B, $57, $B6, $3E, $41, $41, $41, $1C, $BF, $9F, $3F, 
$7F, $CE, $FB, $0F, $71, $4A, $6C, $7B, $9A, $B4, $1F, $08, $6A, $31, $C2, $FE, $87, $7D, $9F, $39, 
$73, $46, $6E, $BE, $67, $66, $66, $98, $B3, $23, $66, $A2, $7E, $83, $DC, $62, $65, $65, $85, $F3, 
$23, $E0, $C0, $3D, $62, $FB, $D3, $B4, $7F, $83, $ED, $E3, $CC, $09, $6D, $CC, $39, $E6, $5F, $6C, 
$EF, $D0, $19, $B9, $D5, $8B, $17, $2F, $18, $C3, $D9, $B3, $67, $D9, $CF, $61, $0C, $9C, $14, $E7, 
$3A, $C8, $F3, $35, $6D, $3F, $10, $6F, $6F, $6F, $3E, $C7, $C0, $98, $90, $A7, $3E, $7E, $FC, $58, 
$E9, $DE, $27, $4F, $9E, $D0, $F5, $EB, $D7, $F9, $7B, $63, $63, $23, $5F, $E7, $EF, $EF, $CF, $36, 
$08, $3C, $C8, $5B, $4E, $8A, $07, $6B, $8C, $B9, $C4, $59, $DE, $71, $F0, $08, $3C, $4B, $6C, $3F, 
$02, $4F, $13, $F6, $3F, $F8, $9B, $90, $07, $88, $05, $7D, $18, $93, $E2, $79, $E0, $73, $EA, $B0, 
$1F, $3C, $03, $F5, $0B, $C4, $43, $6D, $AA, $2F, $9E, $64, $BF, $61, $AE, $B0, $46, $55, $55, $55, 
$7A, $C3, $DF, $90, $BF, $09, $39, $A4, $3E, $E0, $69, $68, $68, $E0, $D8, $A6, $2F, $78, $46, $46, 
$46, $C8, $DA, $DA, $5A, $6F, $F0, $8C, $8E, $8E, $72, $4C, $D0, $17, $3C, $E0, $5B, $E0, $C8, $FA, 
$82, $07, $35, $51, $C4, $34, $7D, $C1, $13, $1C, $1C, $CC, $BF, $8D, $D1, $07, $3C, $68, $83, $B3, 
$48, $C5, $74, $5D, $C3, $03, $AE, $01, $6E, $80, $1A, $99, $3E, $D4, $43, $C0, $71, $C0, $A3, $A4, 
$EA, $E8, $BA, $82, $07, $F5, $E9, $E1, $E1, $61, $AD, $AE, $57, $41, $3F, $A9, $F3, $E0, $D8, $D8, 
$58, $A5, $3E, $EC, $AD, $9A, $9A, $1A, $CE, $0B, $B5, $11, $0B, $CE, $90, $A0, $1F, $F4, $54, $D4, 
$1D, $79, $A2, $D4, $EF, $12, $50, $AF, $46, $CD, $0C, $3C, $47, $DB, $04, $7A, $41, $3F, $29, $BD, 
$E1, $87, $23, $23, $23, $25, $C7, $80, $5F, $5B, $45, $4A, $5F, $E0, $A8, $AE, $AE, $26, $27, $27, 
$27, $8A, $8B, $8B, $E3, $9A, $92, $2E, $FE, $66, $07, $67, $16, $A8, $AF, $00, $07, $EA, $42, $CB, 
$CB, $CB, $94, $95, $95, $45, $21, $21, $21, $7C, $0E, $A7, $6B, $82, $9A, $31, $CE, $C4, $80, $E3, 
$5F, $C7, $7E, $9E, $E6, 0 );
implementation
end.
