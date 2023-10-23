flex     -Pbasic  BasicDSL.l

bison -d -ppascal PascalDSL.y
flex     -Ppascal PascalDSL.l

bison -d -pdbase  dBaseDSL.y
flex     -Pdbase  dBaseDSL.l
