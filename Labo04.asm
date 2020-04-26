org     100h

        ;Ejercicio 1
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

        ;Ejercicio 2
        mov     ax, 0000h
        mov     al, 2d
        mov     bx, 210h
        mov     cx, 2d
est:    mul     cx
        mov     [bx], ax
        cmp     ah, 00h
        ja      two
        je      one
two:    add     bx, 2h
        jmp     sig
one:    add     bx, 1h
sig:    cmp     bx, 21Fh
        jb      est

;Ejercicio 3
        mov     ax, 0000h
        mov     ax, 0d
        mov     [220h], ax  ; F0 = 0
        mov     ax, 1d
        mov     [221h], ax  ; F1 = 1
        mov     bx, 222h
fibo:   mov     ax, 0000h
        mov     [bx], ax
        sub     bx, 2h
        mov     al, [bx]
        add     bx, 1h
        add     ax, [bx]
        add     bx, 1h
        mov     [bx], ax
        add     bx, 1h
        cmp     bx, 22Fh
        jb      fibo

int 20h