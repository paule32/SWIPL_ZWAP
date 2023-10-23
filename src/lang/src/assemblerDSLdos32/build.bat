bison.exe -d assemblerDSLdos32.y
flex.exe     assemblerDSLdos32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
