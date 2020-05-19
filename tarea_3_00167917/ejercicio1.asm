org     100h
 
mov     cx, 00
mov     cl, 10d ;Esto es para un valor predefinido
;mov     cx, [200h]
mov     al,cl ;Si el valor esta predefinido
;mov     al, [200h]

;Divicion entre precio por galon
mov     ah, 0d
mov     bl, 0d
;mov     bl, [210h]
mov     bl, 3d ;Este es predefinido

div     bl
mov     [220h],al

int     20h