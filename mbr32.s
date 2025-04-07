[bits 32]
[org 0x13000]

start_mbr:
    ret

times 510 - ($ - $$) db 0
dw 0xAA55
