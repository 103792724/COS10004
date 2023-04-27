; function stage1b_max
; returns the maximum value out of three arguments passed in
; Arguments:
; r0 - first value
; r1 - second value
; r2 - third value
; Returns result in r0 register

stage1b_max:
     cmp r0,r1
        bgt check_r2a
        mov r0,r1
        b check_r2a

        check_r2a:
           cmp r0, r2
           bgt exita
           mov r0,r2
           b exita
        exita:
        bx lr