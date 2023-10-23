bison.exe -d assemblerDSLwin32.y
flex.exe     assemblerDSLwin32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
