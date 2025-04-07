[bits 32]
[org 0x10000]

start:
    call clear_screen
    call load_kernel
    call init_interrupts

hang:
    jmp $

clear_screen:
    mov r0, #0
    mov r1, #0x03
    svc #0
    ret

load_kernel:
    ret

init_interrupts:
    call load_interrupts
    ret

times 510 - ($ - $$) db 0
dw 0xAA55
