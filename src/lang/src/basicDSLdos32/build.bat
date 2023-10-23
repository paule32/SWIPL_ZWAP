bison.exe -d basicDSLdos32.y
flex.exe     basicDSLdos32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
