bison.exe -Wno-other -d prologDSLwin32.y
flex.exe                prologDSLwin32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
