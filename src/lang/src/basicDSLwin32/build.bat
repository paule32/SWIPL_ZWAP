bison.exe -d basicDSLwin32.y
flex.exe     basicDSLwin32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
