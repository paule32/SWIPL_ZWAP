sed 's/;.*//' bootloader.asm > bootloader.s
m68k-amigaos-gcc -m68020 -Ofast -fomit-frame-pointer -noixemul -nostdlib -o output.hunk bootloader.s -Xlinker --allow-multiple-definition -L.
m68k-amigaos-gcc -m68000 -T linker.script -o output output.hunk -L.
m68k-amigaos-strip.exe output
