; function stage1c_diff
; returns the difference between the max and min value out of three arguments passed in
; Arguments:
; r0 - first value
; r1 - second value
; r2 - third value
; Returns result in r0 register

stage1c_diff:

        mov r3,r0
        cmp r3,r1
        blt check_min_diff
        mov r3,r1

        check_min_diff:
         cmp r3,r2
         blt check_max_diff
         mov r3,r2


        check_max_diff:
         mov r9,r0
         cmp r9,r1
         bgt check_max_diff2
         mov r9,r1

        check_max_diff2:
         cmp r9,r2
         bgt exit_diff
         mov r9,r2


        exit_diff:
         sub r9,r3
         mov r0,r9

         bx lr