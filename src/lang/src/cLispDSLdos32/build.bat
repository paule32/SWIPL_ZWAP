bison.exe -d cLispDSLdos32.y
flex.exe     cLispDSLdos32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
