[bits 32]
[org 0x12000]

print_string:
    mov r0, #0x0E
    ldr r1, [sp]
    svc #0
    ret
