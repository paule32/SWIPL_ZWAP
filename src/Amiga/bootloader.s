    .text
    .globl _main
_main:
    MOVE.L  0,d0        
    MOVE.W  #0x100,D1    
    jsr     DrawText     

    move.l  #1,d0        
    jsr     DrawText     

    rts

DrawText:
    move.l  #0xdff000,a0 
    move.l  #0x1800,d2   
    move.b  #0x04,d3     

DrawLoop:
    move.b  (a0),d4      
    bset    #8,4        
    move.b  d4,(a0)      

    move.w  (a0),d5      
    bclr    #8,d5        
    move.w  d5,(a0)      

    move.b  (a0), d4      
    btst    #6, d4        
    bne     DrawLoop     

    move.b  #0x20,(a0)   
    move.w  (a0),d5      
    move.w  d5,(a0)      

    add.l   d2,d0        
    move.b  d0,d4        
    cmp.b   #40,d4       
    blt     DrawLoop     

    rts

    .bss
buffer: ds.b 256        
