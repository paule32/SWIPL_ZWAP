// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_85;
interface
const
  TByteArray_frage: Array [0..2428] of Byte = (
$00, $09, $66, $72, $61, $67, $65, $2E, $62, $6D, $70, $8A, $19, $00, $00, $69, $09, $00, $00, 
$78, $DA, $ED, $98, $67, $54, $55, $67, $16, $86, $EF, $3D, $B7, $80, $28, $56, $2C, $98, $A8, $44, 
$27, $96, $D8, $A3, $63, $57, $44, $10, $10, $45, $8A, $A2, $52, $04, $41, $E9, $55, $40, $04, $44, 
$04, $A9, $16, $40, $05, $B1, $71, $69, $0B, $10, $47, $90, $22, $88, $A2, $54, $05, $A2, $C6, $86, 
$C6, $64, $28, $AE, $11, $0B, $88, $E0, $9A, $59, $FE, $98, $7F, $79, $67, $7F, $C7, $4B, $0C, $52, 
$CD, $E8, $4C, $7E, $F8, $2D, $F6, $0F, $D6, $85, $73, $9E, $B5, $BF, $BD, $F7, $FB, $EE, $BB, $4A, 
$FF, $A0, $AA, $80, $3F, $07, $29, $02, $28, $A6, $CA, $43, $28, $50, $13, $88, $D8, $07, $F4, $F9, 
$A4, $59, $EF, $E2, $FD, $41, $C7, $0F, $FF, $CB, $2A, $1D, $63, $2F, $C1, $47, $1E, $4E, $F0, $E5, 
$FC, $89, $8F, $F0, $83, $F8, $7F, $1F, $56, $2E, $8A, $14, $C3, $28, $C6, $52, $7C, $43, $F1, $17, 
$8A, $49, $14, $13, $28, $46, $51, $28, $53, $48, $FE, $C7, $BC, $EC, $7D, $23, $28, $BE, $53, $16, 
$0B, $B4, $96, $AB, $09, $1D, $0C, $BF, $13, $86, $6D, $9C, $29, $8C, $33, $9A, $21, $8C, $D7, $9D, 
$2C, $8C, $FA, $5E, $55, $E8, $AB, $C0, $09, $B6, $D1, $DF, $18, $52, $2C, $A6, $50, $A3, $18, $F4, 
$99, $5B, $80, $3D, $7B, $D8, $04, $65, $C1, $FC, $ED, $0B, $B8, $60, $4F, $75, $51, $F5, $EE, $55, 
$A2, $7F, $ED, $D2, $10, $C1, $7D, $B9, $08, $8E, $4B, $38, $D8, $2D, $E2, $B0, $63, $E1, $BB, $B0, 
$59, $C0, $BD, $35, $9B, $CB, $DD, $D7, $FE, $56, $98, $38, $48, $2C, $70, $A0, $FF, $D5, $95, $E7, 
$76, $C0, $67, $C8, $A7, $74, $AC, $92, $60, $A2, $C7, $0A, $2E, $2C, $48, $57, $D4, $BC, $4F, $5B, 
$04, $AF, $95, $22, $9E, $63, $EB, $62, $55, $D8, $6F, $D0, $86, $AB, $D5, $26, $38, $6F, $DD, $08, 
$AB, $F5, $9A, $58, $3B, $7B, $34, $28, $8F, $30, $9C, $2E, $84, $E9, $1C, $0E, $E6, $DF, $73, $ED, 
$F4, $7B, $A6, $44, $28, $B0, $A3, $67, $2D, $93, $E7, $FF, $53, $E5, $52, $C1, $6A, $1E, $A7, $1E, 
$AA, $27, $BE, $13, $B1, $56, $04, $7F, $2D, $11, $3C, $0D, $16, $E0, $68, $44, $30, $CE, $A6, $A5, 
$22, $2F, $37, $07, $E7, $B3, $CE, $23, $2D, $2D, $0D, $49, $C9, $49, $48, $4C, $4A, $84, $4C, $96, 
$80, $A3, $31, $51, $F0, $F5, $72, $87, $FE, $92, $59, $A0, $1C, $C2, $64, $16, $87, $CD, $B3, $B9, 
$C6, $E9, $2A, $82, $60, $7A, $E6, $3A, $79, $CD, $8A, $FE, $5B, $36, $BA, $3F, $E3, $28, $03, $71, 
$FB, $01, $7D, $31, $02, $D6, $4F, $43, $F2, $F1, $18, $5C, $BB, $5A, $8C, $8B, $05, $05, $C4, $93, 
$8C, $43, $07, $0F, $20, $D0, $D7, $1B, $3E, $AE, $76, $F0, $74, $B0, $81, $BB, $A3, $2D, $3C, $DC, 
$DD, $E0, $EB, $EB, $8B, $88, $88, $08, $C4, $C5, $C6, $22, $80, $3E, $5F, $3D, $5B, $0D, $6B, $A7, 
$F2, $F9, $7C, $BB, $78, $9C, $30, $96, $9E, $6D, $24, $67, $FC, $A3, $79, $14, $05, $AC, $16, $E9, 
$1F, $33, $16, $BF, $25, $3E, $44, $BB, $99, $A1, $A4, $F8, $32, $CA, $CA, $CA, $70, $F6, $6C, $06, 
$62, $82, $77, $23, $DC, $5A, $1B, $A1, $46, $AA, $08, $5E, $A7, $84, $BD, $6B, $14, $E1, $A7, $AD, 
$80, $5D, $5A, $52, $78, $68, $0E, $87, $83, $DE, $3C, $6C, $DF, $6C, $08, $27, $27, $27, $EC, $DF, 
$BF, $1F, $D1, $51, $87, $B1, $45, $5F, $9B, $CF, $E5, $96, $39, $DC, $BF, $E5, $8C, $EB, $E4, $77, 
$FD, $B1, $F5, $28, $F4, $D7, $E4, $66, $C6, $6F, $14, $BF, $26, $3E, $9C, $0A, $70, $46, $4D, $75, 
$15, $CA, $CA, $CB, $90, $7A, $3A, $0E, $71, $F6, $1A, $38, $BA, $49, $19, $D1, $1B, $07, $E1, $80, 
$D1, $40, $84, $AD, $57, $22, $C6, $01, $08, $60, $8C, $AB, $DF, $31, $EE, $D4, $90, $C2, $65, $85, 
$04, $76, $9A, $93, $61, $6D, $BA, $11, $5E, $5E, $5E, $88, $89, $8E, $C6, $B6, $CD, $C6, $3C, $23, 
$CB, $E3, $F4, $91, $42, $76, $D7, $4B, $E5, $3D, $D3, $EF, $43, $B5, $AC, $74, $D2, $44, $7C, $E3, 
$E4, $26, $31, $CE, $F8, $58, $E2, $F6, $AD, $9B, $A8, $AA, $BA, $81, $B3, $C7, $23, $21, $B3, $1E, 
$87, $D3, $16, $43, $71, $DC, $6C, $70, $27, $C6, $40, $BD, $01, $70, $55, $97, $F2, $E1, $A3, $D5, 
$99, $D1, $61, $F9, $40, $6C, $33, $D2, $81, $9B, $9B, $1B, $CF, $68, $AA, $AF, $C3, $DF, $35, $AB, 
$47, $09, $C7, $F7, $CC, $A4, $8F, $B8, $67, $61, $BC, $89, $C4, $5E, $66, $2A, $C1, $29, $AB, $99, 
$B8, $55, $7D, $1D, $77, $EE, $DC, $41, $7E, $E2, $51, $64, $D8, $8E, $42, $8A, $F5, $70, $24, $5A, 
$0D, $EB, $CC, $68, $A2, $82, $D8, $E0, $5D, $08, $F1, $F3, $84, $F9, $02, $65, $9E, $AF, $E3, $AE, 
$7F, $63, $5C, $26, $E5, $19, $F9, $3C, $D2, $5D, $AF, $9E, $A3, $86, $4D, $B3, $39, $D6, $E7, $99, 
$F4, $4E, $1D, $8A, $81, $FD, $81, $73, $5F, $21, $52, $4A, $36, $97, $3C, $49, $34, $93, $E0, $6A, 
$66, $22, $1E, $3D, $7A, $84, $8A, $A2, $5C, $5C, $70, $99, $84, $BF, $D9, $AB, $20, $63, $C7, $88, 
$2E, $8C, $C7, $CC, $BE, $C6, $C5, $8B, $79, $C8, $C9, $B9, $00, $A7, $55, $63, $10, $A0, $AB, $D8, 
$A9, $1E, $7F, $9F, $47, $76, $D7, $AC, $1E, $03, $7C, $77, $41, $87, $EE, $D9, $82, $66, $8F, $F2, 
$BB, $F9, $38, $A1, $3F, $75, $98, $64, $26, $D9, $98, $B6, $55, $82, $34, $97, $95, $78, $FC, $E8, 
$21, $1E, $3C, $B8, $8F, $CB, $61, $E6, $C8, $77, $19, $85, $0B, $8E, $2A, $DD, $32, $C6, $5B, $8C, 
$41, $E6, $89, $28, $A4, $C4, $1E, $C0, $7E, $83, $91, $08, $95, $D7, $63, $77, $8C, $76, $5A, $93, 
$E1, $EC, $EC, $84, $E3, $71, $71, $D0, $5F, $3A, $0B, $A6, $73, $39, $C6, $29, $A3, $57, $2F, $92, 
$6B, $53, $CF, $0D, $2B, $14, $08, $33, $2C, $25, $E7, $28, $50, $92, $1E, $8F, $BA, $BA, $3A, $DC, 
$2E, $CE, $41, $F1, $CE, $31, $B8, $E4, $3E, $BA, $47, $C6, $53, $C4, $78, $D0, $58, $19, $6E, $2B, 
$15, $E1, $AD, $A5, $88, $70, $83, $F7, $3D, $D3, $1D, $E3, $8E, $2D, $86, $88, $8C, $8C, $84, $9F, 
$B7, $07, $3F, $C3, $49, $67, $EE, $D1, $EB, $D7, $CB, $F5, $BA, $C7, $13, $A4, $2B, $96, $9C, $DB, 
$26, $79, $75, $D6, $4A, $82, $DA, $1F, $2A, $51, $5F, $5F, $8F, $9A, $D3, $FE, $28, $F5, $56, $ED, 
$95, $51, $66, $35, $02, $97, $B2, $D2, $91, $9E, $74, $06, $DB, $17, $4B, $79, $BE, $DF, $F7, $F5, 
$87, $8C, $6C, $F6, $F8, $F9, $F9, $E1, $D8, $91, $68, $AC, $99, $22, $E4, $B5, $90, $F4, $DA, $8A, 
$10, $46, $F6, $C6, $77, $D6, $4A, $3A, $31, $DB, $5A, $F2, $EB, $79, $FB, $49, $78, $D2, $D8, $80, 
$FA, $BA, $BF, $A3, $3A, $68, $01, $2A, $77, $8F, $ED, $93, $B1, $EC, $4A, $01, $8A, $AF, $14, $51, 
$7F, $0C, $A6, $39, $A3, $84, $43, $C6, $83, $7A, $64, $64, $F3, $71, $A7, $87, $3B, $12, $13, $65, 
$58, $47, $5A, $68, $4B, $BA, $3D, $6F, $AC, $70, $37, $21, $8C, $EB, $AD, $06, $B3, $6D, $A4, $AB, 
$72, $B6, $4B, $51, $18, $64, $86, $A6, $A6, $26, $34, $3C, $BC, $83, $5B, $01, $5F, $A3, $DA, $EF, 
$AB, $3E, $19, $8B, $33, $65, $34, $83, $AA, $10, $B1, $C7, $8B, $CF, $E1, $BE, $B5, $7D, $30, $3A, 
$D9, $F1, $7A, $C8, $F4, $DA, $96, $74, $9C, $F2, $78, $98, $10, $26, $F6, $C6, $97, $B7, $43, $6A, 
$4C, $81, $92, $68, $0F, $3C, $7F, $FE, $1C, $8D, $77, $AB, $70, $37, $70, $5C, $BF, $18, $CF, $FB, 
$AC, $41, $75, $65, $39, $2A, $2B, $2A, $10, $E2, $E3, $0A, $9B, $45, $C4, $A8, $D7, $33, $A3, $97, 
$E3, $76, $24, $A7, $A4, $90, $A7, $30, $81, $FD, $62, $0E, $C6, $33, $84, $C7, $E5, $73, $B0, $47, 
$BE, $8B, $B6, $52, $63, $0A, $94, $C5, $EC, $C4, $CB, $97, $2F, $F1, $8F, $07, $35, $A8, $0D, $1E, 
$DF, $6F, $C6, $0B, $41, $16, $A8, $AA, $28, $C5, $F5, $EB, $95, $08, $F7, $F7, $84, $ED, $12, $05, 
$84, $51, $2D, $46, $6D, $E8, $CA, $E8, $EB, $E6, $80, $F4, $8C, $74, $B8, $91, $EF, $71, $5A, $CA, 
$91, $7F, $E0, $F5, $AE, $D7, $19, $53, $68, $27, $D5, $A0, $C0, $B5, $50, $0B, $B4, $B4, $B4, $E0, 
$59, $DD, $43, $3C, $0E, $51, $EB, $96, $B1, $84, $18, $0B, $5C, $47, $13, $DB, $48, $E4, $3A, $8D, 
$FC, $8D, $31, $CB, $DF, $10, $55, $E5, $25, $7C, $1E, $3D, $2D, $8D, $E0, $A7, $A3, $84, $18, $93, 
$0F, $B5, $50, $09, $FB, $FC, $7D, $90, $95, $9D, $05, $07, $F2, $66, $1E, $2B, $44, $30, $9A, $2E, 
$0C, $21, $84, $31, $BD, $F5, $47, $91, $BD, $82, $5A, $91, $BD, $F4, $D7, $22, $B7, $6F, $D1, $F2, 
$F2, $05, $9A, $29, $EA, $A2, $96, $13, $E3, $84, $2E, $8C, $C5, $9E, $AA, $38, $61, $31, $0A, $07, 
$36, $0C, $A5, $FA, $53, $41, $9E, $F3, $FB, $3C, $E6, $47, $7B, $E3, $E6, $CD, $9B, $48, $4D, $38, 
$41, $B5, $36, $00, $C7, $36, $77, $D6, $C2, $50, $A3, $B1, $88, $3A, $7C, $08, $79, $79, $B9, $B0, 
$24, $FF, $E8, $43, $1E, $77, $85, $9A, $D0, $96, $10, $86, $F4, $C6, $57, $E8, $30, $58, $74, $C5, 
$41, $DA, $42, $9C, $78, $FA, $D3, $5D, $B4, $B6, $B6, $E2, $69, $76, $04, $EA, $C2, $D5, $BA, $30, 
$D6, $57, $E4, $E0, $F9, $D3, $27, $88, $DD, $EB, $8E, $38, $D3, $61, $3C, $5F, $3E, $45, $36, $31, 
$9E, $F7, $33, $E4, $35, $31, $2F, $EB, $1C, $F6, $EA, $0D, $C4, $09, $F3, $21, $9D, $F4, $3A, $DC, 
$46, $17, $29, $A9, $A9, $C8, $24, $FF, $68, $B7, $48, $04, $5F, $F2, $E1, $A4, $21, $1A, $CC, $CF, 
$F5, $C6, $77, $CD, $7F, $91, $A0, $D8, $51, $9A, $41, $8C, $A8, $2D, $48, $45, $5B, $5B, $1B, $9A, 
$6B, $6F, $E0, $49, $E4, $37, $5D, $18, $1B, $AE, $A4, $E0, $CD, $9B, $37, $B8, $7E, $F5, $12, $76, 
$EB, $0C, $C2, $49, $F3, $61, $48, $A7, $3E, $4E, $DA, $36, $1C, $F9, $B2, $18, $D2, $9D, $07, $C8, 
$4E, $3D, $83, $23, $9B, $86, $40, $66, $D9, $59, $AF, $8F, $EC, $F7, $47, $61, $61, $21, $79, $DC, 
$20, $78, $93, $0F, $F7, $52, $E7, $6E, $D0, $EB, $A7, $F4, $C7, $23, $5C, $73, $52, $30, $B8, $EA, 
$28, $45, $69, $80, $0E, $DA, $5E, $B5, $E0, $F5, $EB, $56, $3C, $4B, $F3, $E8, $C2, $F8, $20, $52, 
$03, $6F, $9A, $9F, $A1, $BD, $BD, $1D, $97, $B3, $33, $B0, $DF, $4A, $13, $A1, $5B, $97, $22, $4B, 
$16, $8B, $9F, $1F, $3F, $46, $ED, $FD, $7B, $90, $79, $1A, $22, $D5, $66, $78, $27, $2D, $8C, $73, 
$D0, $C4, $B9, $73, $99, $BC, $C7, $F5, $22, $1F, $BE, $4F, $47, $04, $DA, $67, $02, $E5, $7B, $60, 
$9F, $A7, $D4, $55, $41, $52, $E2, $24, $AD, $67, $8C, $BF, $94, $E5, $A2, $9D, $72, $D4, $DA, $F0, 
$10, $4D, $31, $F3, $BB, $30, $3E, $3E, $E3, $82, $B6, $67, $0D, $7C, $1E, $59, $2D, $BC, $7C, $F1, 
$82, $9F, $9B, $BF, $3C, $BC, $87, $82, $43, $6E, $7C, $2D, $76, $D2, $19, $F2, $66, $69, $09, $F1, 
$BC, $C7, $4D, $8E, $8F, $C1, $1E, $DA, $15, $68, $9F, $79, $49, $3B, $D7, $5C, $7A, $B5, $B8, $BF, 
$FE, $AF, $D4, $45, $D1, $92, $18, $51, $BA, $EB, $AF, $68, $69, $6A, $E4, $19, $5F, $DD, $BD, $86, 
$A6, $C3, $53, $BA, $30, $DE, $0B, $9E, $8A, $9F, $52, $F7, $E2, $E7, $82, $04, $3C, $CC, $3B, $8D, 
$1F, $CE, $EC, $C1, $15, $EF, $69, $28, $74, $FB, $60, $86, $93, $37, $3B, $17, $7F, $10, $15, $D4, 
$D7, $CC, $87, $07, $1A, $4C, $43, $C4, $3A, $11, $F5, $2E, $17, $D2, $57, $5F, $7C, $78, $CA, $5D, 
$55, $B8, $32, $17, $69, $09, $63, $AC, $39, $EA, $8A, $F6, $D7, $2D, $FC, $3D, $F2, $8C, $DD, $E4, 
$B1, $CF, $F9, $48, $DE, $EC, $62, $72, $2C, $AA, $AB, $AB, $79, $1F, $1E, $43, $BB, $02, $DB, $67, 
$C2, $F4, $C4, $3F, $7E, $35, $90, $9F, $79, $1F, $BD, $83, $94, $BB, $2A, $8C, $27, $C6, $66, $C6, 
$78, $3B, $21, $F0, $1D, $A3, $FC, $AE, $BB, $AB, $C7, $9E, $18, $AF, $84, $5B, $A0, $F2, $72, $3E, 
$DF, $CF, $CC, $87, $9F, $DE, $EB, $0C, $B6, $CF, $50, $B4, $59, $CF, $E7, $96, $F5, $E5, $A9, $7A, 
$67, $54, $5C, $48, $8C, $FF, $EC, $C8, $63, $C7, $5D, $B3, $9E, $61, $7D, $FD, $34, $3B, $12, $F5, 
$FC, $7C, $EC, $3C, $C3, $6B, $82, $16, $A2, $86, $EE, $F9, $C7, $AB, $B9, $A8, $AD, $7D, $C0, $7B, 
$5C, $E6, $C3, $13, $68, $57, $60, $FB, $0C, $DB, $B9, $68, $B7, $37, $EC, $6B, $9E, $F4, $75, $CC, 
$97, $4A, $3A, $18, $9B, $3B, $EA, $91, $F5, $0C, $EB, $6B, $36, $7B, $58, $4F, $B0, $19, $FE, $BC, 
$EE, $11, $AF, $85, $8D, $F7, $AA, $78, $4F, $D1, $50, $5F, $C7, $7B, $33, $E6, $1F, $99, $C7, $65, 
$3E, $FC, $94, $D5, $2C, $B0, $7D, $86, $76, $AE, $D6, $40, $6D, $D1, $5A, $B6, $F3, $7F, $AA, $2F, 
$0F, $CA, $5D, $95, $C6, $77, $D4, $63, $C7, $EC, $61, $F3, $91, $CD, $70, $A6, $33, $4C, $0B, $99, 
$5E, $33, $4F, $C1, $FA, $F7, $49, $63, $3D, $EF, $1F, $4B, $D3, $E2, $C9, $87, $AB, $83, $3C, $39, 
$12, $69, $9F, $A1, $9D, $EB, $3A, $ED, $AC, $33, $3E, $C1, $5E, $DE, $95, $71, $E7, $50, $AE, $D4, 
$45, $C1, $B2, $63, $F6, $B0, $19, $CE, $74, $86, $69, $21, $D3, $EB, $B2, $23, $3B, $79, $DF, $73, 
$89, $BC, $19, $F3, $8F, $CC, $E3, $32, $1F, $CE, $76, $05, $DA, $67, $1A, $4F, $98, $48, $EC, $F4, 
$A6, $0A, $3F, $C7, $77, $2F, $9D, $67, $8F, $F3, $60, $09, $9B, $E1, $72, $9D, $69, $61, $7A, $CD, 
$3C, $05, $F3, $3D, $CC, $9B, $31, $FF, $98, $45, $1E, $97, $7C, $78, $0B, $F1, $65, $52, $EE, $36, 
$78, $AA, $8B, $3E, $3B, $57, $77, $5A, $58, $44, $7A, $CD, $3C, $45, $A1, $BD, $54, $83, $79, $33, 
$E6, $1F, $2F, $90, $C7, $65, $3E, $3C, $44, $4F, $2C, $11, $0B, $FF, $14, $DF, $53, $7E, $39, $5F, 
$CE, $1F, $3A, $FF, $01, $45, $60, $20, $73, 0 );
implementation
end.
