flex.exe     -Pbasic  BasicDSL.l

bison.exe -d -ppascal PascalDSL.y
flex.exe     -Ppascal PascalDSL.l

bison.exe -d dBaseDSL.y --output=dBaseDSLparser.c
flex.exe  -t dBaseDSL.l > dBaseDSLscanner.c

rem cp PascalDSL.tab.c PascalDSL.tab.cpp

rem cp dBaseDSLparser.c  dBaseDSLparser.cc
rem cp dBaseDSLscanner.c dBaseDSLscanner.cc

pause
