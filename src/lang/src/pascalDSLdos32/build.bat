bison.exe -d pascalDSLdos32.y
flex.exe     pascalDSLdos32.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
