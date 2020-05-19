org     100h
 
        mov     ax, 00
        mov     ax, [200h]
;        mov     ax, 120d

        mov     bx, 00
        mov     bx, [210h]
;        mov     bx, 60d
        
        cmp     bx,0
        jne      no0
        
        cmp     bx,0
        je      si0
  

no0:    div     bx
        mov     [220h],ax
        int     20h

si0:    mov     cl, "E"
        mov     [205h], cl
        mov     cl, "R"
        mov     [206h], cl
        mov     cl, "R"
        mov     [207h], cl
        mov     cl, "O"
        mov     [208h], cl
        mov     cl, "R"
        mov     [209h], cl
        int     20h
