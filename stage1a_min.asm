; function stage1a_min
; returns the minimum value out of three arguments passed in
; Arguments:
; r0 - first value
; r1 - second value
; r2 - third value
; Returns result in r0 register

stage1a_min:
  cmp r0,r1
        blt check_r2
        mov r0,r1
        b check_r2

        check_r2:
           cmp r0, r2
           blt exit
           mov r0,r2
           b exit
        exit:
        bx lr