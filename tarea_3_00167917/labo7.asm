
        org     100h

section .text

        call    setup
	call 	texto	
	call 	cursor
	call 	phrase1
        call 	phrase2
        call 	phrase3
	call	kbwait

	int 	20h

setup:  mov     al, 7d
        mov     [202h], al
        mov     al, 00001111b
        mov     [210h], al
        mov     al, 00000111b
        mov     [211h], al
        mov     al, 00001110b
        mov     [212h], al
        mov     ax, 0000h
        mov     [200h], ax
        ret

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

cursor: mov	ah, 01h
	mov 	ch, 00000000b
	mov 	cl, 00001110b
		;   IRGB
	int 	10h
	ret

w_char:	mov 	ah, 09h
	mov 	al, cl
	mov 	bh, 0h
	mov 	bl, 00000100b
	mov 	cx, 1h
	int 	10h
	ret

kbwait: mov 	ax, 0000h
	int 	16h
	ret

m_cursr:mov 	ah, 02h
	mov 	dx, di  ; columna
	mov 	dh, [202h] ; fila
	mov 	bh, 0h
	int 	10h
	ret

jmp_row:mov     [200h], ax
        mov     ax, 5h
        add     [202h], ax
        mov     ax, [200h]
        ret

phrase1:	mov 	di, 10d
lupi1:	mov 	cl, [msg1+di-10d]
	call    m_cursr
	call 	w_char
	inc	di
	cmp 	di, len1
	jb	lupi1
        call    jmp_row
	ret

phrase2:	mov 	di, 45d
lupi2:	mov 	cl, [msg2+di-45d]
	call    m_cursr
	call 	w_char
	inc	di
	cmp 	di, len2
	jb	lupi2
        call    jmp_row
	ret

phrase3:	mov 	di, 28d
lupi3:	mov 	cl, [msg3+di-28d]
	call    m_cursr
	call 	w_char
	inc	di
	cmp 	di, len3
	jb	lupi3
        call    jmp_row
	ret


section .data
msg1	db 	"Hola, me podrias dar"
len1 	equ	$-msg1+5d
msg2	db 	"una nalguita feliz"
len2 	equ	$-msg2+60d
msg3	db 	"y a tu hermana?"
len3 	equ	$-msg3+29d