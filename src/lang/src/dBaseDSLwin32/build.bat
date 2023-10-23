bison.exe -d dBaseDSLwin32.y
flex.exe     dBaseDSLwin32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
