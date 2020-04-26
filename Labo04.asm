org     100h

        mov     ax, 0000h
        add     ax, 6d
        add     ax, 7d
        add     ax, 9d
        add     ax, 1d
        add     ax, 7d
        mov     cl, 5d
        div     cl

        ;promedio: 5 -> "En el segundo"
        mov     cl, "E"
        mov     [200h], cl
        mov     cl, "n"
        mov     [201h], cl
        mov     cl, "e"
        mov     [203h], cl 
        mov     cl, "l"
        mov     [204h], cl 
        mov     cl, "s"
        mov     [206h], cl
        mov     cl, "e"
        mov     [207h], cl
        mov     cl, "g"
        mov     [208h], cl
        mov     cl, "u"
        mov     [209h], cl
        mov     cl, "n"
        mov     [20Ah], cl
        mov     cl, "d"
        mov     [20Bh], cl
        mov     cl, "o"
        mov     [20Ch], cl 

int 20h