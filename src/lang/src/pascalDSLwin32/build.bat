bison.exe -d pascalDSLwin32.y
flex.exe     pascalDSLwin32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
