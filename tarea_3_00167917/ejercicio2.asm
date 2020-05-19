org     100h
 
        mov     cl, 23d
        mov     [200h], cl
        mov     cl, 38d
        mov     [201h], cl
        mov     cl, 15d
        mov     [202h], cl
        mov     cl, 26d
        mov     [203h], cl
        mov     cl, 8d
        mov     [204h], cl
        mov     cl, 29d
        mov     [205h], cl
        mov     cl, 9d
        mov     [206h], cl
        mov     cl, 14d
        mov     [207h], cl
        mov     cl, 37d
        mov     [208h], cl
        mov     cl, 26d
        mov     [209h], cl

        mov     bx, 200h
        mov     ax, 00

loop1   add     al,[bx]
        inc     bx
        cmp     bx,209h
        jle     loop1

        mov     bl, 000Ah
        div     bl
        mov     [210h],al

int     20h