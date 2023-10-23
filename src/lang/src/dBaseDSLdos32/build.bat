bison.exe -d dBaseDSLdos32.y
flex.exe     dBaseDSLdos32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
