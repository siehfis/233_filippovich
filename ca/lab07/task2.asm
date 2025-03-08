.text

main:
    li a7, 7
    ecall
    fmv.d ft0, fa0

    li a7, 7
    ecall
    fmv.d ft1, fa0

    call func_cubic_root

    fmv.d fa0, fa2
    li a7, 3
    ecall

    li a7, 11
    li a0, '\n'
    ecall

    li a7, 10
    ecall

func_cubic_root:
    fcvt.d.w ft2, zero
    flt.d t0, ft0, ft2
    bnez t0, negat
    fmv.d ft3, ft2
    fmv.d ft4, ft0
    j loop

negat:
    fmv.d ft3, ft0
    fmv.d ft4, ft2

loop:
    fadd.d ft5, ft3, ft4
    li t1, 2
    fcvt.d.w ft6, t1
    fdiv.d ft5, ft5, ft6
    fmul.d ft7, ft5, ft5
    fmul.d ft7, ft7, ft5
    fsub.d ft8, ft7, ft0
    fabs.d ft8, ft8
    fle.d t2, ft8, ft1
    bnez t2, end
    flt.d t3, ft7, ft0
    bnez t3, update_value
    fmv.d ft4, ft5
    j loop

update_value:
    fmv.d ft3, ft5
    j loop

end:
    fmv.d fa2, ft5
    ret