
;Boot Sector is only 512b in size.

mov ah, 0x0e
mov al, 'V'
int 0x10
mov al, 'i'
int 0x10
mov al, 'n'
int 0x10
mov al, 'o'
int 0x10
mov al, 'd'
int 0x10
mov al, "'"
int 0x10
mov al, 's'
int 0x10
mov al, '_'
int 0x10
mov al, 'B'
int 0x10
mov al, 'o'
int 0x10
mov al, 'o'
int 0x10
mov al, 't'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
mov al, 'a'
int 0x10
mov al, 'd'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
mov al, '_'
int 0x10
mov al, 'v'
int 0x10
mov al, '_'
int 0x10
mov al, '0'
int 0x10
mov al, '.'
int 0x10
mov al, '0'
int 0x10
mov al, '0'
int 0x10
mov al, '1'
int 0x10

;jmp $

times 510-($-$$) db 0 ; 512 minus Boot Signature is 510. Again, 510 minus whatever that is written;
; up to this line, fill with zeros.

dw 0xaa55 ; The Boot Signature
