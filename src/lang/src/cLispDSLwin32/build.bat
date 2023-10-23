bison.exe -d cLispDSLwin32.y
flex.exe     cLispDSLwin32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
