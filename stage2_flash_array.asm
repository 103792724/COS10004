; function stage2_flash_array
; flashes the contents of array given
; Arguments:
; r0 - BASE address of peripherals
; r1 - size of array
; r2 - array to flash
; Function returns nothing

stage2_flash_array:
        ; implement your function here

        ; remember to push any registers you use to the stack before you use them
        ; ( and pop them off at the very end)

        ; your function should make use of the existing functions PLASH and PAUSE
        push {r3,r4,r5,r10}
        mov r3,#0
        mov r4,r1
        mov r5,r2

        loopflash: ;loop for flash
        ldr r1,[r5,r3]
        mov r2,$80000 ;move flash to point
        push {lr}
        bl FLASH
        pop {lr}
       push {r1}
        mov r1,$200000 ;move flash pause
        push {lr}
        bl PAUSE
        pop {lr}
        pop {r1}
        add r3,#4
        sub r4,#1
        cmp r4,#0
        bgt  loopflash

        pop {r3,r4,r5,r10}

        bx lr


